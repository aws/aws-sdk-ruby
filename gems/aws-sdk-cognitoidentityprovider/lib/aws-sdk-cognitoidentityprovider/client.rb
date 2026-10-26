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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:cognitoidentityprovider)

module Aws::CognitoIdentityProvider
  # An API client for Aws::CognitoIdentityProvider.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSCognitoIdentityProviderService
    @identifier = :cognitoidentityprovider

    add_plugin(::Aws::CognitoIdentityProvider::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::CognitoIdentityProvider::EndpointProvider)
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

    # <p>Adds additional user attributes to the user pool schema. Custom attributes can be
    #             mutable or immutable and have a <code>custom:</code> or <code>dev:</code> prefix. For
    #             more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-custom-attributes">Custom attributes</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AddCustomAttributesRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to add custom attributes.</p>
    # @option params [Array<Types::SchemaAttributeType>] :custom_attributes
    #   <p>An array of custom attribute names and other properties. Sets the following
    #               characteristics:</p>
    #            <dl>
    #               <dt>AttributeDataType</dt>
    #               <dd>
    #                  <p>The expected data type. Can be a string, a number, a date and time, or a
    #                           boolean.</p>
    #               </dd>
    #               <dt>Mutable</dt>
    #               <dd>
    #                  <p>If true, you can grant app clients write access to the attribute value. If
    #                           false, the attribute value can only be set up on sign-up or administrator
    #                           creation of users.</p>
    #               </dd>
    #               <dt>Name</dt>
    #               <dd>
    #                  <p>The attribute name. For an attribute like <code>custom:myAttribute</code>,
    #                           enter <code>myAttribute</code> for this field.</p>
    #               </dd>
    #               <dt>Required</dt>
    #               <dd>
    #                  <p>When true, users who sign up or are created must set a value for the
    #                           attribute.</p>
    #               </dd>
    #               <dt>NumberAttributeConstraints</dt>
    #               <dd>
    #                  <p>The minimum and maximum length of accepted values for a
    #                               <code>Number</code>-type attribute.</p>
    #               </dd>
    #               <dt>StringAttributeConstraints</dt>
    #               <dd>
    #                  <p>The minimum and maximum length of accepted values for a
    #                               <code>String</code>-type attribute.</p>
    #               </dd>
    #               <dt>DeveloperOnlyAttribute</dt>
    #               <dd>
    #                  <p>This legacy option creates an attribute with a <code>dev:</code> prefix.
    #                           You can only set the value of a developer-only attribute with administrative
    #                           IAM credentials.</p>
    #               </dd>
    #            </dl>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     custom_attributes: [ # required
    #       {
    #         name: "CustomAttributeNameType",
    #         attribute_data_type: "String" # One of: ["String", "Number", "DateTime", "Boolean"],
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: "StringType",
    #           max_value: "StringType"
    #         },
    #         string_attribute_constraints: {
    #           min_length: "StringType",
    #           max_length: "StringType"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.add_custom_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AddCustomAttributesResponse]
    def add_custom_attributes(params = {}, options = {})
      request = build_request(:add_custom_attributes, params)
      request.send_request(options)
    end

    # <p>Creates a new client secret for an existing confidential user pool app client. Supports up to 2 active secrets per app client for zero-downtime credential rotation workflows.</p>
    # @param [Hash, Types::AddUserPoolClientSecretRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the app client.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client for which you want to create a new secret.</p>
    # @option params [String] :client_secret
    #   <p>The client secret value you want to use. If you don't provide this parameter, Amazon Cognito generates a secure secret for you.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     client_secret: "ClientSecretType"
    #   }
    #   options = {}
    #   response = client.add_user_pool_client_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_secret_descriptor: {
    #       client_secret_id: "ClientSecretIdType",
    #       client_secret_value: "ClientSecretType",
    #       client_secret_create_date: Time.now
    #     }
    #   }
    # @return [Types::AddUserPoolClientSecretResponse]
    def add_user_pool_client_secret(params = {}, options = {})
      request = build_request(:add_user_pool_client_secret, params)
      request.send_request(options)
    end

    # <p>Adds a user to a group. A user who is in a group can present a preferred-role claim to
    #             an identity pool, and populates a <code>cognito:groups</code> claim to their access and
    #             identity tokens.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminAddUserToGroupRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the group that you want to add the user
    #               to.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :group_name
    #   <p>The name of the group that you want to add your user to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   }
    #   options = {}
    #   response = client.admin_add_user_to_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def admin_add_user_to_group(params = {}, options = {})
      request = build_request(:admin_add_user_to_group, params)
      request.send_request(options)
    end

    # <p>Confirms user sign-up as an administrator. </p>
    #          <p>This request sets a user account active in a user pool that <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#signing-up-users-in-your-app-and-confirming-them-as-admin">requires confirmation of new user accounts</a> before they can sign in. You can
    #             configure your user pool to not send confirmation codes to new users and instead confirm
    #             them with this API operation on the back end.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>To configure your user pool to require administrative confirmation of users, set
    #                 <code>AllowAdminCreateUserOnly</code> to <code>true</code> in a
    #                 <code>CreateUserPool</code> or <code>UpdateUserPool</code> request.</p>
    # @param [Hash, Types::AdminConfirmSignUpRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to confirm a user's sign-up
    #               request.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.admin_confirm_sign_up(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminConfirmSignUpResponse]
    def admin_confirm_sign_up(params = {}, options = {})
      request = build_request(:admin_confirm_sign_up, params)
      request.send_request(options)
    end

    # <p>Creates a new user in the specified user pool.</p>
    #          <p>If <code>MessageAction</code> isn't set, the default is to send a welcome message via
    #             email or phone (SMS).</p>
    #          <p>This message is based on a template that you configured in your call to create or
    #             update a user pool. This template includes your custom sign-up instructions and
    #             placeholders for user name and temporary password.</p>
    #          <p>Alternatively, you can call <code>AdminCreateUser</code> with <code>SUPPRESS</code>
    #             for the <code>MessageAction</code> parameter, and Amazon Cognito won't send any email. </p>
    #          <p>In either case, if the user has a password, they will be in the
    #                 <code>FORCE_CHANGE_PASSWORD</code> state until they sign in and set their password.
    #             Your invitation message template must have the <code>{####}</code> password placeholder
    #             if your users have passwords. If your template doesn't have this placeholder, Amazon Cognito
    #             doesn't deliver the invitation message. In this case, you must update your message
    #             template and resend the password with a new <code>AdminCreateUser</code> request with a
    #                 <code>MessageAction</code> value of <code>RESEND</code>.</p>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminCreateUserRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to create a user.</p>
    # @option params [String] :username
    #   <p>The value that you want to set as the username sign-in attribute. The following
    #               conditions apply to the username parameter.</p>
    #            <ul>
    #               <li>
    #                  <p>The username can't be a duplicate of another username in the same user
    #                       pool.</p>
    #               </li>
    #               <li>
    #                  <p>You can't change the value of a username after you create it.</p>
    #               </li>
    #               <li>
    #                  <p>You can only provide a value if usernames are a valid sign-in attribute for
    #                       your user pool. If your user pool only supports phone numbers or email addresses
    #                       as sign-in attributes, Amazon Cognito automatically generates a username value. For more
    #                       information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   <p>An array of name-value pairs that contain user attributes and attribute values to be
    #               set for the user to be created. You can create a user without specifying any attributes
    #               other than <code>Username</code>. However, any attributes that you specify as required
    #               (when creating a user pool or in the <b>Attributes</b> tab of
    #               the console) either you should supply (in your call to <code>AdminCreateUser</code>) or
    #               the user should supply (when they sign up in response to your welcome message).</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #            <p>To send a message inviting the user to sign up, you must specify the user's email
    #               address or phone number. You can do this in your call to AdminCreateUser or in the
    #                   <b>Users</b> tab of the Amazon Cognito console for managing your
    #               user pools.</p>
    #            <p>You must also provide an email address or phone number when you expect the user to do
    #               passwordless sign-in with an email or SMS OTP. These attributes must be provided when
    #               passwordless options are the only available, or when you don't submit a
    #                   <code>TemporaryPassword</code>.</p>
    #            <p>In your <code>AdminCreateUser</code> request, you can set the
    #                   <code>email_verified</code> and <code>phone_number_verified</code> attributes to
    #                   <code>true</code>. The following conditions apply:</p>
    #            <dl>
    #               <dt>email</dt>
    #               <dd>
    #                  <p>The email address where you want the user to receive their confirmation
    #                           code and username. You must provide a value for <code>email</code> when you
    #                           want to set <code>email_verified</code> to <code>true</code>, or if you set
    #                               <code>EMAIL</code> in the <code>DesiredDeliveryMediums</code>
    #                           parameter.</p>
    #               </dd>
    #               <dt>phone_number</dt>
    #               <dd>
    #                  <p>The phone number where you want the user to receive their confirmation
    #                           code and username. You must provide a value for <code>phone_number</code>
    #                           when you want to set <code>phone_number_verified</code> to
    #                           <code>true</code>, or if you set <code>SMS</code> in the
    #                               <code>DesiredDeliveryMediums</code> parameter.</p>
    #               </dd>
    #            </dl>
    # @option params [Array<Types::AttributeType>] :validation_data
    #   <p>Temporary user attributes that contribute to the outcomes of your pre sign-up Lambda
    #       trigger. This set of key-value pairs are for custom validation of information that you
    #       collect from your users but don't need to retain.</p>
    #            <p>Your Lambda function can analyze this additional data and act on it. Your function
    #       can automatically confirm and verify select users or perform external API operations
    #       like logging user attributes and validation data to Amazon CloudWatch Logs.</p>
    #            <p>For more information about the pre sign-up Lambda trigger, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html">Pre sign-up Lambda trigger</a>.</p>
    # @option params [String] :temporary_password
    #   <p>The user's temporary password. This password must conform to the password policy that
    #               you specified when you created the user pool.</p>
    #            <p>The exception to the requirement for a password is when your user pool supports
    #               passwordless sign-in with email or SMS OTPs. To create a user with no password, omit
    #               this parameter or submit a blank value. You can only create a passwordless user when
    #               passwordless sign-in is available.</p>
    #            <p>The temporary password is valid only once. To complete the Admin Create User flow, the
    #               user must enter the temporary password in the sign-in page, along with a new password to
    #               be used in all future sign-ins.</p>
    #            <p>If you don't specify a value, Amazon Cognito generates one for you unless you have passwordless
    #               options active for your user pool.</p>
    #            <p>The temporary password can only be used until the user account expiration limit that
    #               you set for your user pool. To reset the account after that time limit, you must call
    #                   <code>AdminCreateUser</code> again and specify <code>RESEND</code> for the
    #                   <code>MessageAction</code> parameter.</p>
    # @option params [Boolean] :force_alias_creation
    #   <p>This parameter is used only if the <code>phone_number_verified</code> or
    #                   <code>email_verified</code> attribute is set to <code>True</code>. Otherwise, it is
    #               ignored.</p>
    #            <p>If this parameter is set to <code>True</code> and the phone number or email address
    #               specified in the <code>UserAttributes</code> parameter already exists as an alias with a
    #               different user, this request migrates the alias from the previous user to the
    #               newly-created user. The previous user will no longer be able to log in using that
    #               alias.</p>
    #            <p>If this parameter is set to <code>False</code>, the API throws an
    #                   <code>AliasExistsException</code> error if the alias already exists. The default
    #               value is <code>False</code>.</p>
    # @option params [String] :message_action
    #   <p>Set to <code>RESEND</code> to resend the invitation message to a user that already
    #               exists, and to reset the temporary-password duration with a new temporary password. Set
    #               to <code>SUPPRESS</code> to suppress sending the message. You can specify only one
    #               value.</p>
    # @option params [Array<String>] :desired_delivery_mediums
    #   <p>Specify <code>EMAIL</code> if email will be used to send the welcome message. Specify
    #                   <code>SMS</code> if the phone number will be used. The default value is
    #                   <code>SMS</code>. You can specify more than one value.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example An AdminCreateUser request for for a test user named John.
    #   # This request submits a value for all possible parameters for AdminCreateUser.
    #   params = {
    #     user_pool_id: "us-east-1_EXAMPLE",
    #     username: "testuser",
    #     desired_delivery_mediums: [
    #       SMS
    #     ],
    #     message_action: SUPPRESS,
    #     temporary_password: "This-is-my-test-99!",
    #     user_attributes: [
    #       {
    #         name: "name",
    #         value: "John"
    #       },
    #       {
    #         name: "phone_number",
    #         value: "+12065551212"
    #       },
    #       {
    #         name: "email",
    #         value: "testuser@example.com"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.admin_create_user(params, options)
    #   response.to_h #=>
    #   {
    #     user: {
    #       attributes: [
    #         {
    #           name: "sub",
    #           value: "d16b4aa8-8633-4abd-93b3-5062a8e1b5f8"
    #         },
    #         {
    #           name: "name",
    #           value: "John"
    #         },
    #         {
    #           name: "phone_number",
    #           value: "+12065551212"
    #         },
    #         {
    #           name: "email",
    #           value: "testuser@example.com"
    #         }
    #       ],
    #       enabled: true,
    #       user_create_date: Time.parse(1689980857.949),
    #       user_last_modified_date: Time.parse(1689980857.949),
    #       user_status: FORCE_CHANGE_PASSWORD,
    #       username: "testuser"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attributes: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     validation_data: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     temporary_password: "PasswordType",
    #     force_alias_creation: false,
    #     message_action: "RESEND" # One of: ["RESEND", "SUPPRESS"],
    #     desired_delivery_mediums: ["SMS" # One of: ["SMS", "EMAIL"]],
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.admin_create_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user: {
    #       username: "UsernameType",
    #       attributes: [
    #         {
    #           name: "AttributeNameType", # required
    #           value: "AttributeValueType"
    #         }
    #       ],
    #       user_create_date: Time.now,
    #       user_last_modified_date: Time.now,
    #       enabled: false,
    #       user_status: "UNCONFIRMED" # One of: ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"],
    #       mfa_options: [
    #         {
    #           delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #           attribute_name: "AttributeNameType"
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::AdminCreateUserResponse]
    def admin_create_user(params = {}, options = {})
      request = build_request(:admin_create_user, params)
      request.send_request(options)
    end

    # <p>Deletes a user's registered time-based one-time password (TOTP) multi-factor
    #             authentication (MFA) factor, also known as a software token. After this operation, the
    #             user can no longer sign in with TOTP MFA, and can register a new TOTP factor with
    #                 <code>AssociateSoftwareToken</code>. Use this operation when a user loses access to
    #             their TOTP-generating device, for example, a lost or reset phone, and needs to register
    #             a new one.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminDeleteSoftwareTokenRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the user's software
    #               token.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_delete_software_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminDeleteSoftwareTokenResponse]
    def admin_delete_software_token(params = {}, options = {})
      request = build_request(:admin_delete_software_token, params)
      request.send_request(options)
    end

    # <p>Deletes a user profile in your user pool.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminDeleteUserRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def admin_delete_user(params = {}, options = {})
      request = build_request(:admin_delete_user, params)
      request.send_request(options)
    end

    # <p>Deletes attribute values from a user. This operation doesn't affect tokens for
    #             existing user sessions. The next ID token that the user receives will no longer have the
    #             deleted attributes.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminDeleteUserAttributesRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete user attributes.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Array<String>] :user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attribute_names: ["AttributeNameType"], # required
    #   }
    #   options = {}
    #   response = client.admin_delete_user_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminDeleteUserAttributesResponse]
    def admin_delete_user_attributes(params = {}, options = {})
      request = build_request(:admin_delete_user_attributes, params)
      request.send_request(options)
    end

    # <p>Prevents the user from signing in with the specified external (SAML or social)
    #             identity provider (IdP). If the user that you want to deactivate is a Amazon Cognito user pools
    #             native username + password user, they can't use their password to sign in. If the user
    #             to deactivate is a linked external IdP user, any link between that user and an existing
    #             user is removed. When the external user signs in again, and the user is no longer
    #             attached to the previously linked <code>DestinationUser</code>, the user must create a
    #             new user account.</p>
    #          <p>The value of <code>ProviderName</code> must match the name of a user pool IdP.</p>
    #          <p>To deactivate a local user, set <code>ProviderName</code> to <code>Cognito</code> and
    #             the <code>ProviderAttributeName</code> to <code>Cognito_Subject</code>. The
    #                 <code>ProviderAttributeValue</code> must be user's local username.</p>
    #          <p>The <code>ProviderAttributeName</code> must always be <code>Cognito_Subject</code> for
    #             social IdPs. The <code>ProviderAttributeValue</code> must always be the exact subject
    #             that was used when the user was originally linked as a source user.</p>
    #          <p>For de-linking a SAML identity, there are two scenarios. If the linked identity has
    #             not yet been used to sign in, the <code>ProviderAttributeName</code> and
    #                 <code>ProviderAttributeValue</code> must be the same values that were used for the
    #                 <code>SourceUser</code> when the identities were originally linked using <code>
    #                 AdminLinkProviderForUser</code> call. This is also true if the linking was done with
    #                 <code>ProviderAttributeName</code> set to <code>Cognito_Subject</code>. If the user
    #             has already signed in, the <code>ProviderAttributeName</code> must be
    #                 <code>Cognito_Subject</code> and <code>ProviderAttributeValue</code> must be the
    #                 <code>NameID</code> from their SAML assertion.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminDisableProviderForUserRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the user's linked
    #               identities.</p>
    # @option params [Types::ProviderUserIdentifierType] :user
    #   <p>The user profile that you want to delete a linked identity from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "StringType", # required
    #     user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.admin_disable_provider_for_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminDisableProviderForUserResponse]
    def admin_disable_provider_for_user(params = {}, options = {})
      request = build_request(:admin_disable_provider_for_user, params)
      request.send_request(options)
    end

    # <p>Deactivates a user profile and revokes all access tokens for the user. A deactivated
    #             user can't sign in, but still appears in the responses to <code>ListUsers</code>
    #             API requests.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminDisableUserRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to disable the user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_disable_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminDisableUserResponse]
    def admin_disable_user(params = {}, options = {})
      request = build_request(:admin_disable_user, params)
      request.send_request(options)
    end

    # <p>Activates sign-in for a user profile that previously had sign-in access
    #             disabled.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminEnableUserRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to activate sign-in for the user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_enable_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminEnableUserResponse]
    def admin_enable_user(params = {}, options = {})
      request = build_request(:admin_enable_user, params)
      request.send_request(options)
    end

    # <p>Forgets, or deletes, a remembered device from a user's profile. After you forget
    #             the device, the user can no longer complete device authentication with that device and
    #             when applicable, must submit MFA codes again. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminForgetDeviceRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where the device owner is a user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :device_key
    #   <p>The key ID of the device that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #   }
    #   options = {}
    #   response = client.admin_forget_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def admin_forget_device(params = {}, options = {})
      request = build_request(:admin_forget_device, params)
      request.send_request(options)
    end

    # <p>Given the device key, returns details for a user's device. For more information,
    #             see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminGetDeviceRequest] params
    # @option params [String] :device_key
    #   <p>The key of the device that you want to delete.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where the device owner is a user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_key: "DeviceKeyType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_get_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: { # required
    #       device_key: "DeviceKeyType",
    #       device_attributes: [
    #         {
    #           name: "AttributeNameType", # required
    #           value: "AttributeValueType"
    #         }
    #       ],
    #       device_create_date: Time.now,
    #       device_last_modified_date: Time.now,
    #       device_last_authenticated_date: Time.now
    #     }
    #   }
    # @return [Types::AdminGetDeviceResponse]
    def admin_get_device(params = {}, options = {})
      request = build_request(:admin_get_device, params)
      request.send_request(options)
    end

    # <p>Given a username, returns details about a user profile in a user pool. You can specify
    #             alias attributes in the <code>Username</code> request parameter.</p>
    #          <p>This operation contributes to your monthly active user (MAU) count for the purpose of
    #             billing.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminGetUserRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to get information about the user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_get_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     username: "UsernameType", # required
    #     user_attributes: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     user_create_date: Time.now,
    #     user_last_modified_date: Time.now,
    #     enabled: false,
    #     user_status: "UNCONFIRMED" # One of: ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"],
    #     mfa_options: [
    #       {
    #         delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #         attribute_name: "AttributeNameType"
    #       }
    #     ],
    #     preferred_mfa_setting: "StringType",
    #     user_mfa_setting_list: ["StringType"]
    #   }
    # @return [Types::AdminGetUserResponse]
    def admin_get_user(params = {}, options = {})
      request = build_request(:admin_get_user, params)
      request.send_request(options)
    end

    # <p>Lists the authentication options for a user in a user pool. Returns the
    #             following:</p>
    #          <ol>
    #             <li>
    #                <p>The user's multi-factor authentication (MFA) preferences.</p>
    #             </li>
    #             <li>
    #                <p>The user's options for choice-based authentication with the
    #                         <code>USER_AUTH</code> flow.</p>
    #             </li>
    #          </ol>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminGetUserAuthFactorsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to get information about the user's
    #               authentication factors.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_get_user_auth_factors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     username: "UsernameType", # required
    #     preferred_mfa_setting: "StringType",
    #     user_mfa_setting_list: ["StringType"],
    #     configured_user_auth_factors: ["PASSWORD" # One of: ["PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN", "SOFTWARE_TOKEN"]]
    #   }
    # @return [Types::AdminGetUserAuthFactorsResponse]
    def admin_get_user_auth_factors(params = {}, options = {})
      request = build_request(:admin_get_user_auth_factors, params)
      request.send_request(options)
    end

    # <p>Starts sign-in for applications with a server-side component, for example a
    #             traditional web application. This operation specifies the authentication flow that
    #             you'd like to begin. The authentication flow that you specify must be supported in
    #             your app client configuration. For more information about authentication flows, see
    #                 <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html">Authentication flows</a>.</p>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminInitiateAuthRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where the user wants to sign in.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client where the user wants to sign in.</p>
    # @option params [String] :auth_flow
    #   <p>The authentication flow that you want to initiate. Each <code>AuthFlow</code> has
    #               linked <code>AuthParameters</code> that you must submit. The following are some example
    #               flows.</p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <p>The entry point for <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a> with passwords,
    #                           one-time passwords, and WebAuthn authenticators. Request a preferred
    #                           authentication type or review available authentication types. From the
    #                           offered authentication types, select one in a challenge response and then
    #                           authenticate with that method in an additional challenge response.
    #                           To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <p>Username-password authentication with the Secure Remote Password (SRP)
    #                           protocol. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow">Use SRP password verification in custom
    #                               authentication flow</a>.</p>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH and REFRESH_TOKEN</dt>
    #               <dd>
    #                  <p>Receive new ID and access tokens when you pass a
    #                               <code>REFRESH_TOKEN</code> parameter with a valid refresh token as the
    #                           value. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html">Using the refresh token</a>.</p>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <p>Custom authentication with Lambda triggers. For more information, see
    #                               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">Custom authentication challenge Lambda
    #                               triggers</a>.</p>
    #               </dd>
    #               <dt>ADMIN_USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <p>Server-side username-password authentication with the password sent
    #                           directly in the request. For more information about client-side and
    #                           server-side authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html">SDK authorization models</a>.</p>
    #               </dd>
    #            </dl>
    # @option params [Hash<String, String>] :auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking.</p>
    #            <p>The following are some authentication flows and their parameters. Add a
    #                   <code>SECRET_HASH</code> parameter if your app client has a client secret. Add
    #                   <code>DEVICE_KEY</code> if you want to bypass multi-factor authentication with a
    #               remembered device. </p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PREFERRED_CHALLENGE</code>. If you don't provide a
    #                                   value for <code>PREFERRED_CHALLENGE</code>, Amazon Cognito responds with the
    #                                       <code>AvailableChallenges</code> parameter that specifies the
    #                                   available sign-in methods.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TARGET_ACR_VALUES</code>. An optional, space-separated list
    #                                   of the authentication context class reference (ACR) level URIs that
    #                                   you want the user to reach. List the levels in priority order, from
    #                                   highest to lowest. Amazon Cognito attempts the highest-priority level that the
    #                                   user can satisfy, and falls back through the list. Amazon Cognito ignores any
    #                                   value that it doesn't recognize. If none of the requested values are
    #                                   valid, Amazon Cognito returns an error.</p>
    #                        <p>Requesting step-up authentication with this parameter requires the
    #                                   Essentials or Plus feature plan. On a lower feature plan,
    #                                   AdminInitiateAuth returns a FeatureUnavailableInTierException.
    #                                   <code>USERNAME</code> is required. When you provide an
    #                                   <code>ACCESS_TOKEN</code>, you must also provide
    #                                   <code>TARGET_ACR_VALUES</code>. Amazon Cognito returns an error if you provide
    #                                   an <code>ACCESS_TOKEN</code> without <code>TARGET_ACR_VALUES</code>.
    #                                   The <code>USERNAME</code> that you provide must match the user that the
    #                                   <code>ACCESS_TOKEN</code> was issued for.</p>
    #                        <p>For more information about step-up authentication and how Amazon Cognito
    #                                   handles multi-factor authentication requirements, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-step-up-authentication.html">Step-up
    #                                   authentication with ACR and AMR</a> in the <i>Amazon Cognito
    #                                   Developer Guide</i>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MAX_AGE</code>. An optional integer that sets the maximum
    #                                   number of seconds allowed since the user last authenticated. If the
    #                                   user's most recent authentication is older than this value, Amazon Cognito
    #                                   discards the authentication-methods credit from any access token that
    #                                   you provide and processes the request as a fresh authentication toward
    #                                   the target level. The access token itself remains valid.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>ADMIN_USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PASSWORD</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>REFRESH_TOKEN</code>(required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ChallengeName: SRP_A</code> (when preceding custom
    #                                   authentication with SRP authentication)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A: (An SRP_A value)</code> (when preceding custom
    #                                   authentication with SRP authentication)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #               <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <p>The <code>ClientMetadata</code> value is passed as input to the functions for only the
    #               following triggers:</p>
    #            <ul>
    #               <li>
    #                  <p>Pre signup</p>
    #               </li>
    #               <li>
    #                  <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                  <p>User migration</p>
    #               </li>
    #            </ul>
    #            <p>This request also invokes the functions for the following triggers, but doesn't pass
    #                   <code>ClientMetadata</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>Post authentication</p>
    #               </li>
    #               <li>
    #                  <p>Custom message</p>
    #               </li>
    #               <li>
    #                  <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                  <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Custom email sender</p>
    #               </li>
    #               <li>
    #                  <p>Custom SMS sender</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Types::ContextDataType] :context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [String] :session
    #   <p>The optional session ID from a <code>ConfirmSignUp</code> API request. You can sign in
    #               a user directly from the sign-up process with an <code>AuthFlow</code> of
    #                   <code>USER_AUTH</code> and <code>AuthParameters</code> of <code>EMAIL_OTP</code> or
    #                   <code>SMS_OTP</code>, depending on how your user pool sent the confirmation-code
    #               message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     auth_flow: "USER_SRP_AUTH" # One of: ["USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH", "USER_PASSWORD_AUTH", "ADMIN_USER_PASSWORD_AUTH", "USER_AUTH"], # required
    #     auth_parameters: {
    #       "StringType" => "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     context_data: {
    #       ip_address: "StringType", # required
    #       server_name: "StringType", # required
    #       server_path: "StringType", # required
    #       http_headers: [ # required
    #         {
    #           header_name: "StringType",
    #           header_value: "StringType"
    #         }
    #       ],
    #       encoded_data: "StringType"
    #     },
    #     session: "SessionType"
    #   }
    #   options = {}
    #   response = client.admin_initiate_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     challenge_name: "SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"],
    #     session: "SessionType",
    #     challenge_parameters: {
    #       "StringType" => "StringType"
    #     },
    #     authentication_result: {
    #       access_token: "TokenModelType",
    #       expires_in: 1,
    #       token_type: "StringType",
    #       refresh_token: "TokenModelType",
    #       id_token: "TokenModelType",
    #       new_device_metadata: {
    #         device_key: "DeviceKeyType",
    #         device_group_key: "StringType"
    #       }
    #     },
    #     available_challenges: ["SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"]]
    #   }
    # @return [Types::AdminInitiateAuthResponse]
    def admin_initiate_auth(params = {}, options = {})
      request = build_request(:admin_initiate_auth, params)
      request.send_request(options)
    end

    # <p>Links an existing user account in a user pool, or <code>DestinationUser</code>, to an
    #             identity from an external IdP, or <code>SourceUser</code>, based on a specified
    #             attribute name and value from the external IdP.</p>
    #          <p>This operation connects a local user profile with a user identity who hasn't yet
    #             signed in from their third-party IdP. When the user signs in with their IdP, they get
    #             access-control configuration from the local user profile. Linked local users can also
    #             sign in with SDK-based API operations like <code>InitiateAuth</code> after they sign in
    #             at least once through their IdP. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html">Linking federated users</a>.</p>
    #          <note>
    #             <p>The maximum number of federated identities linked to a user is five.</p>
    #          </note>
    #          <important>
    #             <p>Because this API allows a user with an external federated identity to sign in as a
    #                 local user, it is critical that it only be used with external IdPs and linked
    #                 attributes that you trust.</p>
    #          </important>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminLinkProviderForUserRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to link a federated identity.</p>
    # @option params [Types::ProviderUserIdentifierType] :destination_user
    #   <p>The existing user in the user pool that you want to assign to the external IdP user
    #               account. This user can be a local (Username + Password) Amazon Cognito user pools user or a
    #               federated user (for example, a SAML or Facebook user). If the user doesn't exist, Amazon Cognito
    #               generates an exception. Amazon Cognito returns this user when the new user (with the linked IdP
    #               attribute) signs in.</p>
    #            <p>For a native username + password user, the <code>ProviderAttributeValue</code> for the
    #                   <code>DestinationUser</code> should be the username in the user pool. For a
    #               federated user, it should be the provider-specific <code>user_id</code>.</p>
    #            <p>The <code>ProviderAttributeName</code> of the <code>DestinationUser</code> is
    #               ignored.</p>
    #            <p>The <code>ProviderName</code> should be set to <code>Cognito</code> for users in
    #               Cognito user pools.</p>
    # @option params [Types::ProviderUserIdentifierType] :source_user
    #   <p>An external IdP account for a user who doesn't exist yet in the user pool. This user
    #               must be a federated user (for example, a SAML or Facebook user), not another native
    #               user.</p>
    #            <p>If the <code>SourceUser</code> is using a federated social IdP, such as Facebook,
    #               Google, or Login with Amazon, you must set the <code>ProviderAttributeName</code> to
    #                   <code>Cognito_Subject</code>. For social IdPs, the <code>ProviderName</code> will be
    #                   <code>Facebook</code>, <code>Google</code>, or <code>LoginWithAmazon</code>, and
    #               Amazon Cognito will automatically parse the Facebook, Google, and Login with Amazon tokens for
    #                   <code>id</code>, <code>sub</code>, and <code>user_id</code>, respectively. The
    #                   <code>ProviderAttributeValue</code> for the user must be the same value as the
    #                   <code>id</code>, <code>sub</code>, or <code>user_id</code> value found in the social
    #               IdP token.</p>
    #            <p>For OIDC, the <code>ProviderAttributeName</code> can be any mapped value from a claim
    #               in the ID token, or that your app retrieves from the <code>userInfo</code> endpoint. For
    #               SAML, the <code>ProviderAttributeName</code> can be any mapped value from a claim in the
    #               SAML assertion.</p>
    #            <p>The following additional considerations apply to <code>SourceUser</code> for OIDC and
    #               SAML providers.</p>
    #            <ul>
    #               <li>
    #                  <p>You must map the claim to a user pool attribute in your IdP configuration, and
    #                       set the user pool attribute name as the value of
    #                           <code>ProviderAttributeName</code> in your
    #                           <code>AdminLinkProviderForUser</code> request. For example,
    #                           <code>email</code>.</p>
    #               </li>
    #               <li>
    #                  <p>When you set <code>ProviderAttributeName</code> to
    #                           <code>Cognito_Subject</code>, Amazon Cognito will automatically parse the default
    #                       unique identifier found in the subject from the IdP token.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "StringType", # required
    #     destination_user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType"
    #     },
    #     source_user: { # required
    #       provider_name: "ProviderNameType",
    #       provider_attribute_name: "StringType",
    #       provider_attribute_value: "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.admin_link_provider_for_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminLinkProviderForUserResponse]
    def admin_link_provider_for_user(params = {}, options = {})
      request = build_request(:admin_link_provider_for_user, params)
      request.send_request(options)
    end

    # <p>Lists a user's registered devices. Remembered devices are used in authentication
    #             services where you offer a "Remember me" option for users who you want to permit to sign
    #             in without MFA from a trusted device. Users can bypass MFA while your application
    #             performs device SRP authentication on the back end. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminListDevicesRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where the device owner is a user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of devices that you want Amazon Cognito to return in the response.</p>
    # @option params [String] :pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType"
    #   }
    #   options = {}
    #   response = client.admin_list_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     devices: [
    #       {
    #         device_key: "DeviceKeyType",
    #         device_attributes: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType"
    #           }
    #         ],
    #         device_create_date: Time.now,
    #         device_last_modified_date: Time.now,
    #         device_last_authenticated_date: Time.now
    #       }
    #     ],
    #     pagination_token: "SearchPaginationTokenType"
    #   }
    # @return [Types::AdminListDevicesResponse]
    def admin_list_devices(params = {}, options = {})
      request = build_request(:admin_list_devices, params)
      request.send_request(options)
    end

    # <p>Lists the groups that a user belongs to. User pool groups are identifiers that you can
    #             reference from the contents of ID and access tokens, and set preferred IAM roles for
    #             identity-pool authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html">Adding groups to a user pool</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminListGroupsForUserRequest] params
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to view a user's groups.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of groups that you want Amazon Cognito to return in the response.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     username: "UsernameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.admin_list_groups_for_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         group_name: "GroupNameType",
    #         user_pool_id: "UserPoolIdType",
    #         description: "DescriptionType",
    #         role_arn: "ArnType",
    #         precedence: 1,
    #         last_modified_date: Time.now,
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::AdminListGroupsForUserResponse]
    def admin_list_groups_for_user(params = {}, options = {})
      request = build_request(:admin_list_groups_for_user, params)
      request.send_request(options)
    end

    # <p>Requests a history of user activity and any risks detected as part of Amazon Cognito threat
    #             protection. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-event-user-history">Viewing user event history</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminListUserAuthEventsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The Id of the user pool that contains the user profile with the logged events.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of authentication events to return. Returns 60 events if you set
    #                   <code>MaxResults</code> to 0, or if you don't include a <code>MaxResults</code>
    #               parameter.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     max_results: 1,
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.admin_list_user_auth_events(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     auth_events: [
    #       {
    #         event_id: "StringType",
    #         event_type: "SignIn" # One of: ["SignIn", "SignUp", "ForgotPassword", "PasswordChange", "ResendCode"],
    #         creation_date: Time.now,
    #         event_response: "Pass" # One of: ["Pass", "Fail", "InProgress"],
    #         event_risk: {
    #           risk_decision: "NoRisk" # One of: ["NoRisk", "AccountTakeover", "Block"],
    #           risk_level: "Low" # One of: ["Low", "Medium", "High"],
    #           compromised_credentials_detected: false
    #         },
    #         challenge_responses: [
    #           {
    #             challenge_name: "Password" # One of: ["Password", "Mfa"],
    #             challenge_response: "Success" # One of: ["Success", "Failure"]
    #           }
    #         ],
    #         event_context_data: {
    #           ip_address: "StringType",
    #           device_name: "StringType",
    #           timezone: "StringType",
    #           city: "StringType",
    #           country: "StringType"
    #         },
    #         event_feedback: {
    #           feedback_value: "Valid" # One of: ["Valid", "Invalid"], # required
    #           provider: "StringType", # required
    #           feedback_date: Time.now
    #         }
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::AdminListUserAuthEventsResponse]
    def admin_list_user_auth_events(params = {}, options = {})
      request = build_request(:admin_list_user_auth_events, params)
      request.send_request(options)
    end

    # <p>Given a username and a group name, removes them from the group. User pool groups are
    #             identifiers that you can reference from the contents of ID and access tokens, and set
    #             preferred IAM roles for identity-pool authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html">Adding groups to a user pool</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminRemoveUserFromGroupRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the group and the user that you want to
    #               remove.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :group_name
    #   <p>The name of the group that you want to remove the user from, for example
    #                   <code>MyTestGroup</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     group_name: "GroupNameType", # required
    #   }
    #   options = {}
    #   response = client.admin_remove_user_from_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def admin_remove_user_from_group(params = {}, options = {})
      request = build_request(:admin_remove_user_from_group, params)
      request.send_request(options)
    end

    # <p>Begins the password reset process. Sets the requested user’s account into a
    #                 <code>RESET_REQUIRED</code> status, and sends them a password-reset code. Your user
    #             pool also sends the user a notification with a reset code and the information that their
    #             password has been reset. At sign-in, your application or the managed login session
    #             receives a challenge to complete the reset by confirming the code and setting a new
    #             password.</p>
    #          <p>To use this API operation, your user pool must have self-service account recovery
    #             configured.</p>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminResetUserPasswordRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to reset the user's password.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.admin_reset_user_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminResetUserPasswordResponse]
    def admin_reset_user_password(params = {}, options = {})
      request = build_request(:admin_reset_user_password, params)
      request.send_request(options)
    end

    # <p>Some API operations in a user pool generate a challenge, like a prompt for an MFA
    #             code, for device authentication that bypasses MFA, or for a custom authentication
    #             challenge. An <code>AdminRespondToAuthChallenge</code> API request provides the answer
    #             to that challenge, like a code or a secure remote password (SRP). The parameters of a
    #             response to an authentication challenge vary with the type of challenge.</p>
    #          <p>For more information about custom authentication challenges, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">Custom
    #                 authentication challenge Lambda triggers</a>.</p>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminRespondToAuthChallengeRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to respond to an authentication
    #               challenge.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client where you initiated sign-in.</p>
    # @option params [String] :challenge_name
    #   <p>The name of the challenge that you are responding to.</p>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>.
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>,
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in
    #                       the <code>requiredAttributes</code> parameter. You can also set values for
    #                       attributes that aren't required by your user pool and that your app client
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code>
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or
    #                       <code>email</code> attribute for the user. Then restart the authentication
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :challenge_responses
    #   <p>The responses to the challenge that you received in the previous request. Each
    #       challenge has its own required response parameters. The following examples are partial
    #       JSON request bodies that highlight challenge-response parameters.</p>
    #            <important>
    #               <p>You must provide a SECRET_HASH parameter in all challenge responses to an app
    #           client that has a client secret. Include a <code>DEVICE_KEY</code> for device
    #           authentication.</p>
    #            </important>
    #            <dl>
    #               <dt>SELECT_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #               "USERNAME": "[username]",
    #               "ANSWER": "[Challenge name]"}</code>
    #                  </p>
    #                  <p>Available challenges are <code>PASSWORD</code>, <code>PASSWORD_SRP</code>,
    #               <code>EMAIL_OTP</code>, <code>SMS_OTP</code>, and <code>WEB_AUTHN</code>.</p>
    #                  <p>Complete authentication in the <code>SELECT_CHALLENGE</code> response for
    #               <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, and <code>WEB_AUTHN</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "WEB_AUTHN",
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                        </p>
    #                        <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD",
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD_SRP",
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For <code>SMS_OTP</code> and <code>EMAIL_OTP</code>, respond with the
    #               username and answer. Your user pool will send a code for the user to submit in
    #               the next challenge response.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "SMS_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "EMAIL_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>WEB_AUTHN</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "WEB_AUTHN", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                  </p>
    #                  <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #               </dd>
    #               <dt>PASSWORD</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_SRP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_SRP", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_OTP", "ChallengeResponses":
    #               {"SMS_OTP_CODE": "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>EMAIL_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "EMAIL_OTP", "ChallengeResponses": {"EMAIL_OTP_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>This challenge response is part of the SRP flow. Amazon Cognito requires
    #               that your application respond to this challenge within a few seconds. When
    #               the response time exceeds this period, your user pool returns a
    #               <code>NotAuthorizedException</code> error.</p>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #                       {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #                       "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #                       [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>CUSTOM_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>NEW_PASSWORD_REQUIRED</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #                       {"NEW_PASSWORD": "[new_password]", "USERNAME":
    #                   "[username]"}</code>
    #                  </p>
    #                  <p>To set any required attributes that <code>InitiateAuth</code> returned in
    #                   an <code>requiredAttributes</code> parameter, add
    #                       <code>"userAttributes.[attribute_name]": "[attribute_value]"</code>.
    #                   This parameter can also set values for writable attributes that aren't
    #                   required by your user pool.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </dd>
    #               <dt>SOFTWARE_TOKEN_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #                       [authenticator_code]}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_SRP_AUTH</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #                   "[srp_a]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #                   {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #                   "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]",
    #                   "TIMESTAMP": [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>MFA_SETUP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #                   "[username]"}, "SESSION": "[Session ID from
    #                   VerifySoftwareToken]"</code>
    #                  </p>
    #               </dd>
    #               <dt>SELECT_MFA_TYPE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "ANSWER": "[SMS_MFA|EMAIL_MFA|SOFTWARE_TOKEN_MFA]"}</code>
    #                  </p>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #       <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    # @option params [String] :session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. If an <code>AdminInitiateAuth</code> or
    #                   <code>AdminRespondToAuthChallenge</code> API request results in a determination that
    #               your application must pass another challenge, Amazon Cognito returns a session with other
    #               challenge parameters. Send this session identifier, unmodified, to the next
    #                   <code>AdminRespondToAuthChallenge</code> request.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Types::ContextDataType] :context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"], # required
    #     challenge_responses: {
    #       "StringType" => "StringType"
    #     },
    #     session: "SessionType",
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     context_data: {
    #       ip_address: "StringType", # required
    #       server_name: "StringType", # required
    #       server_path: "StringType", # required
    #       http_headers: [ # required
    #         {
    #           header_name: "StringType",
    #           header_value: "StringType"
    #         }
    #       ],
    #       encoded_data: "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.admin_respond_to_auth_challenge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     challenge_name: "SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"],
    #     session: "SessionType",
    #     challenge_parameters: {
    #       "StringType" => "StringType"
    #     },
    #     authentication_result: {
    #       access_token: "TokenModelType",
    #       expires_in: 1,
    #       token_type: "StringType",
    #       refresh_token: "TokenModelType",
    #       id_token: "TokenModelType",
    #       new_device_metadata: {
    #         device_key: "DeviceKeyType",
    #         device_group_key: "StringType"
    #       }
    #     },
    #     available_challenges: ["SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"]]
    #   }
    # @return [Types::AdminRespondToAuthChallengeResponse]
    def admin_respond_to_auth_challenge(params = {}, options = {})
      request = build_request(:admin_respond_to_auth_challenge, params)
      request.send_request(options)
    end

    # <p>Sets the user's multi-factor authentication (MFA) preference, including which MFA
    #             options are activated, and if any are preferred. Only one factor can be set as
    #             preferred. The preferred MFA factor will be used to authenticate a user if multiple
    #             factors are activated. If multiple options are activated and no preference is set, a
    #             challenge to choose an MFA option will be returned during sign-in.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminSetUserMFAPreferenceRequest] params
    # @option params [Types::SMSMfaSettingsType] :sms_mfa_settings
    #   <p>User preferences for SMS message MFA. Activates or deactivates SMS MFA and sets it as
    #               the preferred MFA method when multiple methods are available.</p>
    # @option params [Types::SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   <p>User preferences for time-based one-time password (TOTP) MFA. Activates or deactivates
    #               TOTP MFA and sets it as the preferred MFA method when multiple methods are
    #               available.</p>
    # @option params [Types::EmailMfaSettingsType] :email_mfa_settings
    #   <p>User preferences for email message MFA. Activates or deactivates email MFA and sets it
    #               as the preferred MFA method when multiple methods are available.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    # @option params [Types::WebAuthnMfaSettingsType] :web_authn_mfa_settings
    #   <p>User preferences for passkey MFA. Activates or deactivates passkey MFA for the user.
    #               When activated, passkey authentication requires user verification, and passkey sign-in
    #               is available when MFA is required. To activate this setting, the
    #               <code>FactorConfiguration</code> of your user pool <code>WebAuthnConfiguration</code>
    #               must be <code>MULTI_FACTOR_WITH_USER_VERIFICATION</code>.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to set a user's MFA preferences.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     email_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     web_authn_mfa_settings: {
    #       enabled: false
    #     },
    #     username: "UsernameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.admin_set_user_mfa_preference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminSetUserMFAPreferenceResponse]
    def admin_set_user_mfa_preference(params = {}, options = {})
      request = build_request(:admin_set_user_mfa_preference, params)
      request.send_request(options)
    end

    # <p>Sets the specified user's password in a user pool. This operation administratively
    #             sets a temporary or permanent password for a user. With this operation, you can bypass
    #             self-service password changes and permit immediate sign-in with the password that you
    #             set. To do this, set <code>Permanent</code> to <code>true</code>.</p>
    #          <p>You can also set a new temporary password in this request, send it to a user, and
    #             require them to choose a new password on their next sign-in. To do this, set
    #                 <code>Permanent</code> to <code>false</code>.</p>
    #          <p>If the password is temporary, the user's <code>Status</code> becomes
    #                 <code>FORCE_CHANGE_PASSWORD</code>. When the user next tries to sign in, the
    #                 <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> response includes the
    #                 <code>NEW_PASSWORD_REQUIRED</code> challenge. If the user doesn't sign in
    #             before the temporary password expires, they can no longer sign in and you must repeat
    #             this operation to set a temporary or permanent password for them.</p>
    #          <p>After the user sets a new password, or if you set a permanent password, their status
    #             becomes <code>Confirmed</code>.</p>
    #          <p>
    #             <code>AdminSetUserPassword</code> can set a password for the user profile that Amazon Cognito
    #             creates for third-party federated users. When you set a password, the federated user's
    #             status changes from <code>EXTERNAL_PROVIDER</code> to <code>CONFIRMED</code>. A user in
    #             this state can sign in as a federated user, and initiate authentication flows in the API
    #             like a linked native user. They can also modify their password and attributes in
    #             token-authenticated API requests like <code>ChangePassword</code> and
    #                 <code>UpdateUserAttributes</code>. As a best security practice and to keep users in
    #             sync with your external IdP, don't set passwords on federated user profiles. To set up a
    #             federated user for native sign-in with a linked native user, refer to <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation-consolidate-users.html">Linking federated users to an existing user
    #             profile</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminSetUserPasswordRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to set the user's password.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :password
    #   <p>The new temporary or permanent password that you want to set for the user. You
    #               can't remove the password for a user who already has a password so that they can
    #               only sign in with passwordless methods. In this scenario, you must create a new user
    #               without a password.</p>
    # @option params [Boolean] :permanent
    #   <p>Set to <code>true</code> to set a password that the user can immediately sign in with.
    #               Set to <code>false</code> to set a temporary password that the user must change on their
    #               next sign-in.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     password: "PasswordType", # required
    #     permanent: false
    #   }
    #   options = {}
    #   response = client.admin_set_user_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminSetUserPasswordResponse]
    def admin_set_user_password(params = {}, options = {})
      request = build_request(:admin_set_user_password, params)
      request.send_request(options)
    end

    # <p>
    #             <i>This action is no longer supported.</i> You can use it to configure
    #             only SMS MFA. You can't use it to configure time-based one-time password (TOTP) software
    #             token MFA.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminSetUserSettingsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the user whose options you're setting.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Array<Types::MFAOptionType>] :mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     mfa_options: [ # required
    #       {
    #         delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #         attribute_name: "AttributeNameType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.admin_set_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminSetUserSettingsResponse]
    def admin_set_user_settings(params = {}, options = {})
      request = build_request(:admin_set_user_settings, params)
      request.send_request(options)
    end

    # <p>Provides the feedback for an authentication event generated by threat protection
    #             features. Your response indicates that you think that the event either was from a valid
    #             user or was an unwanted authentication attempt. This feedback improves the risk
    #             evaluation decision for the user pool as part of Amazon Cognito threat protection.
    #             To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                      Plus tier</a>.</p>
    #          <p>To train the threat-protection model to recognize trusted and untrusted sign-in
    #             characteristics, configure threat protection in audit-only mode and provide a mechanism
    #             for users or administrators to submit feedback. Your feedback can tell Amazon Cognito that a risk
    #             rating was assigned at a level you don't agree with.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminUpdateAuthEventFeedbackRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to submit authentication-event feedback.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :event_id
    #   <p>The ID of the threat protection authentication event that you want to update.</p>
    # @option params [String] :feedback_value
    #   <p>Your feedback to the authentication event. When you provide a <code>FeedbackValue</code>
    #   value of <code>valid</code>, you tell Amazon Cognito that you trust a user session where Amazon Cognito
    #   has evaluated some level of risk. When you provide a <code>FeedbackValue</code> value of
    #   <code>invalid</code>, you tell Amazon Cognito that you don't trust a user session, or you
    #   don't believe that Amazon Cognito evaluated a high-enough risk level.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     event_id: "EventIdType", # required
    #     feedback_value: "Valid" # One of: ["Valid", "Invalid"], # required
    #   }
    #   options = {}
    #   response = client.admin_update_auth_event_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminUpdateAuthEventFeedbackResponse]
    def admin_update_auth_event_feedback(params = {}, options = {})
      request = build_request(:admin_update_auth_event_feedback, params)
      request.send_request(options)
    end

    # <p>Updates the status of a user's device so that it is marked as remembered or not
    #             remembered for the purpose of device authentication. Device authentication is a
    #             "remember me" mechanism that silently completes sign-in from trusted devices with a
    #             device key instead of a user-provided MFA code. This operation changes the status of a
    #             device without deleting it, so you can enable it again later. For more information about
    #             device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminUpdateDeviceStatusRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to change a user's device status.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :device_key
    #   <p>The unique identifier, or device key, of the device that you want to update the status
    #               for.</p>
    # @option params [String] :device_remembered_status
    #   <p>To enable device authentication with the specified device, set to
    #                   <code>remembered</code>.To disable, set to <code>not_remembered</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered" # One of: ["remembered", "not_remembered"]
    #   }
    #   options = {}
    #   response = client.admin_update_device_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminUpdateDeviceStatusResponse]
    def admin_update_device_status(params = {}, options = {})
      request = build_request(:admin_update_device_status, params)
      request.send_request(options)
    end

    # <p>Updates the specified user's attributes. To delete an attribute from your user,
    #             submit the attribute in your API request with a blank value.</p>
    #          <p>For custom attributes, you must add a <code>custom:</code> prefix to the attribute
    #             name, for example <code>custom:department</code>.</p>
    #          <p>This operation can set a user's email address or phone number as verified and
    #             permit immediate sign-in in user pools that require verification of these attributes. To
    #             do this, set the <code>email_verified</code> or <code>phone_number_verified</code>
    #             attribute to <code>true</code>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::AdminUpdateUserAttributesRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to update user attributes.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name.</p>
    #            <p>If your user pool requires verification before Amazon Cognito updates an attribute value that
    #               you specify in this request, Amazon Cognito doesn’t immediately update the value of that
    #               attribute. After your user receives and responds to a verification message to verify the
    #               new value, Amazon Cognito updates the attribute value. Your user can sign in and receive messages
    #               with the original attribute value until they verify the new value.</p>
    #            <p>To skip the verification message and update the value of an attribute that requires
    #               verification in the same API request, include the <code>email_verified</code> or
    #                   <code>phone_number_verified</code> attribute, with a value of <code>true</code>. If
    #               you set the <code>email_verified</code> or <code>phone_number_verified</code> value for
    #               an <code>email</code> or <code>phone_number</code> attribute that requires verification
    #               to <code>true</code>, Amazon Cognito doesn’t send a verification message to your user.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.admin_update_user_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminUpdateUserAttributesResponse]
    def admin_update_user_attributes(params = {}, options = {})
      request = build_request(:admin_update_user_attributes, params)
      request.send_request(options)
    end

    # <p>Invalidates the identity, access, and refresh tokens that Amazon Cognito issued to a user. Call
    #             this operation with your administrative credentials when your user signs out of your
    #             app. This results in the following behavior.</p>
    #          <ul>
    #             <li>
    #                <p>Amazon Cognito no longer accepts <i>token-authorized</i> user operations
    #                     that you authorize with a signed-out user's access tokens. For more information,
    #                     see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool
    #                         endpoints</a>.</p>
    #                <p>Amazon Cognito returns an <code>Access Token has been revoked</code> error when your
    #                     app attempts to authorize a user pools API request with a revoked access token
    #                     that contains the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Cognito no longer accepts a signed-out user's ID token in a <a href="https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html">GetId </a> request to an identity pool with
    #                         <code>ServerSideTokenCheck</code> enabled for its user pool IdP
    #                     configuration in <a href="https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html">CognitoIdentityProvider</a>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Cognito no longer accepts a signed-out user's refresh tokens in refresh
    #                     requests.</p>
    #             </li>
    #          </ul>
    #          <p>Other requests might be valid until your user's token expires. This operation
    #             doesn't clear the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">managed login</a> session cookie. To clear the session for
    #             a user who signed in with managed login or the classic hosted UI, direct their browser
    #             session to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html">logout endpoint</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::AdminUserGlobalSignOutRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to sign out a user.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #   }
    #   options = {}
    #   response = client.admin_user_global_sign_out(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AdminUserGlobalSignOutResponse]
    def admin_user_global_sign_out(params = {}, options = {})
      request = build_request(:admin_user_global_sign_out, params)
      request.send_request(options)
    end

    # <p>Begins setup of time-based one-time password (TOTP) multi-factor authentication (MFA)
    #             for a user, with a unique private key that Amazon Cognito generates and returns in the API
    #             response. You can authorize an <code>AssociateSoftwareToken</code> request with either
    #             the user's access token, or a session string from a challenge response that you received
    #             from Amazon Cognito.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    # @param [Hash, Types::AssociateSoftwareTokenRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    #            <p>You can provide either an access token or a session ID in the request.</p>
    # @option params [String] :session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. In <code>AssociateSoftwareToken</code>, this is the session ID from
    #               a successful sign-in. You can provide either an access token or a session ID in the
    #               request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType",
    #     session: "SessionType"
    #   }
    #   options = {}
    #   response = client.associate_software_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     secret_code: "SecretCodeType",
    #     session: "SessionType"
    #   }
    # @return [Types::AssociateSoftwareTokenResponse]
    def associate_software_token(params = {}, options = {})
      request = build_request(:associate_software_token, params)
      request.send_request(options)
    end

    # <p>Changes the password for the currently signed-in user.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::ChangePasswordRequest] params
    # @option params [String] :previous_password
    #   <p>The user's previous password. Required if the user has a password. If the user
    #               has no password and only signs in with passwordless authentication options, you can omit
    #               this parameter.</p>
    # @option params [String] :proposed_password
    #   <p>A new password that you prompted the user to enter in your application.</p>
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the user whose password you want to
    #               change.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     previous_password: "PasswordType",
    #     proposed_password: "PasswordType", # required
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.change_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ChangePasswordResponse]
    def change_password(params = {}, options = {})
      request = build_request(:change_password, params)
      request.send_request(options)
    end

    # <p>Completes registration of a passkey authenticator for the currently signed-in
    #             user.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    # @param [Hash, Types::CompleteWebAuthnRegistrationRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [JSON] :credential
    #   <p>A <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-registrationresponsejson">RegistrationResponseJSON</a> public-key credential response from the
    #               user's passkey provider.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     credential: ""null"", # required
    #   }
    #   options = {}
    #   response = client.complete_web_authn_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CompleteWebAuthnRegistrationResponse]
    def complete_web_authn_registration(params = {}, options = {})
      request = build_request(:complete_web_authn_registration, params)
      request.send_request(options)
    end

    # <p>Confirms a device that a user wants to remember. A remembered device is a "Remember me
    #             on this device" option for user pools that perform authentication with the device key of
    #             a trusted device in the back end, instead of a user-provided MFA code. For more
    #             information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::ConfirmDeviceRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :device_key
    #   <p>The unique identifier, or device key, of the device that you want to update the status
    #               for.</p>
    # @option params [Types::DeviceSecretVerifierConfigType] :device_secret_verifier_config
    #   <p>The configuration of the device secret verifier.</p>
    # @option params [String] :device_name
    #   <p>A friendly name for the device, for example <code>MyMobilePhone</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_secret_verifier_config: {
    #       password_verifier: "StringType",
    #       salt: "StringType"
    #     },
    #     device_name: "DeviceNameType"
    #   }
    #   options = {}
    #   response = client.confirm_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_confirmation_necessary: false
    #   }
    # @return [Types::ConfirmDeviceResponse]
    def confirm_device(params = {}, options = {})
      request = build_request(:confirm_device, params)
      request.send_request(options)
    end

    # <p>This public API operation accepts a confirmation code that Amazon Cognito sent to a user and
    #             accepts a new password for that user.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::ConfirmForgotPasswordRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the app client where the user wants to reset their password. This parameter
    #               is an identifier of the client application that users are resetting their password from,
    #               but this operation resets users' irrespective of the app clients they sign in
    #               to.</p>
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :confirmation_code
    #   <p>The confirmation code that your user pool delivered when your user requested to reset
    #               their password.</p>
    # @option params [String] :password
    #   <p>The new password that your user wants to set.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Types::UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     password: "PasswordType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.confirm_forgot_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ConfirmForgotPasswordResponse]
    def confirm_forgot_password(params = {}, options = {})
      request = build_request(:confirm_forgot_password, params)
      request.send_request(options)
    end

    # <p>Confirms the account of a new user. This public API operation submits a code that
    #             Amazon Cognito sent to your user when they signed up in your user pool. After your user enters
    #             their code, they confirm ownership of the email address or phone number that they
    #             provided, and their user account becomes active. Depending on your user pool
    #             configuration, your users will receive their confirmation code in an email or SMS
    #             message.</p>
    #          <p>Local users who signed up in your user pool are the only type of user who can confirm
    #             sign-up with a code. Users who federate through an external identity provider (IdP) have
    #             already been confirmed by their IdP.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::ConfirmSignUpRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the app client associated with the user pool.</p>
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :confirmation_code
    #   <p>The confirmation code that your user pool sent in response to the <code>SignUp</code>
    #               request.</p>
    # @option params [Boolean] :force_alias_creation
    #   <p>When <code>true</code>, forces user confirmation despite any existing aliases.
    #               Defaults to <code>false</code>. A value of <code>true</code> migrates the alias from an
    #               existing user to the new user if an existing user already has the phone number or email
    #               address as an alias.</p>
    #            <p>Say, for example, that an existing user has an <code>email</code> attribute of
    #                   <code>bob@example.com</code> and email is an alias in your user pool. If the new
    #               user also has an email of <code>bob@example.com</code> and your
    #                   <code>ConfirmSignUp</code> response sets <code>ForceAliasCreation</code> to
    #                   <code>true</code>, the new user can sign in with a username of
    #                   <code>bob@example.com</code> and the existing user can no longer do so.</p>
    #            <p>If <code>false</code> and an attribute belongs to an existing alias, this request
    #               returns an <b>AliasExistsException</b> error.</p>
    #            <p>For more information about sign-in aliases, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Types::UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [String] :session
    #   <p>The optional session ID from a <code>SignUp</code> API request. You can sign in a user
    #               directly from the sign-up process with the <code>USER_AUTH</code> authentication
    #               flow.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     confirmation_code: "ConfirmationCodeType", # required
    #     force_alias_creation: false,
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     },
    #     session: "SessionType"
    #   }
    #   options = {}
    #   response = client.confirm_sign_up(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session: "SessionType"
    #   }
    # @return [Types::ConfirmSignUpResponse]
    def confirm_sign_up(params = {}, options = {})
      request = build_request(:confirm_sign_up, params)
      request.send_request(options)
    end

    # <p>Creates a new group in the specified user pool. For more information about user pool
    #             groups, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html">Adding groups to a user pool</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateGroupRequest] params
    # @option params [String] :group_name
    #   <p>A name for the group. This name must be unique in your user pool.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to create a user group.</p>
    # @option params [String] :description
    #   <p>A description of the group that you're creating.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that you want to associate with the
    #               group. A group role primarily declares a preferred role for the credentials that you get
    #               from an identity pool. Amazon Cognito ID tokens have a <code>cognito:preferred_role</code> claim
    #               that presents the highest-precedence group that a user belongs to. Both ID and access
    #               tokens also contain a <code>cognito:groups</code> claim that list all the groups that a
    #               user is a member of.</p>
    # @option params [Integer] :precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher or null <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #            <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #            <p>The default <code>Precedence</code> value is null. The maximum <code>Precedence</code>
    #               value is <code>2^31-1</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1
    #   }
    #   options = {}
    #   response = client.create_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_name: "GroupNameType",
    #       user_pool_id: "UserPoolIdType",
    #       description: "DescriptionType",
    #       role_arn: "ArnType",
    #       precedence: 1,
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::CreateGroupResponse]
    def create_group(params = {}, options = {})
      request = build_request(:create_group, params)
      request.send_request(options)
    end

    # <p>Adds a configuration and trust relationship between a third-party identity provider
    #             (IdP) and a user pool. Amazon Cognito accepts sign-in with third-party identity providers through
    #             managed login and OIDC relying-party libraries. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html">Third-party IdP sign-in</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateIdentityProviderRequest] params
    # @option params [String] :user_pool_id
    #   <p>The Id of the user pool where you want to create an IdP.</p>
    # @option params [String] :provider_name
    #   <p>The name that you want to assign to the IdP. You can pass the identity provider name
    #               in the <code>identity_provider</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated
    #               IdP.</p>
    # @option params [String] :provider_type
    #   <p>The type of IdP that you want to add. Amazon Cognito supports OIDC, SAML 2.0, Login With
    #               Amazon, Sign In With Apple, Google, and Facebook IdPs.</p>
    # @option params [Hash<String, String>] :provider_details
    #   <p>The scopes, URLs, and identifiers for your external identity provider. The following
    #   examples describe the provider detail keys for each IdP type. These values and their
    #   schema are subject to change. Social IdP <code>authorize_scopes</code> values must match
    #   the values listed here.</p>
    #            <dl>
    #               <dt>OpenID Connect (OIDC)</dt>
    #               <dd>
    #                  <p>Amazon Cognito accepts the following elements when it can't discover endpoint
    #                   URLs from <code>oidc_issuer</code>: <code>attributes_url</code>,
    #                       <code>authorize_url</code>, <code>jwks_uri</code>,
    #                       <code>token_url</code>.</p>
    #                  <p>Create or update request: <code>"ProviderDetails": {
    #                       "attributes_request_method": "GET", "attributes_url":
    #                       "https://auth.example.com/userInfo", "authorize_scopes": "openid profile
    #                       email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_request_method":
    #                       "GET", "attributes_url": "https://auth.example.com/userInfo",
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "openid
    #                       profile email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #               </dd>
    #               <dt>SAML</dt>
    #               <dd>
    #                  <p>Create or update request with Metadata URL: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "MetadataURL":
    #                       "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>Create or update request with Metadata file: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true",
    #                       "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>The value of <code>MetadataFile</code> must be the plaintext metadata document with all
    #                   quote (") characters escaped by backslashes.</p>
    #                  <p>Describe response: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "ActiveEncryptionCertificate": "[certificate]",
    #                       "MetadataURL": "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256", "SLORedirectBindingURI":
    #                       "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #                       "https://auth.example.com/sso/saml" }</code>
    #                  </p>
    #               </dd>
    #               <dt>LoginWithAmazon</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "profile postal_code", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret"</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://api.amazon.com/user/profile", "attributes_url_add_attributes":
    #                       "false", "authorize_scopes": "profile postal_code", "authorize_url":
    #                       "https://www.amazon.com/ap/oa", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret", "token_request_method": "POST",
    #                       "token_url": "https://api.amazon.com/auth/o2/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Google</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email profile openid", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://people.googleapis.com/v1/people/me?personFields=",
    #                       "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #                       profile openid", "authorize_url":
    #                       "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret", "oidc_issuer":
    #                       "https://accounts.google.com", "token_request_method": "POST",
    #                       "token_url": "https://www.googleapis.com/oauth2/v4/token"
    #                   }</code>
    #                  </p>
    #               </dd>
    #               <dt>SignInWithApple</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email name", "client_id": "com.example.cognito", "private_key": "1EXAMPLE",
    #                       "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": {
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #                       name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #                       "client_id": "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #                       "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #                       "token_request_method": "POST", "token_url":
    #                       "https://appleid.apple.com/auth/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Facebook</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "api_version": "v17.0",
    #               "authorize_scopes": "public_profile, email", "client_id": "1example23456789",
    #               "client_secret": "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails":
    #               { "api_version": "v17.0", "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #               "attributes_url_add_attributes": "true", "authorize_scopes": "public_profile, email",
    #               "authorize_url": "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #               "1example23456789", "client_secret": "provider-app-client-secret", "token_request_method":
    #               "GET", "token_url": "https://graph.facebook.com/v17.0/oauth/access_token" }</code>
    #                  </p>
    #               </dd>
    #            </dl>
    # @option params [Hash<String, String>] :attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes. Specify a
    #               user pool attribute as the key of the key-value pair, and the IdP attribute claim name
    #               as the value.</p>
    # @option params [Array<String>] :idp_identifiers
    #   <p>An array of IdP identifiers, for example <code>"IdPIdentifiers": [ "MyIdP", "MyIdP2"
    #                   ]</code>. Identifiers are friendly names that you can pass in the
    #                   <code>idp_identifier</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated IdP.
    #               Identifiers in a domain format also enable the use of <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html">email-address matching with SAML providers</a>. </p>
    # @option params [Hash<String, String>] :acr_mapping
    #   <p>A mapping between the authentication context class reference (ACR) levels of your user
    #               pool and the ACR values of the external OpenID Connect (OIDC) identity provider (IdP).
    #               The map is keyed by level, from <code>Level1</code> through <code>Level4</code>, and each
    #               value is the ACR value that the IdP uses for the corresponding level. Amazon Cognito uses
    #               this mapping to translate a requested user pool ACR level to the value that the IdP
    #               expects, and to map an ACR value that the IdP returns back to a user pool level. When the
    #               IdP returns an ACR value that isn't mapped, Amazon Cognito resolves it to the lowest
    #               level. Only OIDC IdPs support ACR mapping.</p>
    #            <p>Setting <code>AcrMapping</code> is available in all feature plans. It isn't restricted
    #               to the Essentials or Plus feature plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameTypeV2", # required
    #     provider_type: "SAML" # One of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"], # required
    #     provider_details: { # required
    #       "StringType" => "StringType"
    #     },
    #     attribute_mapping: {
    #       "AttributeMappingKeyType" => "StringType"
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #     acr_mapping: {
    #       "AcrMappingKeyType" => "AcrValueType"
    #     }
    #   }
    #   options = {}
    #   response = client.create_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider: { # required
    #       user_pool_id: "UserPoolIdType",
    #       provider_name: "ProviderNameType",
    #       provider_type: "SAML" # One of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"],
    #       provider_details: {
    #         "StringType" => "StringType"
    #       },
    #       attribute_mapping: {
    #         "AttributeMappingKeyType" => "StringType"
    #       },
    #       idp_identifiers: ["IdpIdentifierType"],
    #       acr_mapping: {
    #         "AcrMappingKeyType" => "AcrValueType"
    #       },
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::CreateIdentityProviderResponse]
    def create_identity_provider(params = {}, options = {})
      request = build_request(:create_identity_provider, params)
      request.send_request(options)
    end

    # <p>Creates a new set of branding settings for a user pool style and associates it with an
    #             app client. This operation is the programmatic option for the creation of a new style in
    #             the branding editor.</p>
    #          <p>Provides values for UI customization in a <code>Settings</code> JSON object and image
    #             files in an <code>Assets</code> array. To send the JSON object <code>Document</code>
    #             type parameter in <code>Settings</code>, you might need to update to the most recent
    #             version of your Amazon Web Services SDK. To create a new style with default settings, set
    #                 <code>UseCognitoProvidedValues</code> to <code>true</code> and don't provide
    #             values for any other options.</p>
    #          <p> This operation has a 2-megabyte request-size limit and include the CSS settings and
    #             image assets for your app client. Your branding settings might exceed 2MB in size. Amazon Cognito
    #             doesn't require that you pass all parameters in one request and preserves existing
    #             style settings that you don't specify. If your request is larger than 2MB, separate it
    #             into multiple requests, each with a size smaller than the limit. </p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateManagedLoginBrandingRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to create a new branding style.</p>
    # @option params [String] :client_id
    #   <p>The app client that you want to create the branding style for. Each style is linked to
    #               an app client until you delete it.</p>
    # @option params [Boolean] :use_cognito_provided_values
    #   <p>When true, applies the default branding style options. These default options are
    #               managed by Amazon Cognito. You can modify them later in the branding editor.</p>
    #            <p>When you specify <code>true</code> for this option, you must also omit values for
    #                   <code>Settings</code> and <code>Assets</code> in the request.</p>
    # @option params [JSON] :settings
    #   <p>A JSON file, encoded as a <code>Document</code> type, with the the settings that you
    #               want to apply to your style.</p>
    #            <p>The following components are not currently implemented and reserved for future
    #               use:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>signUp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>instructions</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sessionTimerDisplay</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>languageSelector</code> (for localization, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization">Managed login localization)</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::AssetType>] :assets
    #   <p>An array of image files that you want to apply to functions like backgrounds, logos,
    #               and icons. Each object must also indicate whether it is for dark mode, light mode, or
    #               browser-adaptive mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     use_cognito_provided_values: false,
    #     settings: ""null"",
    #     assets: [
    #       {
    #         category: "FAVICON_ICO" # One of: ["FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"], # required
    #         color_mode: "LIGHT" # One of: ["LIGHT", "DARK", "DYNAMIC"], # required
    #         extension: "ICO" # One of: ["ICO", "JPEG", "PNG", "SVG", "WEBP"], # required
    #         bytes: "data",
    #         resource_id: "ResourceIdType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_managed_login_branding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_login_branding: {
    #       managed_login_branding_id: "ManagedLoginBrandingIdType",
    #       user_pool_id: "UserPoolIdType",
    #       use_cognito_provided_values: false,
    #       settings: ""null"",
    #       assets: [
    #         {
    #           category: "FAVICON_ICO" # One of: ["FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"], # required
    #           color_mode: "LIGHT" # One of: ["LIGHT", "DARK", "DYNAMIC"], # required
    #           extension: "ICO" # One of: ["ICO", "JPEG", "PNG", "SVG", "WEBP"], # required
    #           bytes: "data",
    #           resource_id: "ResourceIdType"
    #         }
    #       ],
    #       creation_date: Time.now,
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::CreateManagedLoginBrandingResponse]
    def create_managed_login_branding(params = {}, options = {})
      request = build_request(:create_managed_login_branding, params)
      request.send_request(options)
    end

    # <p>Creates a new OAuth2.0 resource server and defines custom scopes within it. Resource
    #             servers are associated with custom scopes and machine-to-machine (M2M) authorization.
    #             For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html">Access control with resource servers</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateResourceServerRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to create a resource server.</p>
    # @option params [String] :identifier
    #   <p>A unique resource server identifier for the resource server. The identifier can be an
    #               API friendly name like <code>solar-system-data</code>. You can also set an API URL like
    #                   <code>https://solar-system-data-api.example.com</code> as your identifier.</p>
    #            <p>Amazon Cognito represents scopes in the access token in the format
    #                   <code>$resource-server-identifier/$scope</code>. Longer scope-identifier strings
    #               increase the size of your access tokens.</p>
    # @option params [String] :name
    #   <p>A friendly name for the resource server.</p>
    # @option params [Array<Types::ResourceServerScopeType>] :scopes
    #   <p>A list of custom scopes. Each scope is a key-value map with the keys
    #                   <code>ScopeName</code> and <code>ScopeDescription</code>. The name of a custom scope
    #               is a combination of <code>ScopeName</code> and the resource server <code>Name</code> in
    #               this request, for example <code>MyResourceServerName/MyScopeName</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #     name: "ResourceServerNameType", # required
    #     scopes: [
    #       {
    #         scope_name: "ResourceServerScopeNameType", # required
    #         scope_description: "ResourceServerScopeDescriptionType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_resource_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_server: { # required
    #       user_pool_id: "UserPoolIdType",
    #       identifier: "ResourceServerIdentifierType",
    #       name: "ResourceServerNameType",
    #       scopes: [
    #         {
    #           scope_name: "ResourceServerScopeNameType", # required
    #           scope_description: "ResourceServerScopeDescriptionType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::CreateResourceServerResponse]
    def create_resource_server(params = {}, options = {})
      request = build_request(:create_resource_server, params)
      request.send_request(options)
    end

    # <p>Creates terms documents for the requested app client. When Terms and conditions and
    #             Privacy policy documents are configured, the app client displays links to them in the
    #             sign-up page of managed login for the app client.</p>
    #          <p>You can provide URLs for terms documents in the languages that are supported by <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization">managed login localization</a>. Amazon Cognito directs users to the terms documents for
    #             their current language, with fallback to <code>default</code> if no document exists for
    #             the language.</p>
    #          <p>Each request accepts one type of terms document and a map of language-to-link for that
    #             document type. You must provide both types of terms documents in at least one language
    #             before Amazon Cognito displays your terms documents. Supply each type in separate
    #             requests.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents">Terms documents</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateTermsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to create terms documents.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client where you want to create terms documents. Must be an app
    #               client in the requested user pool.</p>
    # @option params [String] :terms_name
    #   <p>A friendly name for the document that you want to create in the current request. Must
    #               begin with <code>terms-of-use</code> or <code>privacy-policy</code> as identification of
    #               the document type. Provide URLs for both <code>terms-of-use</code> and
    #                   <code>privacy-policy</code> in separate requests.</p>
    # @option params [String] :terms_source
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    # @option params [String] :enforcement
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    # @option params [Hash<String, String>] :links
    #   <p>A map of URLs to languages. For each localized language that will view the requested
    #                   <code>TermsName</code>, assign a URL. A selection of <code>cognito:default</code>
    #               displays for all languages that don't have a language-specific URL.</p>
    #            <p>For example, <code>"cognito:default": "https://terms.example.com", "cognito:spanish":
    #                   "https://terms.example.com/es"</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     terms_name: "TermsNameType", # required
    #     terms_source: "LINK" # One of: ["LINK"], # required
    #     enforcement: "NONE" # One of: ["NONE"], # required
    #     links: {
    #       "LanguageIdType" => "LinkUrlType"
    #     }
    #   }
    #   options = {}
    #   response = client.create_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terms: {
    #       terms_id: "TermsIdType", # required
    #       user_pool_id: "UserPoolIdType", # required
    #       client_id: "ClientIdType", # required
    #       terms_name: "TermsNameType", # required
    #       terms_source: "LINK" # One of: ["LINK"], # required
    #       enforcement: "NONE" # One of: ["NONE"], # required
    #       links: { # required
    #         "LanguageIdType" => "LinkUrlType"
    #       },
    #       creation_date: Time.now, # required
    #       last_modified_date: Time.now, # required
    #     }
    #   }
    # @return [Types::CreateTermsResponse]
    def create_terms(params = {}, options = {})
      request = build_request(:create_terms, params)
      request.send_request(options)
    end

    # <p>Creates a user import job. You can import users into user pools from a comma-separated
    #             values (CSV) file without adding Amazon Cognito MAU costs to your Amazon Web Services bill.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateUserImportJobRequest] params
    # @option params [String] :job_name
    #   <p>A friendly name for the user import job.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that you want to import users into.</p>
    # @option params [String] :cloud_watch_logs_role_arn
    #   <p>You must specify an IAM role that has permission to log import-job results to
    #               Amazon CloudWatch Logs. This parameter is the ARN of that role.</p>
    # @option params [String] :password_hashing_algorithm
    #   <p>The password hashing algorithm used to generate the hashes in the CSV file for this
    #               import job.</p>
    #            <p>Valid values: <code>BCRYPT</code> | <code>SCRYPT</code> | <code>ARGON2ID</code> |
    #                   <code>PBKDF2_SHA256</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     job_name: "UserImportJobNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     cloud_watch_logs_role_arn: "ArnType", # required
    #     password_hashing_algorithm: "BCRYPT" # One of: ["BCRYPT", "SCRYPT", "ARGON2ID", "PBKDF2_SHA256"]
    #   }
    #   options = {}
    #   response = client.create_user_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_import_job: {
    #       job_name: "UserImportJobNameType",
    #       job_id: "UserImportJobIdType",
    #       user_pool_id: "UserPoolIdType",
    #       pre_signed_url: "PreSignedUrlType",
    #       creation_date: Time.now,
    #       start_date: Time.now,
    #       completion_date: Time.now,
    #       status: "Created" # One of: ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"],
    #       cloud_watch_logs_role_arn: "ArnType",
    #       imported_users: 1,
    #       skipped_users: 1,
    #       failed_users: 1,
    #       completion_message: "CompletionMessageType",
    #       password_hashing_algorithm: "BCRYPT" # One of: ["BCRYPT", "SCRYPT", "ARGON2ID", "PBKDF2_SHA256"]
    #     }
    #   }
    # @return [Types::CreateUserImportJobResponse]
    def create_user_import_job(params = {}, options = {})
      request = build_request(:create_user_import_job, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Cognito user pool. This operation sets basic and advanced configuration
    #             options.</p>
    #          <important>
    #             <p>If you don't provide a value for an attribute, Amazon Cognito sets it to its default value.</p>
    #          </important>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateUserPoolRequest] params
    # @option params [String] :pool_name
    #   <p>A friendly name for your user pool.</p>
    # @option params [Types::UserPoolPolicyType] :policies
    #   <p>The password policy and sign-in policy in the user pool. The password policy sets
    #               options like password complexity requirements and password history. The sign-in policy
    #               sets the options available to applications in <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a>.</p>
    # @option params [String] :deletion_protection
    #   <p>When active, <code>DeletionProtection</code> prevents accidental deletion of your user
    #   pool. Before you can delete a user pool that you have protected against deletion, you
    #   must deactivate this feature.</p>
    #            <p>When you try to delete a protected user pool in a <code>DeleteUserPool</code> API request,
    #   Amazon Cognito returns an <code>InvalidParameterException</code> error. To delete a protected user pool,
    #   send a new <code>DeleteUserPool</code> request after you deactivate deletion protection in an
    #   <code>UpdateUserPool</code> API request.</p>
    # @option params [Types::LambdaConfigType] :lambda_config
    #   <p>A collection of user pool Lambda triggers. Amazon Cognito invokes triggers at several possible
    #               stages of authentication operations. Triggers can modify the outcome of the operations
    #               that invoked them.</p>
    # @option params [Array<String>] :auto_verified_attributes
    #   <p>The attributes that you want your user pool to automatically verify. For more
    #               information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves">Verifying contact information at sign-up</a>.</p>
    # @option params [Array<String>] :alias_attributes
    #   <p>Attributes supported as an alias for this user pool. For more information about alias
    #               attributes, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    # @option params [Array<String>] :username_attributes
    #   <p>Specifies whether a user can use an email address or phone number as a username when
    #               they sign up. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html#user-pool-settings-aliases">Customizing sign-in attributes</a>.</p>
    # @option params [String] :sms_verification_message
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :email_verification_message
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :email_verification_subject
    #   <p>This parameter is no longer used.</p>
    # @option params [Types::VerificationMessageTemplateType] :verification_message_template
    #   <p>The template for the verification message that your user pool delivers to users who
    #               set an email address or phone number attribute.</p>
    #            <p>Set the email message type that corresponds to your <code>DefaultEmailOption</code>
    #               selection. For <code>CONFIRM_WITH_LINK</code>, specify an
    #                   <code>EmailMessageByLink</code> and leave <code>EmailMessage</code> blank. For
    #                   <code>CONFIRM_WITH_CODE</code>, specify an <code>EmailMessage</code> and leave
    #                   <code>EmailMessageByLink</code> blank. When you supply both parameters with either
    #               choice, Amazon Cognito returns an error.</p>
    # @option params [String] :sms_authentication_message
    #   <p>The contents of the SMS message that your user pool sends to users in SMS OTP and MFA
    #               authentication.</p>
    # @option params [String] :mfa_configuration
    #   <p>Sets multi-factor authentication (MFA) to be on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    #            <p>The <code>CreateUserPool</code> operation supports only SMS MFA configuration. If you
    #               set <code>MfaConfiguration</code> to either of these values, include an
    #                   <code>SmsConfiguration</code> in the same request:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ON</code> – Requires MFA for all users</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OPTIONAL</code> – Makes MFA optional for each user</p>
    #               </li>
    #            </ul>
    #            <p>If you omit <code>SmsConfiguration</code>, the operation returns an
    #                   <code>InvalidParameterException</code>. To configure TOTP or email MFA, use the <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_SetUserPoolMfaConfig.html">SetUserPoolMfaConfig</a> operation. You can also use
    #                   <code>SetUserPoolMfaConfig</code> to add MFA factors later.</p>
    # @option params [Types::UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to email addresses and phone numbers</a>.</p>
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   <p>The device-remembering configuration for a user pool. Device remembering or device
    #               tracking is a "Remember me on this device" option for user pools that perform
    #               authentication with the device key of a trusted device in the back end, instead of a
    #               user-provided MFA code. For more information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>. A null value indicates that
    #               you have deactivated device remembering in your user pool.</p>
    #            <note>
    #               <p>When you provide a value for any <code>DeviceConfiguration</code> field, you
    #                   activate the Amazon Cognito device-remembering feature. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #            </note>
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for messages from your user
    #               pool.</p>
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   <p>The settings for your Amazon Cognito user pool to send SMS messages with Amazon Simple Notification Service. To send SMS
    #               messages with Amazon SNS in the Amazon Web Services Region that you want, the Amazon Cognito user pool uses an
    #               Identity and Access Management (IAM) role in your Amazon Web Services account. For more information see
    #                   <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html">SMS message settings</a>.</p>
    # @option params [Hash<String, String>] :user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   <p>The configuration for administrative creation of users. Includes the template for the
    #               invitation message for new users, the duration of temporary passwords, and permitting
    #               self-service sign-up.</p>
    # @option params [Array<Types::SchemaAttributeType>] :schema
    #   <p>An array of attributes for the new user pool. You can add custom attributes and modify
    #               the properties of default attributes. The specifications in this parameter set the
    #               required attributes in your user pool. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-attributes.html">Working with user attributes</a>.</p>
    # @option params [Types::UserPoolAddOnsType] :user_pool_add_ons
    #   <p>Contains settings for activation of threat protection, including the operating
    #   mode and additional authentication types. To log user security information but take
    #   no action, set to <code>AUDIT</code>. To configure automatic security responses to
    #   potentially unwanted traffic to your user pool, set to <code>ENFORCED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html">Adding advanced security to a user pool</a>. To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                        Plus tier</a>.</p>
    # @option params [Types::UsernameConfigurationType] :username_configuration
    #   <p>Sets the case sensitivity option for sign-in usernames. When
    #                   <code>CaseSensitive</code> is <code>false</code> (case insensitive), users can sign
    #               in with any combination of capital and lowercase letters. For example,
    #                   <code>username</code>, <code>USERNAME</code>, or <code>UserName</code>, or for
    #               email, <code>email@example.com</code> or <code>EMaiL@eXamplE.Com</code>. For most use
    #               cases, set case sensitivity to <code>false</code> as a best practice. When usernames and
    #               email addresses are case insensitive, Amazon Cognito treats any variation in case as the same
    #               user, and prevents a case variation from being assigned to the same attribute for a
    #               different user.</p>
    #            <p>When <code>CaseSensitive</code> is <code>true</code> (case sensitive), Amazon Cognito
    #               interprets <code>USERNAME</code> and <code>UserName</code> as distinct users.</p>
    #            <p>This configuration is immutable after you set it.</p>
    # @option params [Types::AccountRecoverySettingType] :account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. Email MFA is also disqualifying for account recovery
    #               with email. In the absence of this setting, Amazon Cognito uses the legacy behavior to determine
    #               the recovery method where SMS is preferred over email.</p>
    #            <p>As a best practice, configure both <code>verified_email</code> and
    #                   <code>verified_phone_number</code>, with one having a higher priority than the
    #               other.</p>
    # @option params [String] :user_pool_tier
    #   <p>The user pool <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a>, or tier. This parameter determines the
    #               eligibility of the user pool for features like managed login, access-token
    #               customization, and threat protection. Defaults to <code>ESSENTIALS</code>.</p>
    # @option params [Types::KeyConfigurationType] :key_configuration
    #   <p>The key configuration for the user pool. Specifies the key type and KMS key ARN for
    #               encryption.</p>
    # @option params [Types::IssuerConfigurationType] :issuer_configuration
    #   <p>The issuer configuration for the user pool. Specifies the issuer type for token
    #               generation.</p>
    # @option params [Hash<String, Types::AcrLevelConfigType>] :acr_configuration
    #   <p>The custom names for the authentication context class reference
    #               (ACR) levels in your user pool. Amazon Cognito defines four fixed ACR levels that
    #               represent increasing authentication assurance. The combination of authentication factors
    #               that satisfies each level is fixed and you can't change it. With this configuration, you
    #               customize only the URI name that Amazon Cognito reports for each level in the
    #               <code>acr</code> token claim.</p>
    #            <p>You can override a subset of the levels. By default, the levels are named
    #               <code>urn:cognito:loa:1</code> through <code>urn:cognito:loa:4</code>, and Amazon Cognito
    #               applies the default name to any level that you don't specify. Each name must be
    #               unique across all four levels, including any default names that apply to levels you
    #               don't override. A name can contain any character
    #               that is valid in a URL or a URN.</p>
    #            <p>Configuring custom ACR level names requires the Essentials or Plus feature plan.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    # @example Example user pool with email and username sign-in
    #   # The following example creates a user pool with all configurable properties set to an example value. The resulting user pool allows sign-in with username or email address, has optional MFA, and has a Lambda function assigned to each possible trigger.
    #   params = {
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           name: verified_email,
    #           priority: 1
    #         }
    #       ]
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       invite_message_template: {
    #         email_message: "Your username is {username} and temporary password is {####}.",
    #         email_subject: "Your sign-in information",
    #         sms_message: "Your username is {username} and temporary password is {####}."
    #       }
    #     },
    #     alias_attributes: [
    #       email
    #     ],
    #     auto_verified_attributes: [
    #       email
    #     ],
    #     device_configuration: {
    #       challenge_required_on_new_device: true,
    #       device_only_remembered_on_user_prompt: true
    #     },
    #     deletion_protection: ACTIVE,
    #     email_configuration: {
    #       configuration_set: "my-test-ses-configuration-set",
    #       email_sending_account: DEVELOPER,
    #       from: "support@example.com",
    #       reply_to_email_address: "support@example.com",
    #       source_arn: "arn:aws:ses:us-east-1:123456789012:identity/support@example.com"
    #     },
    #     email_verification_message: "Your verification code is {####}.",
    #     email_verification_subject: "Verify your email address",
    #     lambda_config: {
    #       kms_key_id: "arn:aws:kms:us-east-1:123456789012:key/a6c4f8e2-0c45-47db-925f-87854bc9e357",
    #       custom_email_sender: {
    #         lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         lambda_version: V1_0
    #       },
    #       custom_sms_sender: {
    #         lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         lambda_version: V1_0
    #       },
    #       custom_message: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       define_auth_challenge: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       inbound_federation: {
    #         lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         lambda_version: V1_0
    #       },
    #       post_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       post_confirmation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       pre_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       pre_sign_up: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       pre_token_generation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       user_migration: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #       verify_auth_challenge_response: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction"
    #     },
    #     mfa_configuration: OPTIONAL,
    #     policies: {
    #       password_policy: {
    #         minimum_length: 6,
    #         require_lowercase: true,
    #         require_numbers: true,
    #         require_symbols: true,
    #         require_uppercase: true,
    #         temporary_password_validity_days: 7
    #       }
    #     },
    #     pool_name: "my-test-user-pool",
    #     schema: [
    #       {
    #         attribute_data_type: Number,
    #         developer_only_attribute: true,
    #         mutable: true,
    #         name: "mydev",
    #         number_attribute_constraints: {
    #           max_value: "99",
    #           min_value: "1"
    #         },
    #         required: false,
    #         string_attribute_constraints: {
    #           max_length: "99",
    #           min_length: "1"
    #         }
    #       }
    #     ],
    #     sms_authentication_message: "Your verification code is {####}.",
    #     sms_configuration: {
    #       external_id: "my-role-external-id",
    #       sns_caller_arn: "arn:aws:iam::123456789012:role/service-role/test-cognito-SMS-Role"
    #     },
    #     sms_verification_message: "Your verification code is {####}.",
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: [
    #         email
    #       ]
    #     },
    #     username_configuration: {
    #       case_sensitive: true
    #     },
    #     user_pool_add_ons: {
    #       advanced_security_mode: OFF
    #     },
    #     user_pool_tags: {
    #       "my-test-tag-key" => "my-test-tag-key"
    #     },
    #     verification_message_template: {
    #       default_email_option: CONFIRM_WITH_CODE,
    #       email_message: "Your confirmation code is {####}",
    #       email_message_by_link: "Choose this link to {##verify your email##}",
    #       email_subject: "Here is your confirmation code",
    #       email_subject_by_link: "Here is your confirmation link",
    #       sms_message: "Your confirmation code is {####}"
    #     }
    #   }
    #   options = {}
    #   response = client.create_user_pool(params, options)
    #   response.to_h #=>
    #   {
    #     user_pool: {
    #       account_recovery_setting: {
    #         recovery_mechanisms: [
    #           {
    #             name: verified_email,
    #             priority: 1
    #           }
    #         ]
    #       },
    #       admin_create_user_config: {
    #         allow_admin_create_user_only: false,
    #         invite_message_template: {
    #           email_message: "Your username is {username} and temporary password is {####}.",
    #           email_subject: "Your sign-in information",
    #           sms_message: "Your username is {username} and temporary password is {####}."
    #         },
    #         unused_account_validity_days: 7
    #       },
    #       alias_attributes: [
    #         email
    #       ],
    #       arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/us-east-1_EXAMPLE",
    #       auto_verified_attributes: [
    #         email
    #       ],
    #       creation_date: Time.parse(1689721665.239),
    #       deletion_protection: ACTIVE,
    #       device_configuration: {
    #         challenge_required_on_new_device: true,
    #         device_only_remembered_on_user_prompt: true
    #       },
    #       email_configuration: {
    #         configuration_set: "my-test-ses-configuration-set",
    #         email_sending_account: DEVELOPER,
    #         from: "support@example.com",
    #         reply_to_email_address: "support@example.com",
    #         source_arn: "arn:aws:ses:us-east-1:123456789012:identity/support@example.com"
    #       },
    #       email_verification_message: "Your verification code is {####}.",
    #       email_verification_subject: "Verify your email address",
    #       estimated_number_of_users: 0,
    #       id: "us-east-1_EXAMPLE",
    #       lambda_config: {
    #         custom_email_sender: {
    #           lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #           lambda_version: V1_0
    #         },
    #         custom_message: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         custom_sms_sender: {
    #           lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #           lambda_version: V1_0
    #         },
    #         define_auth_challenge: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         inbound_federation: {
    #           lambda_arn: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #           lambda_version: V1_0
    #         },
    #         kms_key_id: "arn:aws:kms:us-east-1:767671399759:key/4d43904c-8edf-4bb4-9fca-fb1a80e41cbe",
    #         post_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         post_confirmation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         pre_authentication: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         pre_sign_up: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         pre_token_generation: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         user_migration: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction",
    #         verify_auth_challenge_response: "arn:aws:lambda:us-east-1:123456789012:function:MyFunction"
    #       },
    #       last_modified_date: Time.parse(1689721665.239),
    #       mfa_configuration: OPTIONAL,
    #       name: "my-test-user-pool",
    #       policies: {
    #         password_policy: {
    #           minimum_length: 6,
    #           require_lowercase: true,
    #           require_numbers: true,
    #           require_symbols: true,
    #           require_uppercase: true,
    #           temporary_password_validity_days: 7
    #         }
    #       },
    #       schema_attributes: [
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: false,
    #           name: "sub",
    #           required: true,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "1"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "name",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "given_name",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "family_name",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "middle_name",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "nickname",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "preferred_username",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "profile",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "picture",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "website",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "email",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: Boolean,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "email_verified",
    #           required: false
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "gender",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "birthdate",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "10",
    #             min_length: "10"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "zoneinfo",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "locale",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "phone_number",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: Boolean,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "phone_number_verifie",
    #           required: false
    #         },
    #         {
    #           attribute_data_type: String,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "address",
    #           required: false,
    #           string_attribute_constraints: {
    #             max_length: "2048",
    #             min_length: "0"
    #           }
    #         },
    #         {
    #           attribute_data_type: Number,
    #           developer_only_attribute: false,
    #           mutable: true,
    #           name: "updated_at",
    #           number_attribute_constraints: {
    #             min_value: "0"
    #           },
    #           required: false
    #         },
    #         {
    #           attribute_data_type: Number,
    #           developer_only_attribute: true,
    #           mutable: true,
    #           name: "dev:custom:mydev",
    #           number_attribute_constraints: {
    #             max_value: "99",
    #             min_value: "1"
    #           },
    #           required: false
    #         }
    #       ],
    #       sms_authentication_message: "Your verification code is {####}.",
    #       sms_configuration: {
    #         external_id: "my-role-external-id",
    #         sns_caller_arn: "arn:aws:iam::123456789012:role/service-role/test-cognito-SMS-Role",
    #         sns_region: "us-east-1"
    #       },
    #       sms_verification_message: "Your verification code is {####}.",
    #       user_attribute_update_settings: {
    #         attributes_require_verification_before_update: [
    #           email
    #         ]
    #       },
    #       user_pool_add_ons: {
    #         advanced_security_mode: OFF
    #       },
    #       user_pool_tags: {
    #         "my-test-tag-key" => "my-test-tag-value"
    #       },
    #       username_configuration: {
    #         case_sensitive: true
    #       },
    #       verification_message_template: {
    #         default_email_option: CONFIRM_WITH_CODE,
    #         email_message: "Your confirmation code is {####}",
    #         email_message_by_link: "Choose this link to {##verify your email##}",
    #         email_subject: "Here is your confirmation code",
    #         email_subject_by_link: "Here is your confirmation link",
    #         sms_message: "Your confirmation code is {####}"
    #       }
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_name: "UserPoolNameType", # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         password_history_size: 1,
    #         temporary_password_validity_days: 1
    #       },
    #       sign_in_policy: {
    #         allowed_first_auth_factors: ["PASSWORD" # One of: ["PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN", "SOFTWARE_TOKEN"]]
    #       }
    #     },
    #     deletion_protection: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     lambda_config: {
    #       pre_sign_up: "ArnType",
    #       custom_message: "ArnType",
    #       post_confirmation: "ArnType",
    #       pre_authentication: "ArnType",
    #       post_authentication: "ArnType",
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #       pre_token_generation: "ArnType",
    #       user_migration: "ArnType",
    #       pre_token_generation_config: {
    #         lambda_version: "V1_0" # One of: ["V1_0", "V2_0", "V3_0"], # required
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_sms_sender: {
    #         lambda_version: "V1_0" # One of: ["V1_0"], # required
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: "V1_0" # One of: ["V1_0"], # required
    #         lambda_arn: "ArnType", # required
    #       },
    #       kms_key_id: "ArnType",
    #       inbound_federation: {
    #         lambda_version: "V1_0" # One of: ["V1_0"], # required
    #         lambda_arn: "ArnType", # required
    #       }
    #     },
    #     auto_verified_attributes: ["phone_number" # One of: ["phone_number", "email"]],
    #     alias_attributes: ["phone_number" # One of: ["phone_number", "email", "preferred_username"]],
    #     username_attributes: ["phone_number" # One of: ["phone_number", "email"]],
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     verification_message_template: {
    #       sms_message: "SmsVerificationMessageType",
    #       email_message: "EmailVerificationMessageType",
    #       email_subject: "EmailVerificationSubjectType",
    #       email_message_by_link: "EmailVerificationMessageByLinkType",
    #       email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #       default_email_option: "CONFIRM_WITH_LINK" # One of: ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #     },
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     mfa_configuration: "OFF" # One of: ["OFF", "ON", "OPTIONAL"],
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: ["phone_number" # One of: ["phone_number", "email"]]
    #     },
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #       email_sending_account: "COGNITO_DEFAULT" # One of: ["COGNITO_DEFAULT", "DEVELOPER"],
    #       from: "StringType",
    #       configuration_set: "SESConfigurationSet"
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "OptionalArnType",
    #       external_id: "StringType",
    #       sns_region: "RegionCodeType",
    #       eums_sms: {
    #         caller_arn: "ArnType", # required
    #         external_id: "StringType",
    #         origination_identity: "StringType",
    #         configuration_set_name: "StringType",
    #         in_entity_id: "StringType",
    #         in_template_id: "StringType",
    #         region: "RegionCodeType"
    #       }
    #     },
    #     user_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsInviteMessageType",
    #         email_message: "EmailInviteMessageType",
    #         email_subject: "EmailVerificationSubjectType"
    #       }
    #     },
    #     schema: [
    #       {
    #         name: "CustomAttributeNameType",
    #         attribute_data_type: "String" # One of: ["String", "Number", "DateTime", "Boolean"],
    #         developer_only_attribute: false,
    #         mutable: false,
    #         required: false,
    #         number_attribute_constraints: {
    #           min_value: "StringType",
    #           max_value: "StringType"
    #         },
    #         string_attribute_constraints: {
    #           min_length: "StringType",
    #           max_length: "StringType"
    #         }
    #       }
    #     ],
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF" # One of: ["OFF", "AUDIT", "ENFORCED"], # required
    #       advanced_security_additional_flows: {
    #         custom_auth_mode: "AUDIT" # One of: ["AUDIT", "ENFORCED"]
    #       }
    #     },
    #     username_configuration: {
    #       case_sensitive: false, # required
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: "verified_email" # One of: ["verified_email", "verified_phone_number", "admin_only"], # required
    #         }
    #       ]
    #     },
    #     user_pool_tier: "LITE" # One of: ["LITE", "ESSENTIALS", "PLUS"],
    #     key_configuration: {
    #       key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"],
    #       kms_key_arn: "EncryptionKeyArnType"
    #     },
    #     issuer_configuration: {
    #       type: "ORIGINAL" # One of: ["ORIGINAL", "UPDATED"]
    #     },
    #     acr_configuration: {
    #       "AcrLevelKeyType" => {
    #         acr_value: "AcrValueType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_user_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool: {
    #       id: "UserPoolIdType",
    #       name: "UserPoolNameType",
    #       policies: {
    #         password_policy: {
    #           minimum_length: 1,
    #           require_uppercase: false,
    #           require_lowercase: false,
    #           require_numbers: false,
    #           require_symbols: false,
    #           password_history_size: 1,
    #           temporary_password_validity_days: 1
    #         },
    #         sign_in_policy: {
    #           allowed_first_auth_factors: ["PASSWORD" # One of: ["PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN", "SOFTWARE_TOKEN"]]
    #         }
    #       },
    #       deletion_protection: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       lambda_config: {
    #         pre_sign_up: "ArnType",
    #         custom_message: "ArnType",
    #         post_confirmation: "ArnType",
    #         pre_authentication: "ArnType",
    #         post_authentication: "ArnType",
    #         define_auth_challenge: "ArnType",
    #         create_auth_challenge: "ArnType",
    #         verify_auth_challenge_response: "ArnType",
    #         pre_token_generation: "ArnType",
    #         user_migration: "ArnType",
    #         pre_token_generation_config: {
    #           lambda_version: "V1_0" # One of: ["V1_0", "V2_0", "V3_0"], # required
    #           lambda_arn: "ArnType", # required
    #         },
    #         custom_sms_sender: {
    #           lambda_version: "V1_0" # One of: ["V1_0"], # required
    #           lambda_arn: "ArnType", # required
    #         },
    #         custom_email_sender: {
    #           lambda_version: "V1_0" # One of: ["V1_0"], # required
    #           lambda_arn: "ArnType", # required
    #         },
    #         kms_key_id: "ArnType",
    #         inbound_federation: {
    #           lambda_version: "V1_0" # One of: ["V1_0"], # required
    #           lambda_arn: "ArnType", # required
    #         }
    #       },
    #       status: "Enabled" # One of: ["Enabled", "Disabled"],
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       schema_attributes: [
    #         {
    #           name: "CustomAttributeNameType",
    #           attribute_data_type: "String" # One of: ["String", "Number", "DateTime", "Boolean"],
    #           developer_only_attribute: false,
    #           mutable: false,
    #           required: false,
    #           number_attribute_constraints: {
    #             min_value: "StringType",
    #             max_value: "StringType"
    #           },
    #           string_attribute_constraints: {
    #             min_length: "StringType",
    #             max_length: "StringType"
    #           }
    #         }
    #       ],
    #       auto_verified_attributes: ["phone_number" # One of: ["phone_number", "email"]],
    #       alias_attributes: ["phone_number" # One of: ["phone_number", "email", "preferred_username"]],
    #       username_attributes: ["phone_number" # One of: ["phone_number", "email"]],
    #       sms_verification_message: "SmsVerificationMessageType",
    #       email_verification_message: "EmailVerificationMessageType",
    #       email_verification_subject: "EmailVerificationSubjectType",
    #       verification_message_template: {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #         email_message_by_link: "EmailVerificationMessageByLinkType",
    #         email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #         default_email_option: "CONFIRM_WITH_LINK" # One of: ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #       },
    #       sms_authentication_message: "SmsVerificationMessageType",
    #       user_attribute_update_settings: {
    #         attributes_require_verification_before_update: ["phone_number" # One of: ["phone_number", "email"]]
    #       },
    #       mfa_configuration: "OFF" # One of: ["OFF", "ON", "OPTIONAL"],
    #       device_configuration: {
    #         challenge_required_on_new_device: false,
    #         device_only_remembered_on_user_prompt: false
    #       },
    #       estimated_number_of_users: 1,
    #       email_configuration: {
    #         source_arn: "ArnType",
    #         reply_to_email_address: "EmailAddressType",
    #         email_sending_account: "COGNITO_DEFAULT" # One of: ["COGNITO_DEFAULT", "DEVELOPER"],
    #         from: "StringType",
    #         configuration_set: "SESConfigurationSet"
    #       },
    #       sms_configuration: {
    #         sns_caller_arn: "OptionalArnType",
    #         external_id: "StringType",
    #         sns_region: "RegionCodeType",
    #         eums_sms: {
    #           caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #           origination_identity: "StringType",
    #           configuration_set_name: "StringType",
    #           in_entity_id: "StringType",
    #           in_template_id: "StringType",
    #           region: "RegionCodeType"
    #         }
    #       },
    #       user_pool_tags: {
    #         "TagKeysType" => "TagValueType"
    #       },
    #       sms_configuration_failure: "StringType",
    #       email_configuration_failure: "StringType",
    #       domain: "DomainType",
    #       custom_domain: "DomainType",
    #       admin_create_user_config: {
    #         allow_admin_create_user_only: false,
    #         unused_account_validity_days: 1,
    #         invite_message_template: {
    #           sms_message: "SmsInviteMessageType",
    #           email_message: "EmailInviteMessageType",
    #           email_subject: "EmailVerificationSubjectType"
    #         }
    #       },
    #       user_pool_add_ons: {
    #         advanced_security_mode: "OFF" # One of: ["OFF", "AUDIT", "ENFORCED"], # required
    #         advanced_security_additional_flows: {
    #           custom_auth_mode: "AUDIT" # One of: ["AUDIT", "ENFORCED"]
    #         }
    #       },
    #       username_configuration: {
    #         case_sensitive: false, # required
    #       },
    #       arn: "ArnType",
    #       account_recovery_setting: {
    #         recovery_mechanisms: [
    #           {
    #             priority: 1, # required
    #             name: "verified_email" # One of: ["verified_email", "verified_phone_number", "admin_only"], # required
    #           }
    #         ]
    #       },
    #       user_pool_tier: "LITE" # One of: ["LITE", "ESSENTIALS", "PLUS"],
    #       key_configuration: {
    #         key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"],
    #         kms_key_arn: "EncryptionKeyArnType"
    #       },
    #       issuer_configuration: {
    #         type: "ORIGINAL" # One of: ["ORIGINAL", "UPDATED"]
    #       },
    #       acr_configuration: {
    #         "AcrLevelKeyType" => {
    #           acr_value: "AcrValueType", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::CreateUserPoolResponse]
    def create_user_pool(params = {}, options = {})
      request = build_request(:create_user_pool, params)
      request.send_request(options)
    end

    # <p>Creates an app client in a user pool. This operation sets basic and advanced
    #             configuration options.</p>
    #          <p>Unlike app clients created in the console, Amazon Cognito doesn't automatically assign a
    # branding style to app clients that you configure with this API operation. Managed login and classic hosted UI pages aren't
    # available for your client until after you apply a branding style.</p>
    #          <important>
    #             <p>If you don't provide a value for an attribute, Amazon Cognito sets it to its default value.</p>
    #          </important>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateUserPoolClientRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to create an app client.</p>
    # @option params [String] :client_name
    #   <p>A friendly name for the app client that you want to create.</p>
    # @option params [Boolean] :generate_secret
    #   <p>When <code>true</code>, generates a client secret for the app client. Client secrets
    #               are used with server-side and machine-to-machine applications. Client secrets are
    #               automatically generated; you can't specify a secret value. For more information,
    #               see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html#user-pool-settings-client-app-client-types">App client types</a>.</p>
    # @option params [String] :client_secret
    #   <p>A custom client secret that you want to use for the app client. You cannot specify both GenerateSecret as true and provide a ClientSecret value.</p>
    # @option params [Integer] :refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use
    #   their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.</p>
    #            <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days.
    #   You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the
    #   value with the default value of 30 days. <i>Valid range</i> is displayed below
    #   in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your refresh
    #   tokens are valid for 30 days.</p>
    # @option params [Integer] :access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use
    #   their access token. To specify the time unit for <code>AccessTokenValidity</code> as
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #   <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #   their access token for 10 hours.</p>
    #            <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your access
    #   tokens are valid for one hour.</p>
    # @option params [Integer] :id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use
    #   their ID token. To specify the time unit for <code>IdTokenValidity</code> as
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their
    #   session with their ID token for 10 hours.</p>
    #            <p>The default time unit for <code>IdTokenValidity</code> in an API request is hours.
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your ID
    #   tokens are valid for one hour.</p>
    # @option params [Types::TokenValidityUnitsType] :token_validity_units
    #   <p>The units that validity times are represented in. The default unit for refresh tokens
    #               is days, and the default for ID and access tokens are hours.</p>
    # @option params [Array<String>] :read_attributes
    #   <p>The list of user attributes that you want your app client to have read access to.
    #       After your user authenticates in your app, their access token authorizes them to read
    #       their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>ReadAttributes</code> for your app client, your
    #       app can read the values of <code>email_verified</code>,
    #       <code>phone_number_verified</code>, and the standard attributes of your user pool.
    #       When your user pool app client has read access to these default attributes,
    #       <code>ReadAttributes</code> doesn't return any information. Amazon Cognito only
    #       populates <code>ReadAttributes</code> in the API response if you have specified your own
    #       custom set of read attributes.</p>
    # @option params [Array<String>] :write_attributes
    #   <p>The list of user attributes that you want your app client to have write access to.
    #       After your user authenticates in your app, their access token authorizes them to set or
    #       modify their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>WriteAttributes</code> for your app client, your
    #       app can write the values of the Standard attributes of your user pool. When your user
    #       pool has write access to these default attributes, <code>WriteAttributes</code>
    #       doesn't return any information. Amazon Cognito only populates
    #           <code>WriteAttributes</code> in the API response if you have specified your own
    #       custom set of write attributes.</p>
    #            <p>If your app client allows users to sign in through an IdP, this array must include all
    #       attributes that you have mapped to IdP attributes. Amazon Cognito updates mapped attributes when
    #       users sign in to your application through an IdP. If your app client does not have write
    #       access to a mapped attribute, Amazon Cognito throws an error when it tries to update the
    #       attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying IdP Attribute Mappings for Your user
    #       pool</a>.</p>
    # @option params [Array<String>] :explicit_auth_flows
    #   <p>The <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html">authentication flows</a> that you want your user pool client to support. For each app
    #   client in your user pool, you can sign in your users with any combination of one or more flows, including with
    #   a user name and Secure Remote Password (SRP), a user name and password, or a custom authentication process that
    #   you define with Lambda functions.</p>
    #            <note>
    #               <p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your app client supports
    #   <code>ALLOW_REFRESH_TOKEN_AUTH</code>, <code>ALLOW_USER_SRP_AUTH</code>, and <code>ALLOW_CUSTOM_AUTH</code>.
    #   </p>
    #            </note>
    #            <p>The values for authentication flow options include the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_AUTH</code>: Enable selection-based sign-in
    #               with <code>USER_AUTH</code>. This setting covers username-password,
    #               secure remote password (SRP), passwordless, and passkey authentication.
    #               This authentiation flow can do username-password and SRP authentication
    #               without other <code>ExplicitAuthFlows</code> permitting them. For example
    #               users can complete an SRP challenge through <code>USER_AUTH</code>
    #               without the flow <code>USER_SRP_AUTH</code> being active for the app
    #               client. This flow doesn't include <code>CUSTOM_AUTH</code>.
    #           </p>
    #                  <p>To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #               authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #               the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, your app
    #               passes a user name and password to Amazon Cognito in the request, instead of using the Secure
    #               Remote Password (SRP) protocol to securely transmit the password.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #               authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #               authentication. In this flow, Amazon Cognito receives the password in the request instead
    #               of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #               tokens.</p>
    #               </li>
    #            </ul>
    #            <p>In some environments, you will see the values <code>ADMIN_NO_SRP_AUTH</code>, <code>CUSTOM_AUTH_FLOW_ONLY</code>, or <code>USER_PASSWORD_AUTH</code>.
    #   You can't assign these legacy <code>ExplicitAuthFlows</code> values to user pool clients at the same time as values that begin with <code>ALLOW_</code>,
    #   like <code>ALLOW_USER_SRP_AUTH</code>.</p>
    # @option params [Array<String>] :supported_identity_providers
    #   <p>A list of provider names for the identity providers (IdPs) that are supported on this
    #               client. The following are supported: <code>COGNITO</code>, <code>Facebook</code>,
    #               <code>Google</code>, <code>SignInWithApple</code>, and <code>LoginWithAmazon</code>.
    #               You can also specify the names that you configured for the SAML and OIDC IdPs in your
    #               user pool, for example <code>MySAMLIdP</code> or <code>MyOIDCIdP</code>.</p>
    #            <p>This parameter sets the IdPs that <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">managed
    #               login</a> will display on the login page for your app client. The removal of
    #               <code>COGNITO</code> from this list doesn't prevent authentication operations
    #               for local users with the user pools API in an Amazon Web Services SDK. The only way to prevent
    #               SDK-based authentication is to block access with a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html">WAF rule</a>.
    #           </p>
    # @option params [Array<String>] :callback_ur_ls
    #   <p>A list of allowed redirect, or callback, URLs for managed login authentication. These
    #               URLs are the paths where you want to send your users' browsers after they complete
    #               authentication with managed login or a third-party IdP. Typically, callback URLs are the
    #               home of an application that uses OAuth or OIDC libraries to process authentication
    #               outcomes.</p>
    #            <p>A redirect URI must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                  <p>Be registered with the authorization server. Amazon Cognito doesn't accept
    #                       authorization requests with <code>redirect_uri</code> values that aren't in
    #                       the list of <code>CallbackURLs</code> that you provide in this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #            <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #            <p>Amazon Cognito requires HTTPS over HTTP except for callback URLs to
    #                   <code>http://localhost</code>, <code>http://127.0.0.1</code> and
    #                   <code>http://[::1]</code>. These callback URLs are for testing purposes only. You
    #               can specify custom TCP ports for your callback URLs.</p>
    #            <p>App callback URLs such as <code>myapp://example</code> are also supported.</p>
    # @option params [Array<String>] :logout_ur_ls
    #   <p>A list of allowed logout URLs for managed login authentication. When you pass
    #                   <code>logout_uri</code> and <code>client_id</code> parameters to
    #                   <code>/logout</code>, Amazon Cognito signs out your user and redirects them to the logout
    #               URL. This parameter describes the URLs that you want to be the permitted targets of
    #                   <code>logout_uri</code>. A typical use of these URLs is when a user selects "Sign
    #               out" and you redirect them to your public homepage. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html">Logout
    #                   endpoint</a>.</p>
    # @option params [String] :default_redirect_uri
    #   <p>The default redirect URI. In app clients with one assigned IdP, replaces
    #                   <code>redirect_uri</code> in authentication requests. Must be in the
    #                   <code>CallbackURLs</code> list.</p>
    # @option params [Array<String>] :allowed_o_auth_flows
    #   <p>The OAuth grant types that you want your app client to generate for clients in managed
    #               login authentication. To create an app client that generates client credentials grants,
    #               you must add <code>client_credentials</code> as the only allowed OAuth flow.</p>
    #            <dl>
    #               <dt>code</dt>
    #               <dd>
    #                  <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #               </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                  <p>Issue the access token, and the ID token when scopes like
    #                               <code>openid</code> and <code>profile</code> are requested, directly to
    #                           your user.</p>
    #               </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                  <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user, authorized by a combination of the client ID
    #                           and client secret.</p>
    #               </dd>
    #            </dl>
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   <p>The OAuth, OpenID Connect (OIDC), and custom scopes that you want to permit your app
    #               client to authorize access with. Scopes govern access control to user pool self-service
    #               API operations, user data from the <code>userInfo</code> endpoint, and third-party APIs.
    #               Scope values include <code>phone</code>, <code>email</code>, <code>openid</code>, and
    #                   <code>profile</code>. The <code>aws.cognito.signin.user.admin</code> scope
    #               authorizes user self-service operations. Custom scopes with resource servers authorize
    #               access to external APIs.</p>
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   <p>Set to <code>true</code> to use OAuth 2.0 authorization server features in your app client.</p>
    #            <p>This parameter must have a value of <code>true</code> before you can configure
    #   the following features in your app client.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CallBackURLs</code>: Callback URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LogoutURLs</code>: Sign-out redirect URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthScopes</code>: OAuth 2.0 scopes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthFlows</code>: Support for authorization code, implicit, and client credentials OAuth 2.0 grants.</p>
    #               </li>
    #            </ul>
    #            <p>To use authorization server features, configure one of these features in the Amazon Cognito console or set
    #   <code>AllowedOAuthFlowsUserPoolClient</code> to <code>true</code> in a <code>CreateUserPoolClient</code> or
    #   <code>UpdateUserPoolClient</code> API request. If you don't set a value for
    #   <code>AllowedOAuthFlowsUserPoolClient</code> in a request with the CLI or SDKs, it defaults
    #   to <code>false</code>. When <code>false</code>, only SDK-based API sign-in is permitted.</p>
    # @option params [Types::AnalyticsConfigurationType] :analytics_configuration
    #   <p>The user pool analytics configuration for collecting metrics and sending them to your
    #               Amazon Pinpoint campaign.</p>
    #            <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools might not have access to
    #               analytics or might be configurable with campaigns in the US East (N. Virginia) Region. For
    #               more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html">Using Amazon Pinpoint analytics</a>.</p>
    # @option params [String] :prevent_user_existence_errors
    #   <p>When <code>ENABLED</code>, suppresses messages that might indicate a valid user exists
    #               when someone attempts sign-in. This parameters sets your preference for the errors and
    #               responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #               <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #            <p>Defaults to <code>LEGACY</code>.</p>
    # @option params [Boolean] :enable_token_revocation
    #   <p>Activates or deactivates <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html">token
    #                   revocation</a> in the target app client.</p>
    #            <p>If you don't include this parameter, token revocation is automatically activated for
    #               the new user pool client.</p>
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   <p>When <code>true</code>, your application can include additional
    #                   <code>UserContextData</code> in authentication requests. This data includes the IP
    #               address, and contributes to analysis by threat protection features. For more information
    #               about propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint">Adding session data to API requests</a>. If you don’t include this parameter,
    #               you can't send the source IP address to Amazon Cognito threat protection features. You can only
    #               activate <code>EnablePropagateAdditionalUserContextData</code> in an app client that has
    #               a client secret.</p>
    # @option params [Integer] :auth_session_validity
    #   <p>Amazon Cognito creates a session token for each API request in an authentication flow. <code>AuthSessionValidity</code> is the duration,
    #   in minutes, of that session token. Your user pool native user must respond to each authentication challenge before the session expires.</p>
    # @option params [Types::RefreshTokenRotationType] :refresh_token_rotation
    #   <p>The configuration of your app client for refresh token rotation. When enabled, your
    #               app client issues new ID, access, and refresh tokens when users renew their sessions
    #               with refresh tokens. When disabled, token refresh issues only ID and access
    #               tokens.</p>
    # @example Example user pool app client with email and username sign-in
    #   # The following example creates an app client with all configurable properties set to an example value. The resulting user pool client connects to an analytics client, allows sign-in with username and password, and has two external identity providers associated with it.
    #   params = {
    #     access_token_validity: 6,
    #     allowed_o_auth_flows: [
    #       code
    #     ],
    #     allowed_o_auth_flows_user_pool_client: true,
    #     allowed_o_auth_scopes: [
    #       "aws.cognito.signin.user.admin",
    #       "openid"
    #     ],
    #     analytics_configuration: {
    #       application_id: "d70b2ba36a8c4dc5a04a0451a31a1e12",
    #       external_id: "my-external-id",
    #       role_arn: "arn:aws:iam::123456789012:role/test-cognitouserpool-role",
    #       user_data_shared: true
    #     },
    #     callback_ur_ls: [
    #       "https://example.com",
    #       "http://localhost",
    #       "myapp://example"
    #     ],
    #     client_name: "my-test-app-client",
    #     default_redirect_uri: "https://example.com",
    #     explicit_auth_flows: [
    #       ALLOW_ADMIN_USER_PASSWORD_AUTH,
    #       ALLOW_USER_PASSWORD_AUTH,
    #       ALLOW_REFRESH_TOKEN_AUTH
    #     ],
    #     generate_secret: true,
    #     id_token_validity: 6,
    #     logout_ur_ls: [
    #       "https://example.com/logout"
    #     ],
    #     prevent_user_existence_errors: ENABLED,
    #     read_attributes: [
    #       "email",
    #       "address",
    #       "preferred_username"
    #     ],
    #     refresh_token_validity: 6,
    #     supported_identity_providers: [
    #       "SignInWithApple",
    #       "MySSO"
    #     ],
    #     token_validity_units: {
    #       access_token: hours,
    #       id_token: minutes,
    #       refresh_token: days
    #     },
    #     user_pool_id: "us-east-1_EXAMPLE",
    #     write_attributes: [
    #       "family_name",
    #       "email"
    #     ]
    #   }
    #   options = {}
    #   response = client.create_user_pool_client(params, options)
    #   response.to_h #=>
    #   {
    #     user_pool_client: {
    #       access_token_validity: 6,
    #       allowed_o_auth_flows: [
    #         code
    #       ],
    #       allowed_o_auth_flows_user_pool_client: true,
    #       allowed_o_auth_scopes: [
    #         "aws.cognito.signin.user.admin",
    #         "openid"
    #       ],
    #       analytics_configuration: {
    #         application_id: "d70b2ba36a8c4dc5a04a0451a31a1e12",
    #         external_id: "my-external-id",
    #         role_arn: "arn:aws:iam::123456789012:role/test-cognitouserpool-role",
    #         user_data_shared: true
    #       },
    #       auth_session_validity: 3,
    #       callback_ur_ls: [
    #         "https://example.com",
    #         "http://localhost",
    #         "myapp://example"
    #       ],
    #       client_id: "26cb2c60kq7nbmas7rbme9b6pp",
    #       client_name: "my-test-app-client",
    #       client_secret: "13ka4h7u28d9oo44tqpq9djqsfvhvu8rk4d2ighvpu0k8fj1c2r9",
    #       creation_date: Time.parse(1689885426.107),
    #       default_redirect_uri: "https://example.com",
    #       enable_propagate_additional_user_context_data: false,
    #       enable_token_revocation: true,
    #       explicit_auth_flows: [
    #         ALLOW_USER_PASSWORD_AUTH,
    #         ALLOW_ADMIN_USER_PASSWORD_AUTH,
    #         ALLOW_REFRESH_TOKEN_AUTH
    #       ],
    #       id_token_validity: 6,
    #       last_modified_date: Time.parse(1689885426.107),
    #       logout_ur_ls: [
    #         "https://example.com/logout"
    #       ],
    #       prevent_user_existence_errors: ENABLED,
    #       read_attributes: [
    #         "address",
    #         "preferred_username",
    #         "email"
    #       ],
    #       refresh_token_validity: 6,
    #       supported_identity_providers: [
    #         "SignInWithApple",
    #         "MySSO"
    #       ],
    #       token_validity_units: {
    #         access_token: hours,
    #         id_token: minutes,
    #         refresh_token: days
    #       },
    #       user_pool_id: "us-east-1_EXAMPLE",
    #       write_attributes: [
    #         "family_name",
    #         "email"
    #       ]
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_name: "ClientNameType", # required
    #     generate_secret: false,
    #     client_secret: "ClientSecretType",
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #       id_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #       refresh_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"]
    #     },
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH" # One of: ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"]],
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_ur_ls: ["RedirectUrlType"],
    #     logout_ur_ls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code" # One of: ["code", "implicit", "client_credentials"]],
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: "HexStringType",
    #       application_arn: "ArnType",
    #       role_arn: "ArnType",
    #       external_id: "StringType",
    #       user_data_shared: false
    #     },
    #     prevent_user_existence_errors: "LEGACY" # One of: ["LEGACY", "ENABLED"],
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false,
    #     auth_session_validity: 1,
    #     refresh_token_rotation: {
    #       feature: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       retry_grace_period_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.create_user_pool_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_client: {
    #       user_pool_id: "UserPoolIdType",
    #       client_name: "ClientNameType",
    #       client_id: "ClientIdType",
    #       client_secret: "ClientSecretType",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       refresh_token_validity: 1,
    #       access_token_validity: 1,
    #       id_token_validity: 1,
    #       token_validity_units: {
    #         access_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #         id_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #         refresh_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"]
    #       },
    #       read_attributes: ["ClientPermissionType"],
    #       write_attributes: ["ClientPermissionType"],
    #       explicit_auth_flows: ["ADMIN_NO_SRP_AUTH" # One of: ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"]],
    #       supported_identity_providers: ["ProviderNameType"],
    #       callback_ur_ls: ["RedirectUrlType"],
    #       logout_ur_ls: ["RedirectUrlType"],
    #       default_redirect_uri: "RedirectUrlType",
    #       allowed_o_auth_flows: ["code" # One of: ["code", "implicit", "client_credentials"]],
    #       allowed_o_auth_scopes: ["ScopeType"],
    #       allowed_o_auth_flows_user_pool_client: false,
    #       analytics_configuration: {
    #         application_id: "HexStringType",
    #         application_arn: "ArnType",
    #         role_arn: "ArnType",
    #         external_id: "StringType",
    #         user_data_shared: false
    #       },
    #       prevent_user_existence_errors: "LEGACY" # One of: ["LEGACY", "ENABLED"],
    #       enable_token_revocation: false,
    #       enable_propagate_additional_user_context_data: false,
    #       auth_session_validity: 1,
    #       refresh_token_rotation: {
    #         feature: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         retry_grace_period_seconds: 1
    #       }
    #     }
    #   }
    # @return [Types::CreateUserPoolClientResponse]
    def create_user_pool_client(params = {}, options = {})
      request = build_request(:create_user_pool_client, params)
      request.send_request(options)
    end

    # <p>A user pool domain hosts managed login, an authorization server and web server for
    #             authentication in your application. This operation creates a new user pool prefix domain
    #             or custom domain and sets the managed login branding version. Set the branding version
    #             to <code>1</code> for hosted UI (classic) or <code>2</code> for managed login. When you
    #             choose a custom domain, you must provide an SSL certificate in the US East (N. Virginia)
    #             Amazon Web Services Region in your request.</p>
    #          <p>Your prefix domain might take up to one minute to take effect. Your custom domain is
    #             online within five minutes, but it can take up to one hour to distribute your SSL
    #             certificate.</p>
    #          <p>For more information about adding a custom domain to your user pool, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">Configuring a user pool domain</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateUserPoolDomainRequest] params
    # @option params [String] :domain
    #   <p>The domain string. For custom domains, this is the fully-qualified domain name, such
    #               as <code>auth.example.com</code>. For prefix domains, this is the prefix alone, such as
    #                   <code>myprefix</code>. A prefix value of <code>myprefix</code> for a user pool in
    #               the <code>us-east-1</code> Region results in a domain of
    #                   <code>myprefix.auth.us-east-1.amazoncognito.com</code>.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to add a domain.</p>
    # @option params [Integer] :managed_login_version
    #   <p>The version of managed login branding that you want to apply to your domain. A value
    #               of <code>1</code> indicates hosted UI (classic) and a version of <code>2</code>
    #               indicates managed login.</p>
    #            <p>Managed login requires that your user pool be configured for any <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a> other than <code>Lite</code>.</p>
    #            <p>A <code>ManagedLoginVersion</code> value of <code>2</code> does not activate managed
    #               login pages for your app client. When you create an app client programmatically,
    #               your app client has no branding style. To use managed login, create a branding style
    #               using the <a href="https://docs.aws.amazon.com/cognito-user-identity-pools/latest/APIReference/API_CreateManagedLoginBranding.html">CreateManagedLoginBranding</a> operation. When you use the console, Amazon Cognito assigns
    #               a default branding style automatically. When you use the API or an SDK, you must create a
    #               branding style yourself.</p>
    # @option params [Types::CustomDomainConfigType] :custom_domain_config
    #   <p>The configuration for a custom domain. Configures your domain with an Certificate Manager
    #               certificate in the <code>us-east-1</code> Region.</p>
    #            <p>Provide this parameter only if you want to use a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">custom domain</a> for your user pool. Otherwise, you can
    #               omit this parameter and use a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-assign-domain-prefix.html">prefix domain</a> instead.</p>
    #            <p>When you create a custom domain, the passkey RP ID defaults to the custom domain. If
    #               you had a prefix domain active, this will cause passkey integration for your prefix
    #               domain to stop working due to a mismatch in RP ID. To keep the prefix domain passkey
    #               integration working, you can explicitly set RP ID to the prefix domain.</p>
    # @option params [Types::RoutingType] :routing
    #   <p>The configuration of routing for requests to the domain for replicas of a replicated user pool.
    #               The routing configuration is currently only supported for custom domains.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     managed_login_version: 1,
    #     custom_domain_config: {
    #       certificate_arn: "ArnType", # required
    #       security_policy: "TLS_V1" # One of: ["TLS_V1", "TLS_V1_2_2021", "TLS_V1_3_2025"]
    #     },
    #     routing: {
    #       failover: {
    #         secondary_region: "RegionNameType", # required
    #         primary_route53_health_check_id: "HealthCheckIdType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.create_user_pool_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_login_version: 1,
    #     cloud_front_domain: "DomainType",
    #     routing: {
    #       failover: {
    #         secondary_region: "RegionNameType", # required
    #         primary_route53_health_check_id: "HealthCheckIdType", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateUserPoolDomainResponse]
    def create_user_pool_domain(params = {}, options = {})
      request = build_request(:create_user_pool_domain, params)
      request.send_request(options)
    end

    # <p>Creates a replica of an existing user pool in a specified Amazon Web Services Region. The replica
    #             enables multi-region replication for high availability and disaster recovery. To create
    #             a replica, you must have permissions to create user pools in the target Region.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateUserPoolReplicaRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool to replicate.</p>
    # @option params [String] :region_name
    #   <p>The Amazon Web Services Region where you want to create the replica user pool.</p>
    # @option params [Hash<String, String>] :user_pool_tags
    #   <p>A map of tags to assign to the replica user pool. Each tag consists of a key and an
    #               optional value, both of which you define. You can maintain tags independently on replica
    #               user pools.</p>
    # @example Example create a replica of a user pool in a new Region
    #   # The following example creates a replica of a user pool in the ap-south-1 Region.
    #   params = {
    #     user_pool_id: "us-east-1_abcd12345",
    #     region_name: "ap-south-1"
    #   }
    #   options = {}
    #   response = client.create_user_pool_replica(params, options)
    #   response.to_h #=>
    #   {
    #     user_pool_replica: {
    #       region_name: "ap-south-1",
    #       status: CREATING,
    #       role: SECONDARY,
    #       user_pool_arn: "arn:aws:cognito-idp:ap-south-1:123456789012:userpool/us-east-1_abcd12345"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     region_name: "RegionNameType", # required
    #     user_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    #   options = {}
    #   response = client.create_user_pool_replica(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_replica: {
    #       region_name: "RegionNameType",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE", "DELETING"],
    #       role: "PRIMARY" # One of: ["PRIMARY", "SECONDARY"],
    #       user_pool_arn: "ArnType"
    #     }
    #   }
    # @return [Types::CreateUserPoolReplicaResponse]
    def create_user_pool_replica(params = {}, options = {})
      request = build_request(:create_user_pool_replica, params)
      request.send_request(options)
    end

    # <p>Deletes a group from the specified user pool. When you delete a group, that group no
    #             longer contributes to users' <code>cognito:preferred_group</code> or
    #                 <code>cognito:groups</code> claims, and no longer influence access-control decision
    #             that are based on group membership. For more information about user pool groups, see
    #                 <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html">Adding groups to a user pool</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group that you want to delete.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_group(params = {}, options = {})
      request = build_request(:delete_group, params)
      request.send_request(options)
    end

    # <p>Deletes a user pool identity provider (IdP). After you delete an IdP, users can no
    #             longer sign in to your user pool through that IdP. For more information about user pool
    #             IdPs, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html">Third-party IdP sign-in</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteIdentityProviderRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the identity provider.</p>
    # @option params [String] :provider_name
    #   <p>The name of the IdP that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_identity_provider(params = {}, options = {})
      request = build_request(:delete_identity_provider, params)
      request.send_request(options)
    end

    # <p>Deletes a managed login branding style. When you delete a style, you delete the
    #             branding association for an app client. When an app client doesn't have a style
    #             assigned, your managed login pages for that app client are nonfunctional until you
    #             create a new style or switch the domain branding version.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteManagedLoginBrandingRequest] params
    # @option params [String] :managed_login_branding_id
    #   <p>The ID of the managed login branding style that you want to delete.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the managed login branding style that you want
    #               to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     managed_login_branding_id: "ManagedLoginBrandingIdType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_managed_login_branding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_managed_login_branding(params = {}, options = {})
      request = build_request(:delete_managed_login_branding, params)
      request.send_request(options)
    end

    # <p>Deletes a resource server. After you delete a resource server, users can no longer
    #             generate access tokens with scopes that are associate with that resource server.</p>
    #          <p>Resource servers are associated with custom scopes and machine-to-machine (M2M)
    #             authorization. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html">Access control with resource servers</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteResourceServerRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the resource server.</p>
    # @option params [String] :identifier
    #   <p>The identifier of the resource server that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_resource_server(params = {}, options = {})
      request = build_request(:delete_resource_server, params)
      request.send_request(options)
    end

    # <p>Deletes the terms documents with the requested ID from your app client.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteTermsRequest] params
    # @option params [String] :terms_id
    #   <p>The ID of the terms documents that you want to delete.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the terms documents that you want to
    #               delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     terms_id: "TermsIdType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_terms(params = {}, options = {})
      request = build_request(:delete_terms, params)
      request.send_request(options)
    end

    # <p>Deletes the profile of the currently signed-in user. A deleted user profile can no
    #             longer be used to sign in and can't be restored.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::DeleteUserRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.delete_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user(params = {}, options = {})
      request = build_request(:delete_user, params)
      request.send_request(options)
    end

    # <p>Deletes attributes from the currently signed-in user. For example, your application
    #             can submit a request to this operation when a user wants to remove their
    #                 <code>birthdate</code> attribute value.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::DeleteUserAttributesRequest] params
    # @option params [Array<String>] :user_attribute_names
    #   <p>An array of strings representing the user attribute names you want to delete.</p>
    #            <p>For custom attributes, you must prepend the <code>custom:</code> prefix to the
    #               attribute name, for example <code>custom:department</code>.</p>
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_attribute_names: ["AttributeNameType"], # required
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserAttributesResponse]
    def delete_user_attributes(params = {}, options = {})
      request = build_request(:delete_user_attributes, params)
      request.send_request(options)
    end

    # <p>Deletes a user pool. After you delete a user pool, users can no longer sign in to any
    #             associated applications. </p>
    #          <p>When you delete a user pool, it's no longer visible or operational in your Amazon Web Services account. Amazon Cognito retains deleted user pools in an inactive state for 14
    #             days, then begins a cleanup process that fully removes them from Amazon Web Services systems. In case
    #             of accidental deletion, contact Amazon Web Services Support within 14 days for restoration
    #             assistance.</p>
    #          <p>Amazon Cognito begins full deletion of all resources from deleted user pools after 14 days. In
    #             the case of large user pools, the cleanup process might take significant additional time
    #             before all user data is permanently deleted.</p>
    # @param [Hash, Types::DeleteUserPoolRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user_pool(params = {}, options = {})
      request = build_request(:delete_user_pool, params)
      request.send_request(options)
    end

    # <p>Deletes a user pool app client. After you delete an app client, users can no longer
    #             sign in to the associated application.</p>
    # @param [Hash, Types::DeleteUserPoolClientRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the client.</p>
    # @option params [String] :client_id
    #   <p>The ID of the user pool app client that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_pool_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_user_pool_client(params = {}, options = {})
      request = build_request(:delete_user_pool_client, params)
      request.send_request(options)
    end

    # <p>Deletes a specific client secret from a user pool app client. You cannot delete the last remaining secret for an app client.</p>
    # @param [Hash, Types::DeleteUserPoolClientSecretRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the app client.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client from which you want to delete the secret.</p>
    # @option params [String] :client_secret_id
    #   <p>The unique identifier of the client secret you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     client_secret_id: "ClientSecretIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_pool_client_secret(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserPoolClientSecretResponse]
    def delete_user_pool_client_secret(params = {}, options = {})
      request = build_request(:delete_user_pool_client_secret, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID and domain identifier, deletes a user pool domain. After you
    #             delete a user pool domain, your managed login pages and authorization server are no
    #             longer available.</p>
    # @param [Hash, Types::DeleteUserPoolDomainRequest] params
    # @option params [String] :domain
    #   <p>The domain that you want to delete. For custom domains, this is the fully-qualified
    #               domain name like <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is the
    #               prefix alone, like <code>myprefix</code>.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to delete the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_pool_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteUserPoolDomainResponse]
    def delete_user_pool_domain(params = {}, options = {})
      request = build_request(:delete_user_pool_domain, params)
      request.send_request(options)
    end

    # <p>Deletes a secondary replica user pool. You can only delete replicas that are in the
    #             INACTIVE status. This operation must be called from the primary Region.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DeleteUserPoolReplicaRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the replica to delete.</p>
    # @option params [String] :region_name
    #   <p>The Amazon Web Services Region of the replica to delete.</p>
    # @example Example delete a user pool replica
    #   # The following example deletes a user pool replica in the us-east-2 Region.
    #   params = {
    #     user_pool_id: "us-west-2_abcd12345",
    #     region_name: "us-east-2"
    #   }
    #   options = {}
    #   response = client.delete_user_pool_replica(params, options)
    #   response.to_h #=>
    #   {
    #     user_pool_replica: {
    #       region_name: "us-east-2",
    #       status: DELETING,
    #       role: SECONDARY,
    #       user_pool_arn: "arn:aws:cognito-idp:us-east-2:123456789012:userpool/us-west-2_abcd12345"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     region_name: "RegionNameType", # required
    #   }
    #   options = {}
    #   response = client.delete_user_pool_replica(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_replica: {
    #       region_name: "RegionNameType",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE", "DELETING"],
    #       role: "PRIMARY" # One of: ["PRIMARY", "SECONDARY"],
    #       user_pool_arn: "ArnType"
    #     }
    #   }
    # @return [Types::DeleteUserPoolReplicaResponse]
    def delete_user_pool_replica(params = {}, options = {})
      request = build_request(:delete_user_pool_replica, params)
      request.send_request(options)
    end

    # <p>Deletes a registered passkey, or WebAuthn, authenticator for the currently signed-in
    #             user.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::DeleteWebAuthnCredentialRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :credential_id
    #   <p>The unique identifier of the passkey that you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     credential_id: "StringType", # required
    #   }
    #   options = {}
    #   response = client.delete_web_authn_credential(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteWebAuthnCredentialResponse]
    def delete_web_authn_credential(params = {}, options = {})
      request = build_request(:delete_web_authn_credential, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID and identity provider (IdP) name, returns details about the
    #             IdP.</p>
    # @param [Hash, Types::DescribeIdentityProviderRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that has the IdP that you want to describe..</p>
    # @option params [String] :provider_name
    #   <p>The name of the IdP that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #   }
    #   options = {}
    #   response = client.describe_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider: { # required
    #       user_pool_id: "UserPoolIdType",
    #       provider_name: "ProviderNameType",
    #       provider_type: "SAML" # One of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"],
    #       provider_details: {
    #         "StringType" => "StringType"
    #       },
    #       attribute_mapping: {
    #         "AttributeMappingKeyType" => "StringType"
    #       },
    #       idp_identifiers: ["IdpIdentifierType"],
    #       acr_mapping: {
    #         "AcrMappingKeyType" => "AcrValueType"
    #       },
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeIdentityProviderResponse]
    def describe_identity_provider(params = {}, options = {})
      request = build_request(:describe_identity_provider, params)
      request.send_request(options)
    end

    # <p>Given the ID of a managed login branding style, returns detailed information about the
    #             style.</p>
    # @param [Hash, Types::DescribeManagedLoginBrandingRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the managed login branding style that you want
    #               to get information about.</p>
    # @option params [String] :managed_login_branding_id
    #   <p>The ID of the managed login branding style that you want to get more information
    #               about.</p>
    # @option params [Boolean] :return_merged_resources
    #   <p>When <code>true</code>, returns values for branding options that are unchanged from
    #               Amazon Cognito defaults. When <code>false</code> or when you omit this parameter, returns only
    #               values that you customized in your branding style.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     managed_login_branding_id: "ManagedLoginBrandingIdType", # required
    #     return_merged_resources: false
    #   }
    #   options = {}
    #   response = client.describe_managed_login_branding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_login_branding: {
    #       managed_login_branding_id: "ManagedLoginBrandingIdType",
    #       user_pool_id: "UserPoolIdType",
    #       use_cognito_provided_values: false,
    #       settings: ""null"",
    #       assets: [
    #         {
    #           category: "FAVICON_ICO" # One of: ["FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"], # required
    #           color_mode: "LIGHT" # One of: ["LIGHT", "DARK", "DYNAMIC"], # required
    #           extension: "ICO" # One of: ["ICO", "JPEG", "PNG", "SVG", "WEBP"], # required
    #           bytes: "data",
    #           resource_id: "ResourceIdType"
    #         }
    #       ],
    #       creation_date: Time.now,
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeManagedLoginBrandingResponse]
    def describe_managed_login_branding(params = {}, options = {})
      request = build_request(:describe_managed_login_branding, params)
      request.send_request(options)
    end

    # <p>Given the ID of a user pool app client, returns detailed information about the style
    #             assigned to the app client.</p>
    # @param [Hash, Types::DescribeManagedLoginBrandingByClientRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the app client where you want more information
    #               about the managed login branding style.</p>
    # @option params [String] :client_id
    #   <p>The app client that's assigned to the branding style that you want more information
    #               about.</p>
    # @option params [Boolean] :return_merged_resources
    #   <p>When <code>true</code>, returns values for branding options that are unchanged from
    #               Amazon Cognito defaults. When <code>false</code> or when you omit this parameter, returns only
    #               values that you customized in your branding style.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     return_merged_resources: false
    #   }
    #   options = {}
    #   response = client.describe_managed_login_branding_by_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_login_branding: {
    #       managed_login_branding_id: "ManagedLoginBrandingIdType",
    #       user_pool_id: "UserPoolIdType",
    #       use_cognito_provided_values: false,
    #       settings: ""null"",
    #       assets: [
    #         {
    #           category: "FAVICON_ICO" # One of: ["FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"], # required
    #           color_mode: "LIGHT" # One of: ["LIGHT", "DARK", "DYNAMIC"], # required
    #           extension: "ICO" # One of: ["ICO", "JPEG", "PNG", "SVG", "WEBP"], # required
    #           bytes: "data",
    #           resource_id: "ResourceIdType"
    #         }
    #       ],
    #       creation_date: Time.now,
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeManagedLoginBrandingByClientResponse]
    def describe_managed_login_branding_by_client(params = {}, options = {})
      request = build_request(:describe_managed_login_branding_by_client, params)
      request.send_request(options)
    end

    # <p>Describes a resource server. For more information about resource servers, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html">Access control with resource servers</a>.</p>
    # @param [Hash, Types::DescribeResourceServerRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that hosts the resource server.</p>
    # @option params [String] :identifier
    #   <p>A unique resource server identifier for the resource server. The identifier can be an
    #               API friendly name like <code>solar-system-data</code>. You can also set an API URL like
    #                   <code>https://solar-system-data-api.example.com</code> as your identifier.</p>
    #            <p>Amazon Cognito represents scopes in the access token in the format
    #                   <code>$resource-server-identifier/$scope</code>. Longer scope-identifier strings
    #               increase the size of your access tokens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #   }
    #   options = {}
    #   response = client.describe_resource_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_server: { # required
    #       user_pool_id: "UserPoolIdType",
    #       identifier: "ResourceServerIdentifierType",
    #       name: "ResourceServerNameType",
    #       scopes: [
    #         {
    #           scope_name: "ResourceServerScopeNameType", # required
    #           scope_description: "ResourceServerScopeDescriptionType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::DescribeResourceServerResponse]
    def describe_resource_server(params = {}, options = {})
      request = build_request(:describe_resource_server, params)
      request.send_request(options)
    end

    # <p>Given an app client or user pool ID where threat protection is configured, describes
    #             the risk configuration. This operation returns details about adaptive authentication,
    #             compromised credentials, and IP-address allow- and denylists. For more information about
    #             threat protection, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-threat-protection.html">Threat protection</a>.</p>
    # @param [Hash, Types::DescribeRiskConfigurationRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool with the risk configuration that you want to inspect. You can
    #               apply default risk configuration at the user pool level and further customize it from
    #               user pool defaults at the app-client level. Specify <code>ClientId</code> to inspect
    #               client-level configuration, or <code>UserPoolId</code> to inspect pool-level
    #               configuration.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client with the risk configuration that you want to inspect. You can
    #               apply default risk configuration at the user pool level and further customize it from
    #               user pool defaults at the app-client level. Specify <code>ClientId</code> to inspect
    #               client-level configuration, or <code>UserPoolId</code> to inspect pool-level
    #               configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType"
    #   }
    #   options = {}
    #   response = client.describe_risk_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     risk_configuration: { # required
    #       user_pool_id: "UserPoolIdType",
    #       client_id: "ClientIdType",
    #       compromised_credentials_risk_configuration: {
    #         event_filter: ["SIGN_IN" # One of: ["SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"]],
    #         actions: { # required
    #           event_action: "BLOCK" # One of: ["BLOCK", "NO_ACTION"], # required
    #         }
    #       },
    #       account_takeover_risk_configuration: {
    #         notify_configuration: {
    #           from: "StringType",
    #           reply_to: "StringType",
    #           source_arn: "ArnType", # required
    #           block_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType"
    #           },
    #           no_action_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType"
    #           },
    #           mfa_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType"
    #           }
    #         },
    #         actions: { # required
    #           low_action: {
    #             notify: false, # required
    #             event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #           },
    #           medium_action: {
    #             notify: false, # required
    #             event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #           },
    #           high_action: {
    #             notify: false, # required
    #             event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #           }
    #         }
    #       },
    #       risk_exception_configuration: {
    #         blocked_ip_range_list: ["StringType"],
    #         skipped_ip_range_list: ["StringType"]
    #       },
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::DescribeRiskConfigurationResponse]
    def describe_risk_configuration(params = {}, options = {})
      request = build_request(:describe_risk_configuration, params)
      request.send_request(options)
    end

    # <p>Returns details for the requested terms documents ID. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents">Terms documents</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeTermsRequest] params
    # @option params [String] :terms_id
    #   <p>The ID of the terms documents that you want to describe.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the terms documents that you want to
    #               describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     terms_id: "TermsIdType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.describe_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terms: {
    #       terms_id: "TermsIdType", # required
    #       user_pool_id: "UserPoolIdType", # required
    #       client_id: "ClientIdType", # required
    #       terms_name: "TermsNameType", # required
    #       terms_source: "LINK" # One of: ["LINK"], # required
    #       enforcement: "NONE" # One of: ["NONE"], # required
    #       links: { # required
    #         "LanguageIdType" => "LinkUrlType"
    #       },
    #       creation_date: Time.now, # required
    #       last_modified_date: Time.now, # required
    #     }
    #   }
    # @return [Types::DescribeTermsResponse]
    def describe_terms(params = {}, options = {})
      request = build_request(:describe_terms, params)
      request.send_request(options)
    end

    # <p>Returns details for the terms documents that are associated with an app client,
    #             identified by the app client ID, user pool ID, and terms name. For
    #             more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents">Terms documents</a>.</p>
    #          <p>To call <code>DescribeTermsByClient</code>, you must have the
    #             <code>cognito-idp:DescribeTermsByClient</code> Identity and Access Management (IAM) permission. An IAM
    #             policy that denies <code>cognito-idp:DescribeTerms</code> also denies requests to
    #             <code>DescribeTermsByClient</code>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeTermsByClientRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the app client that the terms documents are associated with.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the terms documents that you want to
    #               describe.</p>
    # @option params [String] :terms_name
    #   <p>The name of the terms documents that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     terms_name: "TermsNameType", # required
    #   }
    #   options = {}
    #   response = client.describe_terms_by_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terms: {
    #       terms_id: "TermsIdType", # required
    #       user_pool_id: "UserPoolIdType", # required
    #       client_id: "ClientIdType", # required
    #       terms_name: "TermsNameType", # required
    #       terms_source: "LINK" # One of: ["LINK"], # required
    #       enforcement: "NONE" # One of: ["NONE"], # required
    #       links: { # required
    #         "LanguageIdType" => "LinkUrlType"
    #       },
    #       creation_date: Time.now, # required
    #       last_modified_date: Time.now, # required
    #     }
    #   }
    # @return [Types::DescribeTermsByClientResponse]
    def describe_terms_by_client(params = {}, options = {})
      request = build_request(:describe_terms_by_client, params)
      request.send_request(options)
    end

    # <p>Describes a user import job. For more information about user CSV import, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html">Importing users from a CSV file</a>.</p>
    # @param [Hash, Types::DescribeUserImportJobRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that's associated with the import job.</p>
    # @option params [String] :job_id
    #   <p>The Id of the user import job that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   }
    #   options = {}
    #   response = client.describe_user_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_import_job: {
    #       job_name: "UserImportJobNameType",
    #       job_id: "UserImportJobIdType",
    #       user_pool_id: "UserPoolIdType",
    #       pre_signed_url: "PreSignedUrlType",
    #       creation_date: Time.now,
    #       start_date: Time.now,
    #       completion_date: Time.now,
    #       status: "Created" # One of: ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"],
    #       cloud_watch_logs_role_arn: "ArnType",
    #       imported_users: 1,
    #       skipped_users: 1,
    #       failed_users: 1,
    #       completion_message: "CompletionMessageType",
    #       password_hashing_algorithm: "BCRYPT" # One of: ["BCRYPT", "SCRYPT", "ARGON2ID", "PBKDF2_SHA256"]
    #     }
    #   }
    # @return [Types::DescribeUserImportJobResponse]
    def describe_user_import_job(params = {}, options = {})
      request = build_request(:describe_user_import_job, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns configuration information. This operation is useful when
    #             you want to inspect an existing user pool and programmatically replicate the
    #             configuration to another user pool.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeUserPoolRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.describe_user_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool: {
    #       id: "UserPoolIdType",
    #       name: "UserPoolNameType",
    #       policies: {
    #         password_policy: {
    #           minimum_length: 1,
    #           require_uppercase: false,
    #           require_lowercase: false,
    #           require_numbers: false,
    #           require_symbols: false,
    #           password_history_size: 1,
    #           temporary_password_validity_days: 1
    #         },
    #         sign_in_policy: {
    #           allowed_first_auth_factors: ["PASSWORD" # One of: ["PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN", "SOFTWARE_TOKEN"]]
    #         }
    #       },
    #       deletion_protection: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #       lambda_config: {
    #         pre_sign_up: "ArnType",
    #         custom_message: "ArnType",
    #         post_confirmation: "ArnType",
    #         pre_authentication: "ArnType",
    #         post_authentication: "ArnType",
    #         define_auth_challenge: "ArnType",
    #         create_auth_challenge: "ArnType",
    #         verify_auth_challenge_response: "ArnType",
    #         pre_token_generation: "ArnType",
    #         user_migration: "ArnType",
    #         pre_token_generation_config: {
    #           lambda_version: "V1_0" # One of: ["V1_0", "V2_0", "V3_0"], # required
    #           lambda_arn: "ArnType", # required
    #         },
    #         custom_sms_sender: {
    #           lambda_version: "V1_0" # One of: ["V1_0"], # required
    #           lambda_arn: "ArnType", # required
    #         },
    #         custom_email_sender: {
    #           lambda_version: "V1_0" # One of: ["V1_0"], # required
    #           lambda_arn: "ArnType", # required
    #         },
    #         kms_key_id: "ArnType",
    #         inbound_federation: {
    #           lambda_version: "V1_0" # One of: ["V1_0"], # required
    #           lambda_arn: "ArnType", # required
    #         }
    #       },
    #       status: "Enabled" # One of: ["Enabled", "Disabled"],
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       schema_attributes: [
    #         {
    #           name: "CustomAttributeNameType",
    #           attribute_data_type: "String" # One of: ["String", "Number", "DateTime", "Boolean"],
    #           developer_only_attribute: false,
    #           mutable: false,
    #           required: false,
    #           number_attribute_constraints: {
    #             min_value: "StringType",
    #             max_value: "StringType"
    #           },
    #           string_attribute_constraints: {
    #             min_length: "StringType",
    #             max_length: "StringType"
    #           }
    #         }
    #       ],
    #       auto_verified_attributes: ["phone_number" # One of: ["phone_number", "email"]],
    #       alias_attributes: ["phone_number" # One of: ["phone_number", "email", "preferred_username"]],
    #       username_attributes: ["phone_number" # One of: ["phone_number", "email"]],
    #       sms_verification_message: "SmsVerificationMessageType",
    #       email_verification_message: "EmailVerificationMessageType",
    #       email_verification_subject: "EmailVerificationSubjectType",
    #       verification_message_template: {
    #         sms_message: "SmsVerificationMessageType",
    #         email_message: "EmailVerificationMessageType",
    #         email_subject: "EmailVerificationSubjectType",
    #         email_message_by_link: "EmailVerificationMessageByLinkType",
    #         email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #         default_email_option: "CONFIRM_WITH_LINK" # One of: ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #       },
    #       sms_authentication_message: "SmsVerificationMessageType",
    #       user_attribute_update_settings: {
    #         attributes_require_verification_before_update: ["phone_number" # One of: ["phone_number", "email"]]
    #       },
    #       mfa_configuration: "OFF" # One of: ["OFF", "ON", "OPTIONAL"],
    #       device_configuration: {
    #         challenge_required_on_new_device: false,
    #         device_only_remembered_on_user_prompt: false
    #       },
    #       estimated_number_of_users: 1,
    #       email_configuration: {
    #         source_arn: "ArnType",
    #         reply_to_email_address: "EmailAddressType",
    #         email_sending_account: "COGNITO_DEFAULT" # One of: ["COGNITO_DEFAULT", "DEVELOPER"],
    #         from: "StringType",
    #         configuration_set: "SESConfigurationSet"
    #       },
    #       sms_configuration: {
    #         sns_caller_arn: "OptionalArnType",
    #         external_id: "StringType",
    #         sns_region: "RegionCodeType",
    #         eums_sms: {
    #           caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #           origination_identity: "StringType",
    #           configuration_set_name: "StringType",
    #           in_entity_id: "StringType",
    #           in_template_id: "StringType",
    #           region: "RegionCodeType"
    #         }
    #       },
    #       user_pool_tags: {
    #         "TagKeysType" => "TagValueType"
    #       },
    #       sms_configuration_failure: "StringType",
    #       email_configuration_failure: "StringType",
    #       domain: "DomainType",
    #       custom_domain: "DomainType",
    #       admin_create_user_config: {
    #         allow_admin_create_user_only: false,
    #         unused_account_validity_days: 1,
    #         invite_message_template: {
    #           sms_message: "SmsInviteMessageType",
    #           email_message: "EmailInviteMessageType",
    #           email_subject: "EmailVerificationSubjectType"
    #         }
    #       },
    #       user_pool_add_ons: {
    #         advanced_security_mode: "OFF" # One of: ["OFF", "AUDIT", "ENFORCED"], # required
    #         advanced_security_additional_flows: {
    #           custom_auth_mode: "AUDIT" # One of: ["AUDIT", "ENFORCED"]
    #         }
    #       },
    #       username_configuration: {
    #         case_sensitive: false, # required
    #       },
    #       arn: "ArnType",
    #       account_recovery_setting: {
    #         recovery_mechanisms: [
    #           {
    #             priority: 1, # required
    #             name: "verified_email" # One of: ["verified_email", "verified_phone_number", "admin_only"], # required
    #           }
    #         ]
    #       },
    #       user_pool_tier: "LITE" # One of: ["LITE", "ESSENTIALS", "PLUS"],
    #       key_configuration: {
    #         key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"],
    #         kms_key_arn: "EncryptionKeyArnType"
    #       },
    #       issuer_configuration: {
    #         type: "ORIGINAL" # One of: ["ORIGINAL", "UPDATED"]
    #       },
    #       acr_configuration: {
    #         "AcrLevelKeyType" => {
    #           acr_value: "AcrValueType", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeUserPoolResponse]
    def describe_user_pool(params = {}, options = {})
      request = build_request(:describe_user_pool, params)
      request.send_request(options)
    end

    # <p>Given an app client ID, returns configuration information. This operation is useful
    #             when you want to inspect an existing app client and programmatically replicate the
    #             configuration to another app client. For more information about app clients, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html">App clients</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeUserPoolClientRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the app client you want to describe.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client that you want to describe.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #   }
    #   options = {}
    #   response = client.describe_user_pool_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_client: {
    #       user_pool_id: "UserPoolIdType",
    #       client_name: "ClientNameType",
    #       client_id: "ClientIdType",
    #       client_secret: "ClientSecretType",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       refresh_token_validity: 1,
    #       access_token_validity: 1,
    #       id_token_validity: 1,
    #       token_validity_units: {
    #         access_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #         id_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #         refresh_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"]
    #       },
    #       read_attributes: ["ClientPermissionType"],
    #       write_attributes: ["ClientPermissionType"],
    #       explicit_auth_flows: ["ADMIN_NO_SRP_AUTH" # One of: ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"]],
    #       supported_identity_providers: ["ProviderNameType"],
    #       callback_ur_ls: ["RedirectUrlType"],
    #       logout_ur_ls: ["RedirectUrlType"],
    #       default_redirect_uri: "RedirectUrlType",
    #       allowed_o_auth_flows: ["code" # One of: ["code", "implicit", "client_credentials"]],
    #       allowed_o_auth_scopes: ["ScopeType"],
    #       allowed_o_auth_flows_user_pool_client: false,
    #       analytics_configuration: {
    #         application_id: "HexStringType",
    #         application_arn: "ArnType",
    #         role_arn: "ArnType",
    #         external_id: "StringType",
    #         user_data_shared: false
    #       },
    #       prevent_user_existence_errors: "LEGACY" # One of: ["LEGACY", "ENABLED"],
    #       enable_token_revocation: false,
    #       enable_propagate_additional_user_context_data: false,
    #       auth_session_validity: 1,
    #       refresh_token_rotation: {
    #         feature: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         retry_grace_period_seconds: 1
    #       }
    #     }
    #   }
    # @return [Types::DescribeUserPoolClientResponse]
    def describe_user_pool_client(params = {}, options = {})
      request = build_request(:describe_user_pool_client, params)
      request.send_request(options)
    end

    # <p>Given a user pool domain name, returns information about the domain
    #             configuration.</p>
    #          <note>
    #             <p>This operation doesn't return results when you query a prefix domain in a
    #                 secondary Region. Prefix domains are Region-specific and can only be described in
    #                 the Region where they were created. To describe a prefix domain for a replica user
    #                 pool, make the request to the primary Region's endpoint.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::DescribeUserPoolDomainRequest] params
    # @option params [String] :domain
    #   <p>The domain that you want to describe. For custom domains, this is the fully-qualified
    #               domain name, such as <code>auth.example.com</code>. For Amazon Cognito prefix domains, this is
    #               the prefix alone, such as <code>auth</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainType", # required
    #   }
    #   options = {}
    #   response = client.describe_user_pool_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     domain_description: {
    #       user_pool_id: "UserPoolIdType",
    #       aws_account_id: "AWSAccountIdType",
    #       domain: "DomainType",
    #       s3_bucket: "S3BucketType",
    #       cloud_front_distribution: "StringType",
    #       version: "DomainVersionType",
    #       status: "CREATING" # One of: ["CREATING", "DELETING", "UPDATING", "ACTIVE", "FAILED"],
    #       custom_domain_config: {
    #         certificate_arn: "ArnType", # required
    #         security_policy: "TLS_V1" # One of: ["TLS_V1", "TLS_V1_2_2021", "TLS_V1_3_2025"]
    #       },
    #       managed_login_version: 1,
    #       routing: {
    #         failover: {
    #           secondary_region: "RegionNameType", # required
    #           primary_route53_health_check_id: "HealthCheckIdType", # required
    #         }
    #       }
    #     }
    #   }
    # @return [Types::DescribeUserPoolDomainResponse]
    def describe_user_pool_domain(params = {}, options = {})
      request = build_request(:describe_user_pool_domain, params)
      request.send_request(options)
    end

    # <p>Given a device key, deletes a remembered device as the currently signed-in user. For
    #             more information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::ForgetDeviceRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :device_key
    #   <p>The unique identifier, or device key, of the device that the user wants to
    #               forget.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType",
    #     device_key: "DeviceKeyType", # required
    #   }
    #   options = {}
    #   response = client.forget_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def forget_device(params = {}, options = {})
      request = build_request(:forget_device, params)
      request.send_request(options)
    end

    # <p>Sends a password-reset confirmation code to the email address or phone number of the
    #             requested username. The message delivery method is determined by the user's
    #             available attributes and the <code>AccountRecoverySetting</code> configuration of the
    #             user pool.</p>
    #          <p>For the <code>Username</code> parameter, you can use the username or an email, phone,
    #             or preferred username alias.</p>
    #          <p>If neither a verified phone number nor a verified email exists, Amazon Cognito responds with an
    #                 <code>InvalidParameterException</code> error . If your app client has a client
    #             secret and you don't provide a <code>SECRET_HASH</code> parameter, this API returns
    #                 <code>NotAuthorizedException</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::ForgotPasswordRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the user pool app client associated with the current signed-in user.</p>
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    # @option params [Types::UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType"
    #     },
    #     username: "UsernameType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.forgot_password(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_delivery_details: {
    #       destination: "StringType",
    #       delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #       attribute_name: "AttributeNameType"
    #     }
    #   }
    # @return [Types::ForgotPasswordResponse]
    def forgot_password(params = {}, options = {})
      request = build_request(:forgot_password, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, generates a comma-separated value (CSV) list populated with
    #             available user attributes in the user pool. This list is the header for the CSV file
    #             that determines the users in a user import job. Save the content of
    #                 <code>CSVHeader</code> in the response as a <code>.csv</code> file and populate it
    #             with the usernames and attributes of users that you want to import. For more information
    #             about CSV user import, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html">Importing users from a CSV file</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetCSVHeaderRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that you want to import users into.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.get_csv_header(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_id: "UserPoolIdType",
    #     csv_header: ["StringType"]
    #   }
    # @return [Types::GetCSVHeaderResponse]
    def get_csv_header(params = {}, options = {})
      request = build_request(:get_csv_header, params)
      request.send_request(options)
    end

    # <p>Issues an access token for machine-to-machine (M2M) authorization. Your app client
    #             provides its client ID and secret, and receives an access token that authorizes requests
    #             to your resource servers.</p>
    #          <p>To use this operation, you must configure the app client with a client secret and
    #             enable the <code>ALLOW_CLIENT_TOKEN_AUTH</code> authentication flow. The
    #             <code>ALLOW_CLIENT_TOKEN_AUTH</code> flow is mutually exclusive with user authentication
    #             flows. It must be the only authentication flow that you configure for the app client. For
    #             more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html">Scopes, M2M, and resource servers</a>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::GetClientTokenRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the app client that requests the access token. The app client must have a
    #               client secret and the <code>ALLOW_CLIENT_TOKEN_AUTH</code> authentication flow.</p>
    # @option params [String] :secret
    #   <p>An active secret for the app client.</p>
    # @option params [Array<String>] :scopes
    #   <p>The custom scopes to authorize in the access token, in the format
    #                   <code>resource-server-identifier/scope-name</code>. Each scope must belong to a
    #               resource server in your user pool. If you don't specify any scopes, Amazon Cognito authorizes the
    #               scopes that are configured for the app client.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Example – Get an access token for machine-to-machine authorization
    #   # The following example gets an access token for the app client 1example23456789 with the custom scope solar-system-data/asteroids.add.
    #   params = {
    #     client_id: "1example23456789",
    #     secret: "exampleClientSecret123EXAMPLE",
    #     scopes: [
    #       "solar-system-data/asteroids.add"
    #     ]
    #   }
    #   options = {}
    #   response = client.get_client_token(params, options)
    #   response.to_h #=>
    #   {
    #     client_authentication_result: {
    #       access_token: "eyJra456defEXAMPLE",
    #       expires_in: 3600,
    #       token_type: "Bearer"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     secret: "ClientSecretType", # required
    #     scopes: ["ScopeType"],
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.get_client_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_authentication_result: {
    #       access_token: "TokenModelType",
    #       expires_in: 1,
    #       token_type: "StringType"
    #     }
    #   }
    # @return [Types::GetClientTokenResponse]
    def get_client_token(params = {}, options = {})
      request = build_request(:get_client_token, params)
      request.send_request(options)
    end

    # <p>Given a device key, returns information about a remembered device for the current
    #             user. For more information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::GetDeviceRequest] params
    # @option params [String] :device_key
    #   <p>The key of the device that you want to get information about.</p>
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     device_key: "DeviceKeyType", # required
    #     access_token: "TokenModelType"
    #   }
    #   options = {}
    #   response = client.get_device(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     device: { # required
    #       device_key: "DeviceKeyType",
    #       device_attributes: [
    #         {
    #           name: "AttributeNameType", # required
    #           value: "AttributeValueType"
    #         }
    #       ],
    #       device_create_date: Time.now,
    #       device_last_modified_date: Time.now,
    #       device_last_authenticated_date: Time.now
    #     }
    #   }
    # @return [Types::GetDeviceResponse]
    def get_device(params = {}, options = {})
      request = build_request(:get_device, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID and a group name, returns information about the user
    #             group.</p>
    #          <p> For more information about user pool groups, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html">Adding groups to a user pool</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group that you want to get information about.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the group that you want to query.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.get_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_name: "GroupNameType",
    #       user_pool_id: "UserPoolIdType",
    #       description: "DescriptionType",
    #       role_arn: "ArnType",
    #       precedence: 1,
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::GetGroupResponse]
    def get_group(params = {}, options = {})
      request = build_request(:get_group, params)
      request.send_request(options)
    end

    # <p>Given the identifier of an identity provider (IdP), for example
    #                 <code>examplecorp</code>, returns information about the user pool configuration for
    #             that IdP. For more information about IdPs, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html">Third-party IdP sign-in</a>.</p>
    # @param [Hash, Types::GetIdentityProviderByIdentifierRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to get information about the IdP.</p>
    # @option params [String] :idp_identifier
    #   <p>The identifier that you assigned to your user pool. The identifier is an alternative
    #               name for an IdP that is distinct from the IdP name. For example, an IdP with a name of
    #                   <code>MyIdP</code> might have an identifier of the email domain
    #                   <code>example.com</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     idp_identifier: "IdpIdentifierType", # required
    #   }
    #   options = {}
    #   response = client.get_identity_provider_by_identifier(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider: { # required
    #       user_pool_id: "UserPoolIdType",
    #       provider_name: "ProviderNameType",
    #       provider_type: "SAML" # One of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"],
    #       provider_details: {
    #         "StringType" => "StringType"
    #       },
    #       attribute_mapping: {
    #         "AttributeMappingKeyType" => "StringType"
    #       },
    #       idp_identifiers: ["IdpIdentifierType"],
    #       acr_mapping: {
    #         "AcrMappingKeyType" => "AcrValueType"
    #       },
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::GetIdentityProviderByIdentifierResponse]
    def get_identity_provider_by_identifier(params = {}, options = {})
      request = build_request(:get_identity_provider_by_identifier, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns the logging configuration. User pools can export
    #             message-delivery error and threat-protection activity logs to external Amazon Web Services services. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html">Exporting user pool logs</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetLogDeliveryConfigurationRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that has the logging configuration that you want to
    #               view.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.get_log_delivery_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_delivery_configuration: {
    #       user_pool_id: "UserPoolIdType", # required
    #       log_configurations: [ # required
    #         {
    #           log_level: "ERROR" # One of: ["ERROR", "INFO"], # required
    #           event_source: "userNotification" # One of: ["userNotification", "userAuthEvents"], # required
    #           cloud_watch_logs_configuration: {
    #             log_group_arn: "ArnType"
    #           },
    #           s3_configuration: {
    #             bucket_arn: "S3ArnType"
    #           },
    #           firehose_configuration: {
    #             stream_arn: "ArnType"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetLogDeliveryConfigurationResponse]
    def get_log_delivery_configuration(params = {}, options = {})
      request = build_request(:get_log_delivery_configuration, params)
      request.send_request(options)
    end

    # <p>Returns the current provisioned limit for a specific API category.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetProvisionedLimitRequest] params
    # @option params [Types::LimitDefinitionType] :limit_definition
    #   <p>The limit to retrieve. Specify the limit class and the attributes that identify the
    #               limit.</p>
    # @example Example get a provisioned limit
    #   # The following example returns the provisioned limit for the UserAuthentication API category.
    #   params = {
    #     limit_definition: {
    #       limit_class: API_CATEGORY,
    #       attributes: {
    #         "Category" => "UserAuthentication"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_provisioned_limit(params, options)
    #   response.to_h #=>
    #   {
    #     limit: {
    #       limit_definition: {
    #         limit_class: API_CATEGORY,
    #         attributes: {
    #           "Category" => "UserAuthentication"
    #         }
    #       },
    #       provisioned_limit_value: 120,
    #       free_limit_value: 120
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     limit_definition: { # required
    #       limit_class: "API_CATEGORY" # One of: ["API_CATEGORY"], # required
    #       attributes: { # required
    #         "StringType" => "StringType"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.get_provisioned_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limit: { # required
    #       limit_definition: { # required
    #         limit_class: "API_CATEGORY" # One of: ["API_CATEGORY"], # required
    #         attributes: { # required
    #           "StringType" => "StringType"
    #         }
    #       },
    #       provisioned_limit_value: 1, # required
    #       free_limit_value: 1, # required
    #     }
    #   }
    # @return [Types::GetProvisionedLimitResponse]
    def get_provisioned_limit(params = {}, options = {})
      request = build_request(:get_provisioned_limit, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns the signing certificate for SAML 2.0 federation.</p>
    #          <p>Issued certificates are valid for 10 years from the date of issue. Amazon Cognito issues and
    #             assigns a new signing certificate annually. This renewal process returns a new value in
    #             the response to <code>GetSigningCertificate</code>, but doesn't invalidate the original
    #             certificate.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-SAML-signing-encryption.html#cognito-user-pools-SAML-signing">Signing SAML requests</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetSigningCertificateRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to view the signing certificate.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.get_signing_certificate(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     certificate: "StringType"
    #   }
    # @return [Types::GetSigningCertificateResponse]
    def get_signing_certificate(params = {}, options = {})
      request = build_request(:get_signing_certificate, params)
      request.send_request(options)
    end

    # <p>Given a refresh token, issues new ID, access, and optionally refresh tokens for the
    #             user who owns the submitted token. This operation issues a new refresh token and
    #             invalidates the original refresh token after an optional grace period when refresh token
    #             rotation is enabled. If refresh token rotation is disabled, issues new ID and access
    #             tokens only.</p>
    # @param [Hash, Types::GetTokensFromRefreshTokenRequest] params
    # @option params [String] :refresh_token
    #   <p>A valid refresh token that can authorize the request for new tokens. When refresh
    #               token rotation is active in the requested app client, this token is invalidated after
    #               the request is complete and after an optional grace period.</p>
    # @option params [String] :client_id
    #   <p>The app client that issued the refresh token to the user who wants to request new
    #               tokens.</p>
    # @option params [String] :client_secret
    #   <p>The client secret of the requested app client, if the client has a secret.</p>
    # @option params [String] :device_key
    #   <p>When you enable device remembering, Amazon Cognito issues a device key that you can use for
    #               device authentication that bypasses multi-factor authentication (MFA). To implement
    #                   <code>GetTokensFromRefreshToken</code> in a user pool with device remembering, you
    #               must capture the device key from the initial authentication request. If your application
    #               doesn't provide the key of a registered device, Amazon Cognito issues a new one. You must
    #               provide the confirmed device key in this request if device remembering is enabled in
    #               your user pool.</p>
    #            <p>For more information about device remembering, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     refresh_token: "TokenModelType", # required
    #     client_id: "ClientIdType", # required
    #     client_secret: "ClientSecretType",
    #     device_key: "DeviceKeyType",
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.get_tokens_from_refresh_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_result: {
    #       access_token: "TokenModelType",
    #       expires_in: 1,
    #       token_type: "StringType",
    #       refresh_token: "TokenModelType",
    #       id_token: "TokenModelType",
    #       new_device_metadata: {
    #         device_key: "DeviceKeyType",
    #         device_group_key: "StringType"
    #       }
    #     }
    #   }
    # @return [Types::GetTokensFromRefreshTokenResponse]
    def get_tokens_from_refresh_token(params = {}, options = {})
      request = build_request(:get_tokens_from_refresh_token, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID or app client, returns information about classic hosted UI
    #             branding that you applied, if any. Returns user-pool level branding information if no
    #             app client branding is applied, or if you don't specify an app client ID. Returns
    #             an empty object if you haven't applied hosted UI branding to either the client or
    #             the user pool. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/hosted-ui-classic-branding.html">Hosted UI (classic) branding</a>.</p>
    # @param [Hash, Types::GetUICustomizationRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that you want to query for branding settings.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client that you want to query for branding settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType"
    #   }
    #   options = {}
    #   response = client.get_ui_customization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ui_customization: { # required
    #       user_pool_id: "UserPoolIdType",
    #       client_id: "ClientIdType",
    #       image_url: "ImageUrlType",
    #       css: "CSSType",
    #       css_version: "CSSVersionType",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::GetUICustomizationResponse]
    def get_ui_customization(params = {}, options = {})
      request = build_request(:get_ui_customization, params)
      request.send_request(options)
    end

    # <p>Gets user attributes and and MFA settings for the currently signed-in user.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::GetUserRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.get_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     username: "UsernameType", # required
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     mfa_options: [
    #       {
    #         delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #         attribute_name: "AttributeNameType"
    #       }
    #     ],
    #     preferred_mfa_setting: "StringType",
    #     user_mfa_setting_list: ["StringType"]
    #   }
    # @return [Types::GetUserResponse]
    def get_user(params = {}, options = {})
      request = build_request(:get_user, params)
      request.send_request(options)
    end

    # <p>Given an attribute name, sends a user attribute verification code for the specified
    #             attribute name to the currently signed-in user.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::GetUserAttributeVerificationCodeRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :attribute_name
    #   <p>The name of the attribute that the user wants to verify, for example
    #                   <code>email</code>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.get_user_attribute_verification_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_delivery_details: {
    #       destination: "StringType",
    #       delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #       attribute_name: "AttributeNameType"
    #     }
    #   }
    # @return [Types::GetUserAttributeVerificationCodeResponse]
    def get_user_attribute_verification_code(params = {}, options = {})
      request = build_request(:get_user_attribute_verification_code, params)
      request.send_request(options)
    end

    # <p>Lists the authentication options for the currently signed-in user. Returns the
    #             following:</p>
    #          <ol>
    #             <li>
    #                <p>The user's multi-factor authentication (MFA) preferences.</p>
    #             </li>
    #             <li>
    #                <p>The user's options for choice-based authentication with the
    #                         <code>USER_AUTH</code> flow.</p>
    #             </li>
    #          </ol>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::GetUserAuthFactorsRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.get_user_auth_factors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     username: "UsernameType", # required
    #     preferred_mfa_setting: "StringType",
    #     user_mfa_setting_list: ["StringType"],
    #     configured_user_auth_factors: ["PASSWORD" # One of: ["PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN", "SOFTWARE_TOKEN"]]
    #   }
    # @return [Types::GetUserAuthFactorsResponse]
    def get_user_auth_factors(params = {}, options = {})
      request = build_request(:get_user_auth_factors, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns configuration for sign-in with WebAuthn authenticators
    #             and for multi-factor authentication (MFA). This operation describes the
    #             following:</p>
    #          <ul>
    #             <li>
    #                <p>The WebAuthn relying party (RP) ID and user-verification settings.</p>
    #             </li>
    #             <li>
    #                <p>The required, optional, or disabled state of MFA for all user pool
    #                     users.</p>
    #             </li>
    #             <li>
    #                <p>The message templates for email and SMS MFA.</p>
    #             </li>
    #             <li>
    #                <p>The enabled or disabled state of time-based one-time password (TOTP)
    #                     MFA.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::GetUserPoolMfaConfigRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to query WebAuthn and MFA configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #   }
    #   options = {}
    #   response = client.get_user_pool_mfa_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sms_mfa_configuration: {
    #       sms_authentication_message: "SmsVerificationMessageType",
    #       sms_configuration: {
    #         sns_caller_arn: "OptionalArnType",
    #         external_id: "StringType",
    #         sns_region: "RegionCodeType",
    #         eums_sms: {
    #           caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #           origination_identity: "StringType",
    #           configuration_set_name: "StringType",
    #           in_entity_id: "StringType",
    #           in_template_id: "StringType",
    #           region: "RegionCodeType"
    #         }
    #       }
    #     },
    #     software_token_mfa_configuration: {
    #       enabled: false
    #     },
    #     email_mfa_configuration: {
    #       message: "EmailMfaMessageType",
    #       subject: "EmailMfaSubjectType"
    #     },
    #     mfa_configuration: "OFF" # One of: ["OFF", "ON", "OPTIONAL"],
    #     web_authn_configuration: {
    #       relying_party_id: "RelyingPartyIdType",
    #       user_verification: "required" # One of: ["required", "preferred"],
    #       factor_configuration: "SINGLE_FACTOR" # One of: ["SINGLE_FACTOR", "MULTI_FACTOR_WITH_USER_VERIFICATION"]
    #     }
    #   }
    # @return [Types::GetUserPoolMfaConfigResponse]
    def get_user_pool_mfa_config(params = {}, options = {})
      request = build_request(:get_user_pool_mfa_config, params)
      request.send_request(options)
    end

    # <p>Invalidates the identity, access, and refresh tokens that Amazon Cognito issued to a user. Call
    #             this operation when your user signs out of your app. This results in the following
    #             behavior. </p>
    #          <ul>
    #             <li>
    #                <p>Amazon Cognito no longer accepts <i>token-authorized</i> user operations
    #                     that you authorize with a signed-out user's access tokens. For more information,
    #                     see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool
    #                         endpoints</a>.</p>
    #                <p>Amazon Cognito returns an <code>Access Token has been revoked</code> error when your
    #                     app attempts to authorize a user pools API request with a revoked access token
    #                     that contains the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Cognito no longer accepts a signed-out user's ID token in a <a href="https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetId.html">GetId </a> request to an identity pool with
    #                         <code>ServerSideTokenCheck</code> enabled for its user pool IdP
    #                     configuration in <a href="https://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_CognitoIdentityProvider.html">CognitoIdentityProvider</a>.</p>
    #             </li>
    #             <li>
    #                <p>Amazon Cognito no longer accepts a signed-out user's refresh tokens in refresh
    #                     requests.</p>
    #             </li>
    #          </ul>
    #          <p>Other requests might be valid until your user's token expires. This operation
    #             doesn't clear the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">managed login</a> session cookie. To clear the session for
    #             a user who signed in with managed login or the classic hosted UI, direct their browser
    #             session to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html">logout endpoint</a>.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::GlobalSignOutRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.global_sign_out(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::GlobalSignOutResponse]
    def global_sign_out(params = {}, options = {})
      request = build_request(:global_sign_out, params)
      request.send_request(options)
    end

    # <p>Declares an authentication flow and initiates sign-in for a user in the Amazon Cognito user
    #             directory. Amazon Cognito might respond with an additional challenge or an
    #                 <code>AuthenticationResult</code> that contains the outcome of a successful
    #             authentication. You can't sign in a user with a federated IdP with
    #                 <code>InitiateAuth</code>. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication.html">Authentication</a>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::InitiateAuthRequest] params
    # @option params [String] :auth_flow
    #   <p>The authentication flow that you want to initiate. Each <code>AuthFlow</code> has
    #               linked <code>AuthParameters</code> that you must submit. The following are some example
    #               flows.</p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <p>The entry point for <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a> with passwords,
    #                           one-time passwords, and WebAuthn authenticators. Request a preferred
    #                           authentication type or review available authentication types. From the
    #                           offered authentication types, select one in a challenge response and then
    #                           authenticate with that method in an additional challenge response.
    #                           To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <p>Username-password authentication with the Secure Remote Password (SRP)
    #                           protocol. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow.html#Using-SRP-password-verification-in-custom-authentication-flow">Use SRP password verification in custom
    #                               authentication flow</a>.</p>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH and REFRESH_TOKEN</dt>
    #               <dd>
    #                  <p>Receive new ID and access tokens when you pass a
    #                               <code>REFRESH_TOKEN</code> parameter with a valid refresh token as the
    #                           value. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-using-the-refresh-token.html">Using the refresh token</a>.</p>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <p>Custom authentication with Lambda triggers. For more information, see
    #                               <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">Custom authentication challenge Lambda
    #                               triggers</a>.</p>
    #               </dd>
    #               <dt>USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <p>Client-side username-password authentication with the password sent
    #                           directly in the request. For more information about client-side and
    #                           server-side authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-public-server-side.html">SDK authorization models</a>.</p>
    #               </dd>
    #            </dl>
    #            <p>
    #               <code>ADMIN_USER_PASSWORD_AUTH</code> is a flow type of <code>AdminInitiateAuth</code>
    #               and isn't valid for InitiateAuth. <code>ADMIN_NO_SRP_AUTH</code> is a legacy server-side
    #               username-password flow and isn't valid for InitiateAuth.</p>
    # @option params [Hash<String, String>] :auth_parameters
    #   <p>The authentication parameters. These are inputs corresponding to the
    #                   <code>AuthFlow</code> that you're invoking.</p>
    #            <p>The following are some authentication flows and their parameters. Add a
    #                   <code>SECRET_HASH</code> parameter if your app client has a client secret. Add
    #                   <code>DEVICE_KEY</code> if you want to bypass multi-factor authentication with a
    #               remembered device. </p>
    #            <dl>
    #               <dt>USER_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PREFERRED_CHALLENGE</code>. If you don't provide a
    #                                   value for <code>PREFERRED_CHALLENGE</code>, Amazon Cognito responds with the
    #                                       <code>AvailableChallenges</code> parameter that specifies the
    #                                   available sign-in methods.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>TARGET_ACR_VALUES</code>. An optional, space-separated list
    #                                   of the authentication context class reference (ACR) level URIs that
    #                                   you want the user to reach. List the levels in priority order, from
    #                                   highest to lowest. Amazon Cognito attempts the highest-priority level that the
    #                                   user can satisfy, and falls back through the list. Amazon Cognito ignores any
    #                                   value that it doesn't recognize. If none of the requested values are
    #                                   valid, Amazon Cognito returns an error.</p>
    #                        <p>Requesting step-up authentication with this parameter requires the
    #                                   Essentials or Plus feature plan. On a lower feature plan, InitiateAuth
    #                                   returns a FeatureUnavailableInTierException. <code>USERNAME</code> is
    #                                   required. When you provide an <code>ACCESS_TOKEN</code>, you must also
    #                                   provide <code>TARGET_ACR_VALUES</code>. Amazon Cognito returns an error if you
    #                                   provide an <code>ACCESS_TOKEN</code> without
    #                                   <code>TARGET_ACR_VALUES</code>. The <code>USERNAME</code> that you
    #                                   provide must match the user that the <code>ACCESS_TOKEN</code> was
    #                                   issued for.</p>
    #                        <p>For more information about step-up authentication and how Amazon Cognito
    #                                   handles multi-factor authentication requirements, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-step-up-authentication.html">Step-up
    #                                   authentication with ACR and AMR</a> in the <i>Amazon Cognito
    #                                   Developer Guide</i>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MAX_AGE</code>. An optional integer that sets the maximum
    #                                   number of seconds allowed since the user last authenticated. If the
    #                                   user's most recent authentication is older than this value, Amazon Cognito
    #                                   discards the authentication-methods credit from any access token that
    #                                   you provide and processes the request as a fresh authentication toward
    #                                   the target level. The access token itself remains valid.</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>USER_SRP_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>USER_PASSWORD_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>PASSWORD</code> (required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>REFRESH_TOKEN_AUTH/REFRESH_TOKEN</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>REFRESH_TOKEN</code>(required)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>CUSTOM_AUTH</dt>
    #               <dd>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>USERNAME</code> (required)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ChallengeName: SRP_A</code> (when doing SRP authentication
    #                                   before custom challenges)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SRP_A: (An SRP_A value)</code> (when doing SRP
    #                                   authentication before custom challenges)</p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #               <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <p>The <code>ClientMetadata</code> value is passed as input to the functions for only the
    #               following triggers:</p>
    #            <ul>
    #               <li>
    #                  <p>Pre signup</p>
    #               </li>
    #               <li>
    #                  <p>Pre authentication</p>
    #               </li>
    #               <li>
    #                  <p>User migration</p>
    #               </li>
    #            </ul>
    #            <p>This request also invokes the functions for the following triggers, but doesn't pass
    #                   <code>ClientMetadata</code>:</p>
    #            <ul>
    #               <li>
    #                  <p>Post authentication</p>
    #               </li>
    #               <li>
    #                  <p>Custom message</p>
    #               </li>
    #               <li>
    #                  <p>Pre token generation</p>
    #               </li>
    #               <li>
    #                  <p>Create auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Define auth challenge</p>
    #               </li>
    #               <li>
    #                  <p>Custom email sender</p>
    #               </li>
    #               <li>
    #                  <p>Custom SMS sender</p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @option params [String] :client_id
    #   <p>The ID of the app client that your user wants to sign in to.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Types::UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [String] :session
    #   <p>The optional session ID from a <code>ConfirmSignUp</code> API request. You can sign in
    #               a user directly from the sign-up process with the <code>USER_AUTH</code> authentication
    #               flow. When you pass the session ID to <code>InitiateAuth</code>, Amazon Cognito assumes the SMS
    #               or email message one-time verification password from <code>ConfirmSignUp</code> as the
    #               primary authentication factor. You're not required to submit this code a second
    #               time. This option is only valid for users who have confirmed their sign-up and are
    #               signing in for the first time within the authentication flow session duration of the
    #               session ID.</p>
    # @example Example username and password sign-in for a user who has TOTP MFA
    #   # The following example signs in the user mytestuser with analytics data, client metadata, and user context data for advanced security.
    #   params = {
    #     auth_flow: USER_PASSWORD_AUTH,
    #     client_id: "1example23456789",
    #     auth_parameters: {
    #       "USERNAME" => "mytestuser",
    #       "PASSWORD" => "This-is-my-test-99!",
    #       "SECRET_HASH" => "oT5ZkS8ctnrhYeeGsGTvOzPhoc/Jd1cO5fueBWFVmp8="
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: "d70b2ba36a8c4dc5a04a0451a31a1e12"
    #     },
    #     user_context_data: {
    #       encoded_data: "AmazonCognitoAdvancedSecurityData_object",
    #       ip_address: "192.0.2.1"
    #     },
    #     client_metadata: {
    #       "MyTestKey" => "MyTestValue"
    #     }
    #   }
    #   options = {}
    #   response = client.initiate_auth(params, options)
    #   response.to_h #=>
    #   {
    #     challenge_name: SOFTWARE_TOKEN_MFA,
    #     challenge_parameters: {
    #       "USER_ID_FOR_SRP" => "mytestuser",
    #       "FRIENDLY_DEVICE_NAME" => "mytestauthenticator"
    #     },
    #     session: "AYABeC1-y8qooiuysEv0uM4wAqQAHQABAAdTZXJ2aWNlABBDb2duaXRvVXNlclBvb2xzAAEAB2F3cy1rbXMAS2Fybjphd3M6a21zOnVzLXdlc3QtMjowMTU3MzY3MjcxOTg6a2V5LzI5OTFhNGE5LTM5YTAtNDQ0Mi04MWU4LWRkYjY4NTllMTg2MQC4AQIBAHhjxv5lVLhE2_WNrC1zuomqn08qDUUp3z9v4EGAjazZ-wGP3HuBF5Izvxf-9WkCT5uyAAAAfjB8BgkqhkiG9w0BBwagbzBtAgEAMGgGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMeQoT5e6Dpfh52caqAgEQgDvuL8uLMhPt0WmQpZnkNED1gob6xbqt5LaQo_H4L5CuT4Kj499dGCoZ1q1trmlZSRgRm0wwGGG8lFU37QIAAAAADAAAEAAAAAAAAAAAAAAAAADuLe9_UJ4oZAMsQYr0ntiT_____wAAAAEAAAAAAAAAAAAAAAEAAADnLDGmKBQtsCafNokRmPLgl2itBKuKR2dfZBQb5ucCYkzThM5HOfQUSEL-A3dZzfYDC0IODsrcMkrbeeVyMJk-FCzsxS9Og8BEBVnvi9WjZkPJ4mF0YS6FUXnoPSBV5oUqGzRaT-tJ169SUFZAUfFM1fGeJ8T57-QdCxjyISRCWV1VG5_7TiCioyRGfWwzNVWh7exJortF3ccfOyiEyxeqJ2VJvJq3m_w8NP24_PMDpktpRMKftObIMlD5ewRTNCdrUXQ1BW5KIxhJLGjYfRzJDZuKzmEgS-VHsKz0z76w-AlAgdfvdAjflLnsgduU5kUX4YP6jqnetg"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     auth_flow: "USER_SRP_AUTH" # One of: ["USER_SRP_AUTH", "REFRESH_TOKEN_AUTH", "REFRESH_TOKEN", "CUSTOM_AUTH", "ADMIN_NO_SRP_AUTH", "USER_PASSWORD_AUTH", "ADMIN_USER_PASSWORD_AUTH", "USER_AUTH"], # required
    #     auth_parameters: {
    #       "StringType" => "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     },
    #     client_id: "ClientIdType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType"
    #     },
    #     session: "SessionType"
    #   }
    #   options = {}
    #   response = client.initiate_auth(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     challenge_name: "SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"],
    #     session: "SessionType",
    #     challenge_parameters: {
    #       "StringType" => "StringType"
    #     },
    #     authentication_result: {
    #       access_token: "TokenModelType",
    #       expires_in: 1,
    #       token_type: "StringType",
    #       refresh_token: "TokenModelType",
    #       id_token: "TokenModelType",
    #       new_device_metadata: {
    #         device_key: "DeviceKeyType",
    #         device_group_key: "StringType"
    #       }
    #     },
    #     available_challenges: ["SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"]]
    #   }
    # @return [Types::InitiateAuthResponse]
    def initiate_auth(params = {}, options = {})
      request = build_request(:initiate_auth, params)
      request.send_request(options)
    end

    # <p>Lists the devices that Amazon Cognito has registered to the currently signed-in user. For more
    #             information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::ListDevicesRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of devices that you want Amazon Cognito to return in the response.</p>
    # @option params [String] :pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType"
    #   }
    #   options = {}
    #   response = client.list_devices(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     devices: [
    #       {
    #         device_key: "DeviceKeyType",
    #         device_attributes: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType"
    #           }
    #         ],
    #         device_create_date: Time.now,
    #         device_last_modified_date: Time.now,
    #         device_last_authenticated_date: Time.now
    #       }
    #     ],
    #     pagination_token: "SearchPaginationTokenType"
    #   }
    # @return [Types::ListDevicesResponse]
    def list_devices(params = {}, options = {})
      request = build_request(:list_devices, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns user pool groups and their details.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListGroupsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to list user groups.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of groups that you want Amazon Cognito to return in the response.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     limit: 1,
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.list_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     groups: [
    #       {
    #         group_name: "GroupNameType",
    #         user_pool_id: "UserPoolIdType",
    #         description: "DescriptionType",
    #         role_arn: "ArnType",
    #         precedence: 1,
    #         last_modified_date: Time.now,
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::ListGroupsResponse]
    def list_groups(params = {}, options = {})
      request = build_request(:list_groups, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns information about configured identity providers (IdPs).
    #             For more information about IdPs, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html">Third-party IdP sign-in</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListIdentityProvidersRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to list IdPs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of IdPs that you want Amazon Cognito to return in the response.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKeyType"
    #   }
    #   options = {}
    #   response = client.list_identity_providers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     providers: [ # required
    #       {
    #         provider_name: "ProviderNameType",
    #         provider_type: "SAML" # One of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"],
    #         last_modified_date: Time.now,
    #         creation_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationKeyType"
    #   }
    # @return [Types::ListIdentityProvidersResponse]
    def list_identity_providers(params = {}, options = {})
      request = build_request(:list_identity_providers, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns all resource servers and their details. For more
    #             information about resource servers, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html">Access control with resource servers</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListResourceServersRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to list resource servers.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of resource servers that you want Amazon Cognito to return in the
    #               response.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKeyType"
    #   }
    #   options = {}
    #   response = client.list_resource_servers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_servers: [ # required
    #       {
    #         user_pool_id: "UserPoolIdType",
    #         identifier: "ResourceServerIdentifierType",
    #         name: "ResourceServerNameType",
    #         scopes: [
    #           {
    #             scope_name: "ResourceServerScopeNameType", # required
    #             scope_description: "ResourceServerScopeDescriptionType", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationKeyType"
    #   }
    # @return [Types::ListResourceServersResponse]
    def list_resource_servers(params = {}, options = {})
      request = build_request(:list_resource_servers, params)
      request.send_request(options)
    end

    # <p>Lists the tags that are assigned to an Amazon Cognito user pool. For more information, see
    #                 <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/tagging.html">Tagging
    #                 resources</a>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ArnType", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: {
    #       "TagKeysType" => "TagValueType"
    #     }
    #   }
    # @return [Types::ListTagsForResourceResponse]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Returns details about all terms documents for the requested user pool.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListTermsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to list terms documents.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of terms documents that you want Amazon Cognito to return in the
    #               response.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "StringType"
    #   }
    #   options = {}
    #   response = client.list_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terms: [ # required
    #       {
    #         terms_id: "TermsIdType", # required
    #         terms_name: "TermsNameType", # required
    #         enforcement: "NONE" # One of: ["NONE"], # required
    #         creation_date: Time.now, # required
    #         last_modified_date: Time.now, # required
    #       }
    #     ],
    #     next_token: "StringType"
    #   }
    # @return [Types::ListTermsResponse]
    def list_terms(params = {}, options = {})
      request = build_request(:list_terms, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns user import jobs and their details. Import jobs are
    #             retained in user pool configuration so that you can stage, stop, start, review, and
    #             delete them. For more information about user import, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html">Importing users from a CSV file</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListUserImportJobsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to list import jobs.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of import jobs that you want Amazon Cognito to return in the
    #               response.</p>
    # @option params [String] :pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1, # required
    #     pagination_token: "PaginationKeyType"
    #   }
    #   options = {}
    #   response = client.list_user_import_jobs(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_import_jobs: [
    #       {
    #         job_name: "UserImportJobNameType",
    #         job_id: "UserImportJobIdType",
    #         user_pool_id: "UserPoolIdType",
    #         pre_signed_url: "PreSignedUrlType",
    #         creation_date: Time.now,
    #         start_date: Time.now,
    #         completion_date: Time.now,
    #         status: "Created" # One of: ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"],
    #         cloud_watch_logs_role_arn: "ArnType",
    #         imported_users: 1,
    #         skipped_users: 1,
    #         failed_users: 1,
    #         completion_message: "CompletionMessageType",
    #         password_hashing_algorithm: "BCRYPT" # One of: ["BCRYPT", "SCRYPT", "ARGON2ID", "PBKDF2_SHA256"]
    #       }
    #     ],
    #     pagination_token: "PaginationKeyType"
    #   }
    # @return [Types::ListUserImportJobsResponse]
    def list_user_import_jobs(params = {}, options = {})
      request = build_request(:list_user_import_jobs, params)
      request.send_request(options)
    end

    # <p>Lists all client secrets associated with a user pool app client. Returns metadata about the secrets. The response does not include pagination tokens as there are only 2 secrets at any given time and we return both with every ListUserPoolClientSecrets call. For security reasons, the response never reveals the actual secret value in ClientSecretValue.</p>
    # @param [Hash, Types::ListUserPoolClientSecretsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the app client.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client whose secrets you want to list.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.list_user_pool_client_secrets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     client_secrets: [
    #       {
    #         client_secret_id: "ClientSecretIdType",
    #         client_secret_value: "ClientSecretType",
    #         client_secret_create_date: Time.now
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::ListUserPoolClientSecretsResponse]
    def list_user_pool_client_secrets(params = {}, options = {})
      request = build_request(:list_user_pool_client_secrets, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, lists app clients. App clients are sets of rules for the access
    #             that you want a user pool to grant to one application. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-client-apps.html">App clients</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListUserPoolClientsRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to list user pool clients.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of app clients that you want Amazon Cognito to return in the
    #               response.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     max_results: 1,
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.list_user_pool_clients(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_clients: [
    #       {
    #         client_id: "ClientIdType",
    #         user_pool_id: "UserPoolIdType",
    #         client_name: "ClientNameType"
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::ListUserPoolClientsResponse]
    def list_user_pool_clients(params = {}, options = {})
      request = build_request(:list_user_pool_clients, params)
      request.send_request(options)
    end

    # <p>Lists all replicas for a user pool, including both primary and secondary replicas. We
    #             recommend using pagination to ensure that the operation returns quickly and
    #             successfully.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListUserPoolReplicasRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool for which to list replicas.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for retrieving the next page of results. If this parameter is
    #               omitted, the operation returns the first page of results.</p>
    # @example Example list the replicas of a user pool
    #   # The following example lists the replicas of a user pool that has a replica in the ap-south-1 Region.
    #   params = {
    #     user_pool_id: "eu-north-1_abcd12345"
    #   }
    #   options = {}
    #   response = client.list_user_pool_replicas(params, options)
    #   response.to_h #=>
    #   {
    #     user_pool_replicas: [
    #       {
    #         region_name: "ap-south-1",
    #         status: CREATING,
    #         role: SECONDARY,
    #         user_pool_arn: "arn:aws:cognito-idp:ap-south-1:123456789012:userpool/eu-north-1_abcd12345"
    #       },
    #       {
    #         region_name: "eu-north-1",
    #         status: ACTIVE,
    #         role: PRIMARY,
    #         user_pool_arn: "arn:aws:cognito-idp:eu-north-1:123456789012:userpool/eu-north-1_abcd12345"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     next_token: "PaginationKeyType"
    #   }
    #   options = {}
    #   response = client.list_user_pool_replicas(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_replicas: [
    #       {
    #         region_name: "RegionNameType",
    #         status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE", "DELETING"],
    #         role: "PRIMARY" # One of: ["PRIMARY", "SECONDARY"],
    #         user_pool_arn: "ArnType"
    #       }
    #     ],
    #     next_token: "PaginationKeyType"
    #   }
    # @return [Types::ListUserPoolReplicasResponse]
    def list_user_pool_replicas(params = {}, options = {})
      request = build_request(:list_user_pool_replicas, params)
      request.send_request(options)
    end

    # <p>Lists user pools and their details in the current Amazon Web Services account.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListUserPoolsRequest] params
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of user pools that you want Amazon Cognito to return in the response.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationKeyType",
    #     max_results: 1, # required
    #   }
    #   options = {}
    #   response = client.list_user_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pools: [
    #       {
    #         id: "UserPoolIdType",
    #         name: "UserPoolNameType",
    #         lambda_config: {
    #           pre_sign_up: "ArnType",
    #           custom_message: "ArnType",
    #           post_confirmation: "ArnType",
    #           pre_authentication: "ArnType",
    #           post_authentication: "ArnType",
    #           define_auth_challenge: "ArnType",
    #           create_auth_challenge: "ArnType",
    #           verify_auth_challenge_response: "ArnType",
    #           pre_token_generation: "ArnType",
    #           user_migration: "ArnType",
    #           pre_token_generation_config: {
    #             lambda_version: "V1_0" # One of: ["V1_0", "V2_0", "V3_0"], # required
    #             lambda_arn: "ArnType", # required
    #           },
    #           custom_sms_sender: {
    #             lambda_version: "V1_0" # One of: ["V1_0"], # required
    #             lambda_arn: "ArnType", # required
    #           },
    #           custom_email_sender: {
    #             lambda_version: "V1_0" # One of: ["V1_0"], # required
    #             lambda_arn: "ArnType", # required
    #           },
    #           kms_key_id: "ArnType",
    #           inbound_federation: {
    #             lambda_version: "V1_0" # One of: ["V1_0"], # required
    #             lambda_arn: "ArnType", # required
    #           }
    #         },
    #         status: "Enabled" # One of: ["Enabled", "Disabled"],
    #         last_modified_date: Time.now,
    #         creation_date: Time.now,
    #         replica_regions: ["StringType"]
    #       }
    #     ],
    #     next_token: "PaginationKeyType"
    #   }
    # @return [Types::ListUserPoolsResponse]
    def list_user_pools(params = {}, options = {})
      request = build_request(:list_user_pools, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID, returns a list of users and their basic details in a user
    #             pool.</p>
    #          <p>This operation is eventually consistent. You might experience a delay before results
    #             are up-to-date. To validate the existence or configuration of an individual user, use
    #                 <code>AdminGetUser</code>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListUsersRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to display or search for users.</p>
    # @option params [Array<String>] :attributes_to_get
    #   <p>A JSON array of user attribute names, for example <code>given_name</code>, that you
    #               want Amazon Cognito to include in the response for each user. When you don't provide an
    #                   <code>AttributesToGet</code> parameter, Amazon Cognito returns all attributes for each
    #               user.</p>
    #            <p>Use <code>AttributesToGet</code> with required attributes in your user pool, or in
    #               conjunction with <code>Filter</code>. Amazon Cognito returns an error if not all users in the
    #               results have set a value for the attribute you request. Attributes that you can't
    #               filter on, including custom attributes, must have a value set in every user profile
    #               before an <code>AttributesToGet</code> parameter returns results.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of users that you want Amazon Cognito to return in the response. In some SDK
    #               contexts, this operation might return fewer items than you specify in the
    #                   <code>Limit</code> parameter without having reached the end of the full list. If the
    #               response contains a <code>PaginationToken</code>, then there are more results.</p>
    # @option params [String] :pagination_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @option params [String] :filter
    #   <p>A filter string of the form <code>"AttributeName Filter-Type "AttributeValue"</code>.
    #               Quotation marks within the filter string must be escaped using the backslash
    #                   (<code>\</code>) character. For example, <code>"family_name =
    #               \"Reddy\""</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <i>AttributeName</i>: The name of the attribute to search for.
    #                       You can only search for one attribute at a time.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>Filter-Type</i>: For an exact match, use <code>=</code>, for
    #                       example, "<code>given_name = \"Jon\"</code>". For a prefix ("starts with")
    #                       match, use <code>^=</code>, for example, "<code>given_name ^= \"Jon\"</code>".
    #                   </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <i>AttributeValue</i>: The attribute value that must be matched
    #                       for each user.</p>
    #               </li>
    #            </ul>
    #            <p>If the filter string is empty, <code>ListUsers</code> returns all users in the user
    #               pool.</p>
    #            <p>You can only search for the following standard attributes:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>username</code> (case-sensitive)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>email</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>phone_number</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>given_name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>family_name</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>preferred_username</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cognito:user_status</code> (called <b>Status</b> in the Console) (case-insensitive)</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>status (called <b>Enabled</b> in the Console)
    #                           (case-sensitive)</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sub</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>Custom attributes aren't searchable.</p>
    #            <note>
    #               <p>You can also list users with a client-side filter. The server-side filter matches
    #                   no more than one attribute. For an advanced search, use a client-side filter with
    #                   the <code>--query</code> parameter of the <code>list-users</code> action in the
    #                   CLI. When you use a client-side filter, ListUsers returns a paginated list of zero
    #                   or more users. You can receive multiple pages in a row with zero results. Repeat the
    #                   query with each pagination token that is returned until you receive a null
    #                   pagination token value, and then review the combined result. </p>
    #               <p>For more information about server-side and client-side filtering, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">FilteringCLI output</a> in the <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html">Command Line Interface
    #                       User Guide</a>. </p>
    #            </note>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api">Searching for Users Using the ListUsers API</a> and <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples">Examples of Using the ListUsers API</a> in the <i>Amazon Cognito Developer
    #                   Guide</i>.</p>
    # @example A ListUsers request for the next 3 users whose email address starts with "testuser."
    #   # This request submits a value for all possible parameters for ListUsers. By iterating the PaginationToken, you can page through and collect all users in a user pool.
    #   params = {
    #     attributes_to_get: [
    #       "email",
    #       "sub"
    #     ],
    #     filter: "\"email\"^=\"testuser\"",
    #     limit: 3,
    #     pagination_token: "abcd1234EXAMPLE",
    #     user_pool_id: "us-east-1_EXAMPLE"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    #   response.to_h #=>
    #   {
    #     pagination_token: "efgh5678EXAMPLE",
    #     users: [
    #       {
    #         attributes: [
    #           {
    #             name: "sub",
    #             value: "eaad0219-2117-439f-8d46-4db20e59268f"
    #           },
    #           {
    #             name: "email",
    #             value: "testuser@example.com"
    #           }
    #         ],
    #         enabled: true,
    #         user_create_date: Time.parse(1682955829.578),
    #         user_last_modified_date: Time.parse(1689030181.63),
    #         user_status: CONFIRMED,
    #         username: "testuser"
    #       },
    #       {
    #         attributes: [
    #           {
    #             name: "sub",
    #             value: "3b994cfd-0b07-4581-be46-3c82f9a70c90"
    #           },
    #           {
    #             name: "email",
    #             value: "testuser2@example.com"
    #           }
    #         ],
    #         enabled: true,
    #         user_create_date: Time.parse(1684427979.201),
    #         user_last_modified_date: Time.parse(1684427979.201),
    #         user_status: UNCONFIRMED,
    #         username: "testuser2"
    #       },
    #       {
    #         attributes: [
    #           {
    #             name: "sub",
    #             value: "5929e0d1-4c34-42d1-9b79-a5ecacfe66f7"
    #           },
    #           {
    #             name: "email",
    #             value: "testuser3@example.com"
    #           }
    #         ],
    #         enabled: true,
    #         user_create_date: Time.parse(1684427823.641),
    #         user_last_modified_date: Time.parse(1684427823.641),
    #         user_status: UNCONFIRMED,
    #         username: "testuser3@example.com"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     attributes_to_get: ["AttributeNameType"],
    #     limit: 1,
    #     pagination_token: "SearchPaginationTokenType",
    #     filter: "UserFilterType"
    #   }
    #   options = {}
    #   response = client.list_users(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         username: "UsernameType",
    #         attributes: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType"
    #           }
    #         ],
    #         user_create_date: Time.now,
    #         user_last_modified_date: Time.now,
    #         enabled: false,
    #         user_status: "UNCONFIRMED" # One of: ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"],
    #         mfa_options: [
    #           {
    #             delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #             attribute_name: "AttributeNameType"
    #           }
    #         ]
    #       }
    #     ],
    #     pagination_token: "SearchPaginationTokenType"
    #   }
    # @return [Types::ListUsersResponse]
    def list_users(params = {}, options = {})
      request = build_request(:list_users, params)
      request.send_request(options)
    end

    # <p>Given a user pool ID and a group name, returns a list of users in the group. For more
    #             information about user pool groups, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html">Adding groups to a user pool</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::ListUsersInGroupRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to view the membership of the requested
    #               group.</p>
    # @option params [String] :group_name
    #   <p>The name of the group that you want to query for user membership.</p>
    # @option params [Integer] :limit
    #   <p>The maximum number of groups that you want Amazon Cognito to return in the response. In some
    #               SDK contexts, this operation might return fewer items than you specify in the
    #                   <code>Limit</code> parameter without having reached the end of the full list. If the
    #               response contains a <code>PaginationToken</code>, then there are more results.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     group_name: "GroupNameType", # required
    #     limit: 1,
    #     next_token: "PaginationKey"
    #   }
    #   options = {}
    #   response = client.list_users_in_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     users: [
    #       {
    #         username: "UsernameType",
    #         attributes: [
    #           {
    #             name: "AttributeNameType", # required
    #             value: "AttributeValueType"
    #           }
    #         ],
    #         user_create_date: Time.now,
    #         user_last_modified_date: Time.now,
    #         enabled: false,
    #         user_status: "UNCONFIRMED" # One of: ["UNCONFIRMED", "CONFIRMED", "ARCHIVED", "COMPROMISED", "UNKNOWN", "RESET_REQUIRED", "FORCE_CHANGE_PASSWORD", "EXTERNAL_PROVIDER"],
    #         mfa_options: [
    #           {
    #             delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #             attribute_name: "AttributeNameType"
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::ListUsersInGroupResponse]
    def list_users_in_group(params = {}, options = {})
      request = build_request(:list_users_in_group, params)
      request.send_request(options)
    end

    # <p>Generates a list of the currently signed-in user's registered passkey, or
    #             WebAuthn, credentials.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::ListWebAuthnCredentialsRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :next_token
    #   <p>This API operation returns a limited number of results. The pagination token is
    #   an identifier that you can present in an additional API request with the same parameters. When
    #   you include the pagination token, Amazon Cognito returns the next set of items after the current list.
    #   Subsequent requests return a new pagination token. By use of this token, you can paginate
    #   through the full list of items.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of the user's passkey credentials that you want to
    #               return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     next_token: "PaginationKey",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_web_authn_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credentials: [ # required
    #       {
    #         credential_id: "StringType", # required
    #         friendly_credential_name: "StringType", # required
    #         relying_party_id: "StringType", # required
    #         authenticator_attachment: "WebAuthnAuthenticatorAttachmentType",
    #         authenticator_transports: ["WebAuthnAuthenticatorTransportType"], # required
    #         created_at: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationKey"
    #   }
    # @return [Types::ListWebAuthnCredentialsResponse]
    def list_web_authn_credentials(params = {}, options = {})
      request = build_request(:list_web_authn_credentials, params)
      request.send_request(options)
    end

    # <p>Resends the code that confirms a new account for a user who has signed up in your user
    #             pool. Amazon Cognito sends confirmation codes to the user attribute in the
    #                 <code>AutoVerifiedAttributes</code> property of your user pool. When you prompt new
    #             users for the confirmation code, include a "Resend code" option that generates a call to
    #             this API operation.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::ResendConfirmationCodeRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the user pool app client where the user signed up.</p>
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    # @option params [Types::UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType"
    #     },
    #     username: "UsernameType", # required
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.resend_confirmation_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_delivery_details: {
    #       destination: "StringType",
    #       delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #       attribute_name: "AttributeNameType"
    #     }
    #   }
    # @return [Types::ResendConfirmationCodeResponse]
    def resend_confirmation_code(params = {}, options = {})
      request = build_request(:resend_confirmation_code, params)
      request.send_request(options)
    end

    # <p>Some API operations in a user pool generate a challenge, like a prompt for an MFA
    #             code, for device authentication that bypasses MFA, or for a custom authentication
    #             challenge. A <code>RespondToAuthChallenge</code> API request provides the answer to that
    #             challenge, like a code or a secure remote password (SRP). The parameters of a response
    #             to an authentication challenge vary with the type of challenge.</p>
    #          <p>For more information about custom authentication challenges, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-challenge.html">Custom
    #                 authentication challenge Lambda triggers</a>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::RespondToAuthChallengeRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the app client where the user is signing in.</p>
    # @option params [String] :challenge_name
    #   <p>The name of the challenge that you are responding to.</p>
    #            <note>
    #               <p>You can't respond to an <code>ADMIN_NO_SRP_AUTH</code> challenge with this
    #                   operation.</p>
    #            </note>
    #            <p>Possible challenges include the following:</p>
    #            <note>
    #               <p>All of the following challenges require <code>USERNAME</code> and, when the app
    #                   client has a client secret, <code>SECRET_HASH</code> in the parameters. Include a
    #                   <code>DEVICE_KEY</code> for device authentication.</p>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>WEB_AUTHN</code>: Respond to the challenge with the results of a
    #                       successful authentication with a WebAuthn authenticator, or passkey, as
    #                       <code>CREDENTIAL</code>. Examples of WebAuthn authenticators include
    #                       biometric devices and security keys.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD</code>: Respond with the user's password as <code>PASSWORD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_SRP</code>: Respond with the initial SRP secret as <code>SRP_A</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SELECT_CHALLENGE</code>: Respond with a challenge selection as <code>ANSWER</code>.
    #                   It must be one of the challenge types in the <code>AvailableChallenges</code> response
    #                   parameter. Add the parameters of the selected challenge, for example <code>USERNAME</code>
    #                   and <code>SMS_OTP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_MFA</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_MFA</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_MFA_CODE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL_OTP</code>: Respond with the code that your user pool delivered in an email
    #                       message, as <code>EMAIL_OTP_CODE</code> .</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SMS_OTP</code>: Respond with the code that your user pool delivered in an SMS
    #                       message, as <code>SMS_OTP_CODE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASSWORD_VERIFIER</code>: Respond with the second stage of SRP secrets as
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>, <code>PASSWORD_CLAIM_SECRET_BLOCK</code>,
    #                           and <code>TIMESTAMP</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CUSTOM_CHALLENGE</code>: This is returned if your custom authentication
    #                       flow determines that the user should pass another challenge before tokens are
    #                       issued. The parameters of the challenge are determined by your Lambda function
    #                       and issued in the <code>ChallengeParameters</code> of a challenge response.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_SRP_AUTH</code>: Respond with the initial parameters of device SRP
    #                   authentication. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEVICE_PASSWORD_VERIFIER</code>: Respond with
    #                           <code>PASSWORD_CLAIM_SIGNATURE</code>,
    #                           <code>PASSWORD_CLAIM_SECRET_BLOCK</code>, and <code>TIMESTAMP</code> after
    #                       client-side SRP calculations. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html#user-pools-remembered-devices-signing-in-with-a-device">Signing in with a device</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NEW_PASSWORD_REQUIRED</code>: For users who are required to change their
    #                       passwords after successful first login. Respond to this challenge with
    #                       <code>NEW_PASSWORD</code> and any required attributes that Amazon Cognito returned in
    #                       the <code>requiredAttributes</code> parameter. You can also set values for
    #                       attributes that aren't required by your user pool and that your app client
    #                       can write.</p>
    #                  <p>Amazon Cognito only returns this challenge for users who have temporary passwords.
    #                       When you create passwordless users, you must provide values for all required
    #                       attributes.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MFA_SETUP</code>: For users who are required to setup an MFA factor
    #                       before they can sign in. The MFA types activated for the user pool will be
    #                       listed in the challenge parameters <code>MFAS_CAN_SETUP</code> value. </p>
    #                  <p>To set up time-based one-time password (TOTP) MFA, use the session returned
    #                       in this challenge from <code>InitiateAuth</code> or <code>AdminInitiateAuth</code>
    #                       as an input to <code>AssociateSoftwareToken</code>. Then, use the session returned
    #                       by <code>VerifySoftwareToken</code> as an input to
    #                       <code>RespondToAuthChallenge</code> or <code>AdminRespondToAuthChallenge</code>
    #                   with challenge name <code>MFA_SETUP</code> to complete sign-in.
    #                   </p>
    #                  <p>To set up SMS or email MFA, collect a <code>phone_number</code> or
    #                       <code>email</code> attribute for the user. Then restart the authentication
    #                       flow with an <code>InitiateAuth</code> or <code>AdminInitiateAuth</code> request.
    #                   </p>
    #               </li>
    #            </ul>
    # @option params [String] :session
    #   <p>The session identifier that maintains the state of authentication requests and
    #               challenge responses. If an <code>AdminInitiateAuth</code> or
    #                   <code>AdminRespondToAuthChallenge</code> API request results in a determination that
    #               your application must pass another challenge, Amazon Cognito returns a session with other
    #               challenge parameters. Send this session identifier, unmodified, to the next
    #                   <code>AdminRespondToAuthChallenge</code> request.</p>
    # @option params [Hash<String, String>] :challenge_responses
    #   <p>The responses to the challenge that you received in the previous request. Each
    #       challenge has its own required response parameters. The following examples are partial
    #       JSON request bodies that highlight challenge-response parameters.</p>
    #            <important>
    #               <p>You must provide a SECRET_HASH parameter in all challenge responses to an app
    #           client that has a client secret. Include a <code>DEVICE_KEY</code> for device
    #           authentication.</p>
    #            </important>
    #            <dl>
    #               <dt>SELECT_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #               "USERNAME": "[username]",
    #               "ANSWER": "[Challenge name]"}</code>
    #                  </p>
    #                  <p>Available challenges are <code>PASSWORD</code>, <code>PASSWORD_SRP</code>,
    #               <code>EMAIL_OTP</code>, <code>SMS_OTP</code>, and <code>WEB_AUTHN</code>.</p>
    #                  <p>Complete authentication in the <code>SELECT_CHALLENGE</code> response for
    #               <code>PASSWORD</code>, <code>PASSWORD_SRP</code>, and <code>WEB_AUTHN</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "WEB_AUTHN",
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                        </p>
    #                        <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD",
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "PASSWORD_SRP",
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For <code>SMS_OTP</code> and <code>EMAIL_OTP</code>, respond with the
    #               username and answer. Your user pool will send a code for the user to submit in
    #               the next challenge response.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "SMS_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>"ChallengeName": "SELECT_CHALLENGE", "ChallengeResponses": {
    #                     "ANSWER": "EMAIL_OTP",
    #                     "USERNAME": "[username]"}</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </dd>
    #               <dt>WEB_AUTHN</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "WEB_AUTHN", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "CREDENTIAL": "[AuthenticationResponseJSON]"}</code>
    #                  </p>
    #                  <p>See <a href="https://www.w3.org/TR/WebAuthn-3/#dictdef-authenticationresponsejson">
    #                     AuthenticationResponseJSON</a>.</p>
    #               </dd>
    #               <dt>PASSWORD</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "PASSWORD": "[password]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_SRP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_SRP", "ChallengeResponses": {
    #                     "USERNAME": "[username]",
    #                     "SRP_A": "[SRP_A]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_OTP", "ChallengeResponses":
    #               {"SMS_OTP_CODE": "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>EMAIL_OTP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "EMAIL_OTP", "ChallengeResponses": {"EMAIL_OTP_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>SMS_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SMS_MFA", "ChallengeResponses": {"SMS_MFA_CODE":
    #                       "[code]", "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>This challenge response is part of the SRP flow. Amazon Cognito requires
    #               that your application respond to this challenge within a few seconds. When
    #               the response time exceeds this period, your user pool returns a
    #               <code>NotAuthorizedException</code> error.</p>
    #                  <p>
    #                     <code>"ChallengeName": "PASSWORD_VERIFIER", "ChallengeResponses":
    #                       {"PASSWORD_CLAIM_SIGNATURE": "[claim_signature]",
    #                       "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]", "TIMESTAMP":
    #                       [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>CUSTOM_CHALLENGE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "CUSTOM_CHALLENGE", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "ANSWER": "[challenge_answer]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>NEW_PASSWORD_REQUIRED</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "NEW_PASSWORD_REQUIRED", "ChallengeResponses":
    #                       {"NEW_PASSWORD": "[new_password]", "USERNAME":
    #                   "[username]"}</code>
    #                  </p>
    #                  <p>To set any required attributes that <code>InitiateAuth</code> returned in
    #                   an <code>requiredAttributes</code> parameter, add
    #                       <code>"userAttributes.[attribute_name]": "[attribute_value]"</code>.
    #                   This parameter can also set values for writable attributes that aren't
    #                   required by your user pool.</p>
    #                  <note>
    #                     <p>In a <code>NEW_PASSWORD_REQUIRED</code> challenge response, you can't modify a required attribute that already has a value.
    #   In <code>AdminRespondToAuthChallenge</code> or <code>RespondToAuthChallenge</code>, set a value for any keys that Amazon Cognito returned in the
    #   <code>requiredAttributes</code> parameter, then use the <code>AdminUpdateUserAttributes</code> or <code>UpdateUserAttributes</code> API
    #   operation to modify the value of any additional attributes.</p>
    #                  </note>
    #               </dd>
    #               <dt>SOFTWARE_TOKEN_MFA</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SOFTWARE_TOKEN_MFA", "ChallengeResponses":
    #                       {"USERNAME": "[username]", "SOFTWARE_TOKEN_MFA_CODE":
    #                       [authenticator_code]}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_SRP_AUTH</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_SRP_AUTH", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "DEVICE_KEY": "[device_key]", "SRP_A":
    #                   "[srp_a]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>DEVICE_PASSWORD_VERIFIER</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "DEVICE_PASSWORD_VERIFIER", "ChallengeResponses":
    #                   {"DEVICE_KEY": "[device_key]", "PASSWORD_CLAIM_SIGNATURE":
    #                   "[claim_signature]", "PASSWORD_CLAIM_SECRET_BLOCK": "[secret_block]",
    #                   "TIMESTAMP": [timestamp], "USERNAME": "[username]"}</code>
    #                  </p>
    #               </dd>
    #               <dt>MFA_SETUP</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "MFA_SETUP", "ChallengeResponses": {"USERNAME":
    #                   "[username]"}, "SESSION": "[Session ID from
    #                   VerifySoftwareToken]"</code>
    #                  </p>
    #               </dd>
    #               <dt>SELECT_MFA_TYPE</dt>
    #               <dd>
    #                  <p>
    #                     <code>"ChallengeName": "SELECT_MFA_TYPE", "ChallengeResponses": {"USERNAME":
    #                   "[username]", "ANSWER": "[SMS_MFA|EMAIL_MFA|SOFTWARE_TOKEN_MFA]"}</code>
    #                  </p>
    #               </dd>
    #            </dl>
    #            <p>For more information about <code>SECRET_HASH</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>. For information about
    #       <code>DEVICE_KEY</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Types::UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     challenge_name: "SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"], # required
    #     session: "SessionType",
    #     challenge_responses: {
    #       "StringType" => "StringType"
    #     },
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.respond_to_auth_challenge(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     challenge_name: "SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"],
    #     session: "SessionType",
    #     challenge_parameters: {
    #       "StringType" => "StringType"
    #     },
    #     authentication_result: {
    #       access_token: "TokenModelType",
    #       expires_in: 1,
    #       token_type: "StringType",
    #       refresh_token: "TokenModelType",
    #       id_token: "TokenModelType",
    #       new_device_metadata: {
    #         device_key: "DeviceKeyType",
    #         device_group_key: "StringType"
    #       }
    #     },
    #     available_challenges: ["SMS_MFA" # One of: ["SMS_MFA", "EMAIL_OTP", "SOFTWARE_TOKEN_MFA", "SELECT_MFA_TYPE", "MFA_SETUP", "PASSWORD_VERIFIER", "CUSTOM_CHALLENGE", "SELECT_CHALLENGE", "DEVICE_SRP_AUTH", "DEVICE_PASSWORD_VERIFIER", "ADMIN_NO_SRP_AUTH", "NEW_PASSWORD_REQUIRED", "SMS_OTP", "PASSWORD", "WEB_AUTHN", "PASSWORD_SRP"]]
    #   }
    # @return [Types::RespondToAuthChallengeResponse]
    def respond_to_auth_challenge(params = {}, options = {})
      request = build_request(:respond_to_auth_challenge, params)
      request.send_request(options)
    end

    # <p>Revokes all of the access tokens generated by, and at the same time as, the specified
    #             refresh token. After a token is revoked, you can't use the revoked token to access Amazon Cognito
    #             user APIs, or to authorize access to your resource server.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::RevokeTokenRequest] params
    # @option params [String] :token
    #   <p>The refresh token that you want to revoke.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client where the token that you want to revoke was issued.</p>
    # @option params [String] :client_secret
    #   <p>The client secret of the requested app client, if the client has a secret.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     token: "TokenModelType", # required
    #     client_id: "ClientIdType", # required
    #     client_secret: "ClientSecretType"
    #   }
    #   options = {}
    #   response = client.revoke_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::RevokeTokenResponse]
    def revoke_token(params = {}, options = {})
      request = build_request(:revoke_token, params)
      request.send_request(options)
    end

    # <p>Sets up or modifies the logging configuration of a user pool. User pools can export
    #             user notification logs and, when threat protection is active, user-activity logs. For
    #             more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/exporting-quotas-and-usage.html">Exporting user
    #                 pool logs</a>.</p>
    # @param [Hash, Types::SetLogDeliveryConfigurationRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to configure logging.</p>
    # @option params [Array<Types::LogConfigurationType>] :log_configurations
    #   <p>A collection of the logging configurations for a user pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     log_configurations: [ # required
    #       {
    #         log_level: "ERROR" # One of: ["ERROR", "INFO"], # required
    #         event_source: "userNotification" # One of: ["userNotification", "userAuthEvents"], # required
    #         cloud_watch_logs_configuration: {
    #           log_group_arn: "ArnType"
    #         },
    #         s3_configuration: {
    #           bucket_arn: "S3ArnType"
    #         },
    #         firehose_configuration: {
    #           stream_arn: "ArnType"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.set_log_delivery_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     log_delivery_configuration: {
    #       user_pool_id: "UserPoolIdType", # required
    #       log_configurations: [ # required
    #         {
    #           log_level: "ERROR" # One of: ["ERROR", "INFO"], # required
    #           event_source: "userNotification" # One of: ["userNotification", "userAuthEvents"], # required
    #           cloud_watch_logs_configuration: {
    #             log_group_arn: "ArnType"
    #           },
    #           s3_configuration: {
    #             bucket_arn: "S3ArnType"
    #           },
    #           firehose_configuration: {
    #             stream_arn: "ArnType"
    #           }
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::SetLogDeliveryConfigurationResponse]
    def set_log_delivery_configuration(params = {}, options = {})
      request = build_request(:set_log_delivery_configuration, params)
      request.send_request(options)
    end

    # <p>Configures threat protection for a user pool or app client. Sets configuration for the
    #             following.</p>
    #          <ul>
    #             <li>
    #                <p>Responses to risks with adaptive authentication</p>
    #             </li>
    #             <li>
    #                <p>Responses to vulnerable passwords with compromised-credentials
    #                     detection</p>
    #             </li>
    #             <li>
    #                <p>Notifications to users who have had risky activity detected</p>
    #             </li>
    #             <li>
    #                <p>IP-address denylist and allowlist</p>
    #             </li>
    #          </ul>
    #          <p>To set the risk configuration for the user pool to defaults, send this request with
    #             only the <code>UserPoolId</code> parameter. To reset the threat protection settings of
    #             an app client to be inherited from the user pool, send <code>UserPoolId</code> and
    #                 <code>ClientId</code> parameters only. To change threat protection to audit-only or
    #             off, update the value of <code>UserPoolAddOns</code> in an <code>UpdateUserPool</code>
    #             request. To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                      Plus tier</a>.</p>
    #          <p>In secondary regions for user pools with multi-region replication, only the
    #                 <code>SourceARN</code> and <code>From</code> attributes of
    #                 <code>NotifyConfiguration</code> can be modified to configure region-specific SES
    #             integration. All other risk configuration settings must match the existing values to
    #             maintain consistency across replicas.</p>
    # @param [Hash, Types::SetRiskConfigurationRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to set a risk configuration. If you include
    #                   <code>UserPoolId</code> in your request, don't include <code>ClientId</code>.
    #               When the client ID is null, the same risk configuration is applied to all the clients in
    #               the userPool. When you include both <code>ClientId</code> and <code>UserPoolId</code>,
    #               Amazon Cognito maps the configuration to the app client only.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client where you want to set a risk configuration. If
    #                   <code>ClientId</code> is null, then the risk configuration is mapped to
    #                   <code>UserPoolId</code>. When the client ID is null, the same risk configuration is
    #               applied to all the clients in the userPool.</p>
    #            <p>When you include a <code>ClientId</code> parameter, Amazon Cognito maps the configuration to
    #               the app client. When you include both <code>ClientId</code> and <code>UserPoolId</code>,
    #               Amazon Cognito maps the configuration to the app client only.</p>
    # @option params [Types::CompromisedCredentialsRiskConfigurationType] :compromised_credentials_risk_configuration
    #   <p>The configuration of automated reactions to detected compromised credentials. Includes
    #               settings for blocking future sign-in requests and for the types of password-submission
    #               events you want to monitor.</p>
    # @option params [Types::AccountTakeoverRiskConfigurationType] :account_takeover_risk_configuration
    #   <p>The settings for automated responses and notification templates for adaptive
    #               authentication with threat protection.</p>
    # @option params [Types::RiskExceptionConfigurationType] :risk_exception_configuration
    #   <p>A set of IP-address overrides to threat protection. You can set up IP-address
    #               always-block and always-allow lists.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #     compromised_credentials_risk_configuration: {
    #       event_filter: ["SIGN_IN" # One of: ["SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"]],
    #       actions: { # required
    #         event_action: "BLOCK" # One of: ["BLOCK", "NO_ACTION"], # required
    #       }
    #     },
    #     account_takeover_risk_configuration: {
    #       notify_configuration: {
    #         from: "StringType",
    #         reply_to: "StringType",
    #         source_arn: "ArnType", # required
    #         block_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType"
    #         },
    #         no_action_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType"
    #         },
    #         mfa_email: {
    #           subject: "EmailNotificationSubjectType", # required
    #           html_body: "EmailNotificationBodyType",
    #           text_body: "EmailNotificationBodyType"
    #         }
    #       },
    #       actions: { # required
    #         low_action: {
    #           notify: false, # required
    #           event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #         },
    #         medium_action: {
    #           notify: false, # required
    #           event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #         },
    #         high_action: {
    #           notify: false, # required
    #           event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #         }
    #       }
    #     },
    #     risk_exception_configuration: {
    #       blocked_ip_range_list: ["StringType"],
    #       skipped_ip_range_list: ["StringType"]
    #     }
    #   }
    #   options = {}
    #   response = client.set_risk_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     risk_configuration: { # required
    #       user_pool_id: "UserPoolIdType",
    #       client_id: "ClientIdType",
    #       compromised_credentials_risk_configuration: {
    #         event_filter: ["SIGN_IN" # One of: ["SIGN_IN", "PASSWORD_CHANGE", "SIGN_UP"]],
    #         actions: { # required
    #           event_action: "BLOCK" # One of: ["BLOCK", "NO_ACTION"], # required
    #         }
    #       },
    #       account_takeover_risk_configuration: {
    #         notify_configuration: {
    #           from: "StringType",
    #           reply_to: "StringType",
    #           source_arn: "ArnType", # required
    #           block_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType"
    #           },
    #           no_action_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType"
    #           },
    #           mfa_email: {
    #             subject: "EmailNotificationSubjectType", # required
    #             html_body: "EmailNotificationBodyType",
    #             text_body: "EmailNotificationBodyType"
    #           }
    #         },
    #         actions: { # required
    #           low_action: {
    #             notify: false, # required
    #             event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #           },
    #           medium_action: {
    #             notify: false, # required
    #             event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #           },
    #           high_action: {
    #             notify: false, # required
    #             event_action: "BLOCK" # One of: ["BLOCK", "MFA_IF_CONFIGURED", "MFA_REQUIRED", "NO_ACTION"], # required
    #           }
    #         }
    #       },
    #       risk_exception_configuration: {
    #         blocked_ip_range_list: ["StringType"],
    #         skipped_ip_range_list: ["StringType"]
    #       },
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::SetRiskConfigurationResponse]
    def set_risk_configuration(params = {}, options = {})
      request = build_request(:set_risk_configuration, params)
      request.send_request(options)
    end

    # <p>Configures UI branding settings for domains with the hosted UI (classic) branding
    #             version. Your user pool must have a domain. Configure a domain with .</p>
    #          <p>Set the default configuration for all clients with a <code>ClientId</code> of
    #                 <code>ALL</code>. When the <code>ClientId</code> value is an app client ID, the
    #             settings you pass in this request apply to that app client and override the default
    #                 <code>ALL</code> configuration.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::SetUICustomizationRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to apply branding to the classic hosted
    #               UI.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client that you want to customize. To apply a default style to all
    #               app clients not configured with client-level branding, set this parameter value to
    #                   <code>ALL</code>.</p>
    # @option params [String] :css
    #   <p>A plaintext CSS file that contains the custom fields that you want to apply to your
    #               user pool or app client. To download a template, go to the Amazon Cognito console. Navigate to
    #               your user pool <i>App clients</i> tab, select <i>Login
    #                   pages</i>, edit <i>Hosted UI (classic) style</i>, and select
    #               the link to <code>CSS template.css</code>.</p>
    # @option params [String] :image_file
    #   <p>The image that you want to set as your login in the classic hosted UI, as a
    #               Base64-formatted binary object.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType",
    #     css: "CSSType",
    #     image_file: "data"
    #   }
    #   options = {}
    #   response = client.set_ui_customization(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     ui_customization: { # required
    #       user_pool_id: "UserPoolIdType",
    #       client_id: "ClientIdType",
    #       image_url: "ImageUrlType",
    #       css: "CSSType",
    #       css_version: "CSSVersionType",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::SetUICustomizationResponse]
    def set_ui_customization(params = {}, options = {})
      request = build_request(:set_ui_customization, params)
      request.send_request(options)
    end

    # <p>Set the user's multi-factor authentication (MFA) method preference, including which
    #             MFA factors are activated and if any are preferred. Only one factor can be set as
    #             preferred. The preferred MFA factor will be used to authenticate a user if multiple
    #             factors are activated. If multiple options are activated and no preference is set, a
    #             challenge to choose an MFA option will be returned during sign-in. If an MFA type is
    #             activated for a user, the user will be prompted for MFA during all sign-in attempts
    #             unless device tracking is turned on and the device has been trusted. If you want MFA to
    #             be applied selectively based on the assessed risk level of sign-in attempts, deactivate
    #             MFA for users and turn on Adaptive Authentication for the user pool.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::SetUserMFAPreferenceRequest] params
    # @option params [Types::SMSMfaSettingsType] :sms_mfa_settings
    #   <p>User preferences for SMS message MFA. Activates or deactivates SMS MFA and sets it as
    #               the preferred MFA method when multiple methods are available.</p>
    # @option params [Types::SoftwareTokenMfaSettingsType] :software_token_mfa_settings
    #   <p>User preferences for time-based one-time password (TOTP) MFA. Activates or deactivates
    #               TOTP MFA and sets it as the preferred MFA method when multiple methods are available.
    #               Users must register a TOTP authenticator before they set this as their preferred MFA
    #               method.</p>
    # @option params [Types::EmailMfaSettingsType] :email_mfa_settings
    #   <p>User preferences for email message MFA. Activates or deactivates email MFA and sets it
    #               as the preferred MFA method when multiple methods are available.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    # @option params [Types::WebAuthnMfaSettingsType] :web_authn_mfa_settings
    #   <p>User preferences for passkey MFA. Activates or deactivates passkey MFA for the user.
    #               When activated, passkey authentication requires user verification, and passkey sign-in
    #               is available when MFA is required. To activate this setting, the
    #               <code>FactorConfiguration</code> of your user pool <code>WebAuthnConfiguration</code>
    #               must be <code>MULTI_FACTOR_WITH_USER_VERIFICATION</code>.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sms_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     software_token_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     email_mfa_settings: {
    #       enabled: false,
    #       preferred_mfa: false
    #     },
    #     web_authn_mfa_settings: {
    #       enabled: false
    #     },
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.set_user_mfa_preference(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetUserMFAPreferenceResponse]
    def set_user_mfa_preference(params = {}, options = {})
      request = build_request(:set_user_mfa_preference, params)
      request.send_request(options)
    end

    # <p>Sets user pool multi-factor authentication (MFA) and passkey configuration. For more
    #             information about user pool MFA, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-mfa.html">Adding MFA</a>. For more information about WebAuthn passkeys see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html#amazon-cognito-user-pools-authentication-flow-methods-passkey">Authentication flows</a>.</p>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::SetUserPoolMfaConfigRequest] params
    # @option params [String] :user_pool_id
    #   <p>The user pool ID.</p>
    # @option params [Types::SmsMfaConfigType] :sms_mfa_configuration
    #   <p>Configures user pool SMS messages for MFA. Sets the message template and the SMS
    #               message sending configuration for Amazon SNS.</p>
    # @option params [Types::SoftwareTokenMfaConfigType] :software_token_mfa_configuration
    #   <p>Configures a user pool for time-based one-time password (TOTP) MFA. Enables or
    #               disables TOTP.</p>
    # @option params [Types::EmailMfaConfigType] :email_mfa_configuration
    #   <p>Sets configuration for user pool email message MFA and sign-in with one-time passwords
    #               (OTPs). Includes the subject and body of the email message template for sign-in and MFA
    #               messages. To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    # @option params [String] :mfa_configuration
    #   <p>Sets multi-factor authentication (MFA) to be on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    # @option params [Types::WebAuthnConfigurationType] :web_authn_configuration
    #   <p>The configuration of your user pool for passkey, or WebAuthn, authentication and
    #               registration. Includes relying-party configuration, user-verification requirements,
    #               and whether passkeys can satisfy MFA requirements.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     sms_mfa_configuration: {
    #       sms_authentication_message: "SmsVerificationMessageType",
    #       sms_configuration: {
    #         sns_caller_arn: "OptionalArnType",
    #         external_id: "StringType",
    #         sns_region: "RegionCodeType",
    #         eums_sms: {
    #           caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #           origination_identity: "StringType",
    #           configuration_set_name: "StringType",
    #           in_entity_id: "StringType",
    #           in_template_id: "StringType",
    #           region: "RegionCodeType"
    #         }
    #       }
    #     },
    #     software_token_mfa_configuration: {
    #       enabled: false
    #     },
    #     email_mfa_configuration: {
    #       message: "EmailMfaMessageType",
    #       subject: "EmailMfaSubjectType"
    #     },
    #     mfa_configuration: "OFF" # One of: ["OFF", "ON", "OPTIONAL"],
    #     web_authn_configuration: {
    #       relying_party_id: "RelyingPartyIdType",
    #       user_verification: "required" # One of: ["required", "preferred"],
    #       factor_configuration: "SINGLE_FACTOR" # One of: ["SINGLE_FACTOR", "MULTI_FACTOR_WITH_USER_VERIFICATION"]
    #     }
    #   }
    #   options = {}
    #   response = client.set_user_pool_mfa_config(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sms_mfa_configuration: {
    #       sms_authentication_message: "SmsVerificationMessageType",
    #       sms_configuration: {
    #         sns_caller_arn: "OptionalArnType",
    #         external_id: "StringType",
    #         sns_region: "RegionCodeType",
    #         eums_sms: {
    #           caller_arn: "ArnType", # required
    #           external_id: "StringType",
    #           origination_identity: "StringType",
    #           configuration_set_name: "StringType",
    #           in_entity_id: "StringType",
    #           in_template_id: "StringType",
    #           region: "RegionCodeType"
    #         }
    #       }
    #     },
    #     software_token_mfa_configuration: {
    #       enabled: false
    #     },
    #     email_mfa_configuration: {
    #       message: "EmailMfaMessageType",
    #       subject: "EmailMfaSubjectType"
    #     },
    #     mfa_configuration: "OFF" # One of: ["OFF", "ON", "OPTIONAL"],
    #     web_authn_configuration: {
    #       relying_party_id: "RelyingPartyIdType",
    #       user_verification: "required" # One of: ["required", "preferred"],
    #       factor_configuration: "SINGLE_FACTOR" # One of: ["SINGLE_FACTOR", "MULTI_FACTOR_WITH_USER_VERIFICATION"]
    #     }
    #   }
    # @return [Types::SetUserPoolMfaConfigResponse]
    def set_user_pool_mfa_config(params = {}, options = {})
      request = build_request(:set_user_pool_mfa_config, params)
      request.send_request(options)
    end

    # <p>
    #             <i>This action is no longer supported.</i> You can use it to configure
    #             only SMS MFA. You can't use it to configure time-based one-time password (TOTP) software
    #             token or email MFA.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::SetUserSettingsRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [Array<Types::MFAOptionType>] :mfa_options
    #   <p>You can use this parameter only to set an SMS configuration that uses SMS for
    #               delivery.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     mfa_options: [ # required
    #       {
    #         delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #         attribute_name: "AttributeNameType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.set_user_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetUserSettingsResponse]
    def set_user_settings(params = {}, options = {})
      request = build_request(:set_user_settings, params)
      request.send_request(options)
    end

    # <p>Registers a user with an app client and requests a user name, password, and user
    #             attributes in the user pool.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    #          <p>You might receive a <code>LimitExceeded</code> exception in response to this request
    #             if you have exceeded a rate quota for email or SMS messages, and if your user pool
    #             automatically verifies email addresses or phone numbers. When you get this exception in
    #             the response, the user is successfully created and is in an <code>UNCONFIRMED</code>
    #             state.</p>
    # @param [Hash, Types::SignUpRequest] params
    # @option params [String] :client_id
    #   <p>The ID of the app client where the user wants to sign up.</p>
    # @option params [String] :secret_hash
    #   <p>A keyed-hash message authentication code (HMAC) calculated using the secret key of a
    #               user pool client and username plus the client ID in the message. For more information
    #               about <code>SecretHash</code>, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#cognito-user-pools-computing-secret-hash">Computing secret hash values</a>.</p>
    # @option params [String] :username
    #   <p>The username of the user that you want to sign up. The value of this parameter is
    #               typically a username, but can be any alias attribute in your user pool.</p>
    # @option params [String] :password
    #   <p>The user's proposed password. The password must comply with the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/managing-users-passwords.html">password requirements</a> of your user pool.</p>
    #            <p>Users can sign up without a password when your user pool supports passwordless sign-in
    #               with email or SMS OTPs. To create a user with no password, omit this parameter or submit
    #               a blank value. You can only create a passwordless user when passwordless sign-in is
    #               available.</p>
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #            <p>For custom attributes, include a <code>custom:</code> prefix in the attribute name,
    #               for example <code>custom:department</code>.</p>
    # @option params [Array<Types::AttributeType>] :validation_data
    #   <p>Temporary user attributes that contribute to the outcomes of your pre sign-up Lambda
    #       trigger. This set of key-value pairs are for custom validation of information that you
    #       collect from your users but don't need to retain.</p>
    #            <p>Your Lambda function can analyze this additional data and act on it. Your function
    #       can automatically confirm and verify select users or perform external API operations
    #       like logging user attributes and validation data to Amazon CloudWatch Logs.</p>
    #            <p>For more information about the pre sign-up Lambda trigger, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-lambda-pre-sign-up.html">Pre sign-up Lambda trigger</a>.</p>
    # @option params [Types::AnalyticsMetadataType] :analytics_metadata
    #   <p>Information that supports analytics outcomes with Amazon Pinpoint, including the
    #   user's endpoint ID. The endpoint ID is a destination for Amazon Pinpoint push notifications, for example a device identifier,
    #   email address, or phone number.</p>
    # @option params [Types::UserContextDataType] :user_context_data
    #   <p>Contextual data about your user session like the device fingerprint, IP address, or location. Amazon Cognito threat
    #   protection evaluates the risk of an authentication event based on the context that your app generates and passes to Amazon Cognito
    #   when it makes API requests.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-viewing-threat-protection-app.html">Collecting data for threat protection in
    #   applications</a>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_id: "ClientIdType", # required
    #     secret_hash: "SecretHashType",
    #     username: "UsernameType", # required
    #     password: "PasswordType",
    #     user_attributes: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     validation_data: [
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     analytics_metadata: {
    #       analytics_endpoint_id: "StringType"
    #     },
    #     user_context_data: {
    #       ip_address: "StringType",
    #       encoded_data: "StringType"
    #     },
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.sign_up(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_confirmed: false, # required
    #     code_delivery_details: {
    #       destination: "StringType",
    #       delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #       attribute_name: "AttributeNameType"
    #     },
    #     user_sub: "StringType", # required
    #     session: "SessionType"
    #   }
    # @return [Types::SignUpResponse]
    def sign_up(params = {}, options = {})
      request = build_request(:sign_up, params)
      request.send_request(options)
    end

    # <p>Instructs your user pool to start importing users from a CSV file that contains their
    #             usernames and attributes. For more information about importing users from a CSV file,
    #             see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html">Importing users from a CSV file</a>.</p>
    # @param [Hash, Types::StartUserImportJobRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that you want to start importing users into.</p>
    # @option params [String] :job_id
    #   <p>The ID of a user import job that you previously created.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   }
    #   options = {}
    #   response = client.start_user_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_import_job: {
    #       job_name: "UserImportJobNameType",
    #       job_id: "UserImportJobIdType",
    #       user_pool_id: "UserPoolIdType",
    #       pre_signed_url: "PreSignedUrlType",
    #       creation_date: Time.now,
    #       start_date: Time.now,
    #       completion_date: Time.now,
    #       status: "Created" # One of: ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"],
    #       cloud_watch_logs_role_arn: "ArnType",
    #       imported_users: 1,
    #       skipped_users: 1,
    #       failed_users: 1,
    #       completion_message: "CompletionMessageType",
    #       password_hashing_algorithm: "BCRYPT" # One of: ["BCRYPT", "SCRYPT", "ARGON2ID", "PBKDF2_SHA256"]
    #     }
    #   }
    # @return [Types::StartUserImportJobResponse]
    def start_user_import_job(params = {}, options = {})
      request = build_request(:start_user_import_job, params)
      request.send_request(options)
    end

    # <p>Requests credential creation options from your user pool for the currently signed-in
    #             user. Returns information about the user pool, the user profile, and authentication
    #             requirements. Users must provide this information in their request to enroll your
    #             application with their passkey provider.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    # @param [Hash, Types::StartWebAuthnRegistrationRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #   }
    #   options = {}
    #   response = client.start_web_authn_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     credential_creation_options: ""null"", # required
    #   }
    # @return [Types::StartWebAuthnRegistrationResponse]
    def start_web_authn_registration(params = {}, options = {})
      request = build_request(:start_web_authn_registration, params)
      request.send_request(options)
    end

    # <p>Instructs your user pool to stop a running job that's importing users from a CSV
    #             file that contains their usernames and attributes. For more information about importing
    #             users from a CSV file, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-using-import-tool.html">Importing users from a CSV file</a>.</p>
    # @param [Hash, Types::StopUserImportJobRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that you want to stop.</p>
    # @option params [String] :job_id
    #   <p>The ID of a running user import job.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     job_id: "UserImportJobIdType", # required
    #   }
    #   options = {}
    #   response = client.stop_user_import_job(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_import_job: {
    #       job_name: "UserImportJobNameType",
    #       job_id: "UserImportJobIdType",
    #       user_pool_id: "UserPoolIdType",
    #       pre_signed_url: "PreSignedUrlType",
    #       creation_date: Time.now,
    #       start_date: Time.now,
    #       completion_date: Time.now,
    #       status: "Created" # One of: ["Created", "Pending", "InProgress", "Stopping", "Expired", "Stopped", "Failed", "Succeeded"],
    #       cloud_watch_logs_role_arn: "ArnType",
    #       imported_users: 1,
    #       skipped_users: 1,
    #       failed_users: 1,
    #       completion_message: "CompletionMessageType",
    #       password_hashing_algorithm: "BCRYPT" # One of: ["BCRYPT", "SCRYPT", "ARGON2ID", "PBKDF2_SHA256"]
    #     }
    #   }
    # @return [Types::StopUserImportJobResponse]
    def stop_user_import_job(params = {}, options = {})
      request = build_request(:stop_user_import_job, params)
      request.send_request(options)
    end

    # <p>Assigns a set of tags to an Amazon Cognito user pool. A tag is a label that you can use to
    #             categorize and manage user pools in different ways, such as by purpose, owner,
    #             environment, or other criteria.</p>
    #          <p>Each tag consists of a key and value, both of which you define. A key is a general
    #             category for more specific values. For example, if you have two versions of a user pool,
    #             one for testing and another for production, you might assign an <code>Environment</code>
    #             tag key to both user pools. The value of this key might be <code>Test</code> for one
    #             user pool, and <code>Production</code> for the other.</p>
    #          <p>Tags are useful for cost tracking and access control. You can activate your tags so
    #             that they appear on the Billing and Cost Management console, where you can track the
    #             costs associated with your user pools. In an Identity and Access Management policy, you can constrain
    #             permissions for user pools based on specific tags or tag values.</p>
    #          <p>You can use this action up to 5 times per second, per account. A user pool can have as
    #             many as 50 tags.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool to assign the tags to.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>An array of tag keys and values that you want to assign to the user pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ArnType", # required
    #     tags: { # required
    #       "TagKeysType" => "TagValueType"
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

    # <p>Given tag IDs that you previously assigned to a user pool, removes them.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the user pool that the tags are assigned to.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>An array of tag keys that you want to remove from the user pool.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ArnType", # required
    #     tag_keys: ["TagKeysType"], # required
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

    # <p>Provides the feedback for an authentication event generated by threat protection
    #             features. The user's response indicates that you think that the event either was from a
    #             valid user or was an unwanted authentication attempt. This feedback improves the risk
    #             evaluation decision for the user pool as part of Amazon Cognito threat protection.
    #             To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                      Plus tier</a>.</p>
    #          <p>This operation requires a <code>FeedbackToken</code> that Amazon Cognito generates and adds to
    #             notification emails when users have potentially suspicious authentication events. Users
    #             invoke this operation when they select the link that corresponds to
    #                 <code>{one-click-link-valid}</code> or <code>{one-click-link-invalid}</code> in your
    #             notification template. Because <code>FeedbackToken</code> is a required parameter, you
    #             can't make requests to <code>UpdateAuthEventFeedback</code> without the contents of
    #             the notification email message.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::UpdateAuthEventFeedbackRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to update auth event feedback.</p>
    # @option params [String] :username
    #   <p>The name of the user that you want to query or modify. The value of this parameter
    #               is typically your user's username, but it can be any of their alias attributes. If
    #                   <code>username</code> isn't an alias attribute in your user pool, this value
    #               must be the <code>sub</code> of a local user or the username of a user from a
    #               third-party IdP.</p>
    # @option params [String] :event_id
    #   <p>The ID of the authentication event that you want to submit feedback for.</p>
    # @option params [String] :feedback_token
    #   <p>The feedback token, an encrypted object generated by Amazon Cognito and passed to your user in
    #               the notification email message from the event.</p>
    # @option params [String] :feedback_value
    #   <p>Your feedback to the authentication event. When you provide a <code>FeedbackValue</code>
    #   value of <code>valid</code>, you tell Amazon Cognito that you trust a user session where Amazon Cognito
    #   has evaluated some level of risk. When you provide a <code>FeedbackValue</code> value of
    #   <code>invalid</code>, you tell Amazon Cognito that you don't trust a user session, or you
    #   don't believe that Amazon Cognito evaluated a high-enough risk level.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     username: "UsernameType", # required
    #     event_id: "EventIdType", # required
    #     feedback_token: "TokenModelType", # required
    #     feedback_value: "Valid" # One of: ["Valid", "Invalid"], # required
    #   }
    #   options = {}
    #   response = client.update_auth_event_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateAuthEventFeedbackResponse]
    def update_auth_event_feedback(params = {}, options = {})
      request = build_request(:update_auth_event_feedback, params)
      request.send_request(options)
    end

    # <p>Updates the status of a the currently signed-in user's device so that it is
    #             marked as remembered or not remembered for the purpose of device authentication. Device
    #             authentication is a "remember me" mechanism that silently completes sign-in from trusted
    #             devices with a device key instead of a user-provided MFA code. This operation changes
    #             the status of a device without deleting it, so you can enable it again later. For more
    #             information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::UpdateDeviceStatusRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :device_key
    #   <p>The device key of the device you want to update, for example
    #                   <code>us-west-2_a1b2c3d4-5678-90ab-cdef-EXAMPLE11111</code>.</p>
    # @option params [String] :device_remembered_status
    #   <p>To enable device authentication with the specified device, set to
    #                   <code>remembered</code>.To disable, set to <code>not_remembered</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     device_key: "DeviceKeyType", # required
    #     device_remembered_status: "remembered" # One of: ["remembered", "not_remembered"]
    #   }
    #   options = {}
    #   response = client.update_device_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateDeviceStatusResponse]
    def update_device_status(params = {}, options = {})
      request = build_request(:update_device_status, params)
      request.send_request(options)
    end

    # <p>Given the name of a user pool group, updates any of the properties for precedence,
    #             IAM role, or description. For more information about user pool groups, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-user-groups.html">Adding groups to a user pool</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateGroupRequest] params
    # @option params [String] :group_name
    #   <p>The name of the group that you want to update.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the group you want to update.</p>
    # @option params [String] :description
    #   <p>A new description of the existing group.</p>
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that you want to associate with the
    #               group. The role assignment contributes to the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims in group members' tokens.</p>
    # @option params [Integer] :precedence
    #   <p>A non-negative integer value that specifies the precedence of this group relative to
    #               the other groups that a user can belong to in the user pool. Zero is the highest
    #               precedence value. Groups with lower <code>Precedence</code> values take precedence over
    #               groups with higher or null <code>Precedence</code> values. If a user belongs to two or
    #               more groups, it is the group with the lowest precedence value whose role ARN is given in
    #               the user's tokens for the <code>cognito:roles</code> and
    #                   <code>cognito:preferred_role</code> claims.</p>
    #            <p>Two groups can have the same <code>Precedence</code> value. If this happens, neither
    #               group takes precedence over the other. If two groups with the same
    #                   <code>Precedence</code> have the same role ARN, that role is used in the
    #                   <code>cognito:preferred_role</code> claim in tokens for users in each group. If the
    #               two groups have different role ARNs, the <code>cognito:preferred_role</code> claim isn't
    #               set in users' tokens.</p>
    #            <p>The default <code>Precedence</code> value is null. The maximum <code>Precedence</code>
    #               value is <code>2^31-1</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     group_name: "GroupNameType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     description: "DescriptionType",
    #     role_arn: "ArnType",
    #     precedence: 1
    #   }
    #   options = {}
    #   response = client.update_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     group: {
    #       group_name: "GroupNameType",
    #       user_pool_id: "UserPoolIdType",
    #       description: "DescriptionType",
    #       role_arn: "ArnType",
    #       precedence: 1,
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::UpdateGroupResponse]
    def update_group(params = {}, options = {})
      request = build_request(:update_group, params)
      request.send_request(options)
    end

    # <p>Modifies the configuration and trust relationship between a third-party identity
    #             provider (IdP) and a user pool. Amazon Cognito accepts sign-in with third-party identity
    #             providers through managed login and OIDC relying-party libraries. For more information,
    #             see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-identity-federation.html">Third-party IdP sign-in</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateIdentityProviderRequest] params
    # @option params [String] :user_pool_id
    #   <p>The Id of the user pool where you want to update your IdP.</p>
    # @option params [String] :provider_name
    #   <p>The name of the IdP that you want to update. You can pass the identity provider name
    #               in the <code>identity_provider</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated
    #               IdP.</p>
    # @option params [Hash<String, String>] :provider_details
    #   <p>The scopes, URLs, and identifiers for your external identity provider. The following
    #   examples describe the provider detail keys for each IdP type. These values and their
    #   schema are subject to change. Social IdP <code>authorize_scopes</code> values must match
    #   the values listed here.</p>
    #            <dl>
    #               <dt>OpenID Connect (OIDC)</dt>
    #               <dd>
    #                  <p>Amazon Cognito accepts the following elements when it can't discover endpoint
    #                   URLs from <code>oidc_issuer</code>: <code>attributes_url</code>,
    #                       <code>authorize_url</code>, <code>jwks_uri</code>,
    #                       <code>token_url</code>.</p>
    #                  <p>Create or update request: <code>"ProviderDetails": {
    #                       "attributes_request_method": "GET", "attributes_url":
    #                       "https://auth.example.com/userInfo", "authorize_scopes": "openid profile
    #                       email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_request_method":
    #                       "GET", "attributes_url": "https://auth.example.com/userInfo",
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "openid
    #                       profile email", "authorize_url": "https://auth.example.com/authorize",
    #                       "client_id": "1example23456789", "client_secret":
    #                       "provider-app-client-secret", "jwks_uri":
    #                       "https://auth.example.com/.well-known/jwks.json", "oidc_issuer":
    #                       "https://auth.example.com", "token_url": "https://example.com/token"
    #                       }</code>
    #                  </p>
    #               </dd>
    #               <dt>SAML</dt>
    #               <dd>
    #                  <p>Create or update request with Metadata URL: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "MetadataURL":
    #                       "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>Create or update request with Metadata file: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true",
    #                       "MetadataFile": "[metadata XML]", "RequestSigningAlgorithm":
    #                       "rsa-sha256" }</code>
    #                  </p>
    #                  <p>The value of <code>MetadataFile</code> must be the plaintext metadata document with all
    #                   quote (") characters escaped by backslashes.</p>
    #                  <p>Describe response: <code>"ProviderDetails": { "IDPInit": "true",
    #                       "IDPSignout": "true", "EncryptedResponses" : "true", "ActiveEncryptionCertificate": "[certificate]",
    #                       "MetadataURL": "https://auth.example.com/sso/saml/metadata", "RequestSigningAlgorithm":
    #                       "rsa-sha256", "SLORedirectBindingURI":
    #                       "https://auth.example.com/slo/saml", "SSORedirectBindingURI":
    #                       "https://auth.example.com/sso/saml" }</code>
    #                  </p>
    #               </dd>
    #               <dt>LoginWithAmazon</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "profile postal_code", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret"</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://api.amazon.com/user/profile", "attributes_url_add_attributes":
    #                       "false", "authorize_scopes": "profile postal_code", "authorize_url":
    #                       "https://www.amazon.com/ap/oa", "client_id":
    #                       "amzn1.application-oa2-client.1example23456789", "client_secret":
    #                       "provider-app-client-secret", "token_request_method": "POST",
    #                       "token_url": "https://api.amazon.com/auth/o2/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Google</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email profile openid", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": { "attributes_url":
    #                       "https://people.googleapis.com/v1/people/me?personFields=",
    #                       "attributes_url_add_attributes": "true", "authorize_scopes": "email
    #                       profile openid", "authorize_url":
    #                       "https://accounts.google.com/o/oauth2/v2/auth", "client_id":
    #                       "1example23456789.apps.googleusercontent.com", "client_secret":
    #                       "provider-app-client-secret", "oidc_issuer":
    #                       "https://accounts.google.com", "token_request_method": "POST",
    #                       "token_url": "https://www.googleapis.com/oauth2/v4/token"
    #                   }</code>
    #                  </p>
    #               </dd>
    #               <dt>SignInWithApple</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "authorize_scopes":
    #                       "email name", "client_id": "com.example.cognito", "private_key": "1EXAMPLE",
    #                       "key_id": "2EXAMPLE", "team_id": "3EXAMPLE" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails": {
    #                       "attributes_url_add_attributes": "false", "authorize_scopes": "email
    #                       name", "authorize_url": "https://appleid.apple.com/auth/authorize",
    #                       "client_id": "com.example.cognito", "key_id": "1EXAMPLE", "oidc_issuer":
    #                       "https://appleid.apple.com", "team_id": "2EXAMPLE",
    #                       "token_request_method": "POST", "token_url":
    #                       "https://appleid.apple.com/auth/token" }</code>
    #                  </p>
    #               </dd>
    #               <dt>Facebook</dt>
    #               <dd>
    #                  <p>Create or update request: <code>"ProviderDetails": { "api_version": "v17.0",
    #               "authorize_scopes": "public_profile, email", "client_id": "1example23456789",
    #               "client_secret": "provider-app-client-secret" }</code>
    #                  </p>
    #                  <p>Describe response: <code>"ProviderDetails":
    #               { "api_version": "v17.0", "attributes_url": "https://graph.facebook.com/v17.0/me?fields=",
    #               "attributes_url_add_attributes": "true", "authorize_scopes": "public_profile, email",
    #               "authorize_url": "https://www.facebook.com/v17.0/dialog/oauth", "client_id":
    #               "1example23456789", "client_secret": "provider-app-client-secret", "token_request_method":
    #               "GET", "token_url": "https://graph.facebook.com/v17.0/oauth/access_token" }</code>
    #                  </p>
    #               </dd>
    #            </dl>
    # @option params [Hash<String, String>] :attribute_mapping
    #   <p>A mapping of IdP attributes to standard and custom user pool attributes. Specify a
    #               user pool attribute as the key of the key-value pair, and the IdP attribute claim name
    #               as the value.</p>
    # @option params [Array<String>] :idp_identifiers
    #   <p>An array of IdP identifiers, for example <code>"IdPIdentifiers": [ "MyIdP", "MyIdP2"
    #                   ]</code>. Identifiers are friendly names that you can pass in the
    #                   <code>idp_identifier</code> query parameter of requests to the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authorization-endpoint.html">Authorize endpoint</a> to silently redirect to sign-in with the associated IdP.
    #               Identifiers in a domain format also enable the use of <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managing-saml-idp-naming.html">email-address matching with SAML providers</a>. </p>
    # @option params [Hash<String, String>] :acr_mapping
    #   <p>A mapping between the authentication context class reference (ACR) levels of your user
    #               pool and the ACR values of the external OpenID Connect (OIDC) identity provider (IdP).
    #               This mapping has the same behavior as it does when you create an identity provider. Only
    #               OIDC IdPs support ACR mapping.</p>
    #            <p>Setting <code>AcrMapping</code> is available in all feature plans. It isn't restricted
    #               to the Essentials or Plus feature plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     provider_name: "ProviderNameType", # required
    #     provider_details: {
    #       "StringType" => "StringType"
    #     },
    #     attribute_mapping: {
    #       "AttributeMappingKeyType" => "StringType"
    #     },
    #     idp_identifiers: ["IdpIdentifierType"],
    #     acr_mapping: {
    #       "AcrMappingKeyType" => "AcrValueType"
    #     }
    #   }
    #   options = {}
    #   response = client.update_identity_provider(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     identity_provider: { # required
    #       user_pool_id: "UserPoolIdType",
    #       provider_name: "ProviderNameType",
    #       provider_type: "SAML" # One of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"],
    #       provider_details: {
    #         "StringType" => "StringType"
    #       },
    #       attribute_mapping: {
    #         "AttributeMappingKeyType" => "StringType"
    #       },
    #       idp_identifiers: ["IdpIdentifierType"],
    #       acr_mapping: {
    #         "AcrMappingKeyType" => "AcrValueType"
    #       },
    #       last_modified_date: Time.now,
    #       creation_date: Time.now
    #     }
    #   }
    # @return [Types::UpdateIdentityProviderResponse]
    def update_identity_provider(params = {}, options = {})
      request = build_request(:update_identity_provider, params)
      request.send_request(options)
    end

    # <p>Configures the branding settings for a user pool style. This operation is the
    #             programmatic option for the configuration of a style in the branding editor.</p>
    #          <p>Provides values for UI customization in a <code>Settings</code> JSON object and image
    #             files in an <code>Assets</code> array.</p>
    #          <p> This operation has a 2-megabyte request-size limit and include the CSS settings and
    #             image assets for your app client. Your branding settings might exceed 2MB in size. Amazon Cognito
    #             doesn't require that you pass all parameters in one request and preserves existing
    #             style settings that you don't specify. If your request is larger than 2MB, separate it
    #             into multiple requests, each with a size smaller than the limit.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateManagedLoginBrandingRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the managed login branding style that you want
    #               to update.</p>
    # @option params [String] :managed_login_branding_id
    #   <p>The ID of the managed login branding style that you want to update.</p>
    # @option params [Boolean] :use_cognito_provided_values
    #   <p>When <code>true</code>, applies the default branding style options. This option
    #               reverts to default style options that are managed by Amazon Cognito. You can modify them later in
    #               the branding editor.</p>
    #            <p>When you specify <code>true</code> for this option, you must also omit values for
    #                   <code>Settings</code> and <code>Assets</code> in the request.</p>
    # @option params [JSON] :settings
    #   <p>A JSON file, encoded as a <code>Document</code> type, with the the settings that you
    #               want to apply to your style.</p>
    #            <p>The following components are not currently implemented and reserved for future
    #               use:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>signUp</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>instructions</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sessionTimerDisplay</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>languageSelector</code> (for localization, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization">Managed login localization)</a>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::AssetType>] :assets
    #   <p>An array of image files that you want to apply to roles like backgrounds, logos, and
    #               icons. Each object must also indicate whether it is for dark mode, light mode, or
    #               browser-adaptive mode.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType",
    #     managed_login_branding_id: "ManagedLoginBrandingIdType",
    #     use_cognito_provided_values: false,
    #     settings: ""null"",
    #     assets: [
    #       {
    #         category: "FAVICON_ICO" # One of: ["FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"], # required
    #         color_mode: "LIGHT" # One of: ["LIGHT", "DARK", "DYNAMIC"], # required
    #         extension: "ICO" # One of: ["ICO", "JPEG", "PNG", "SVG", "WEBP"], # required
    #         bytes: "data",
    #         resource_id: "ResourceIdType"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_managed_login_branding(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_login_branding: {
    #       managed_login_branding_id: "ManagedLoginBrandingIdType",
    #       user_pool_id: "UserPoolIdType",
    #       use_cognito_provided_values: false,
    #       settings: ""null"",
    #       assets: [
    #         {
    #           category: "FAVICON_ICO" # One of: ["FAVICON_ICO", "FAVICON_SVG", "EMAIL_GRAPHIC", "SMS_GRAPHIC", "AUTH_APP_GRAPHIC", "PASSWORD_GRAPHIC", "PASSKEY_GRAPHIC", "PAGE_HEADER_LOGO", "PAGE_HEADER_BACKGROUND", "PAGE_FOOTER_LOGO", "PAGE_FOOTER_BACKGROUND", "PAGE_BACKGROUND", "FORM_BACKGROUND", "FORM_LOGO", "IDP_BUTTON_ICON"], # required
    #           color_mode: "LIGHT" # One of: ["LIGHT", "DARK", "DYNAMIC"], # required
    #           extension: "ICO" # One of: ["ICO", "JPEG", "PNG", "SVG", "WEBP"], # required
    #           bytes: "data",
    #           resource_id: "ResourceIdType"
    #         }
    #       ],
    #       creation_date: Time.now,
    #       last_modified_date: Time.now
    #     }
    #   }
    # @return [Types::UpdateManagedLoginBrandingResponse]
    def update_managed_login_branding(params = {}, options = {})
      request = build_request(:update_managed_login_branding, params)
      request.send_request(options)
    end

    # <p>Sets the provisioned limit for a specific API category. The value must be between the
    #             default limit and your account-level maximum limit in Service Quotas.</p>
    #          <p>Managed login user pools don't support adjustments to the
    #             <code>UserAuthentication</code> or <code>UserFederation</code> categories. To
    #             increase these limits, submit a Service Quotas increase request.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateProvisionedLimitRequest] params
    # @option params [Types::LimitDefinitionType] :limit_definition
    #   <p>The limit to update. Specify the limit class and the attributes that identify the
    #               limit.</p>
    # @option params [Integer] :requested_limit_value
    #   <p>The provisioned rate to set, in requests per second (RPS).</p>
    # @example Example update a provisioned limit
    #   # The following example sets the provisioned limit for the UserAuthentication API category to 300 RPS.
    #   params = {
    #     limit_definition: {
    #       limit_class: API_CATEGORY,
    #       attributes: {
    #         "Category" => "UserAuthentication"
    #       }
    #     },
    #     requested_limit_value: 300
    #   }
    #   options = {}
    #   response = client.update_provisioned_limit(params, options)
    #   response.to_h #=>
    #   {
    #     limit: {
    #       limit_definition: {
    #         limit_class: API_CATEGORY,
    #         attributes: {
    #           "Category" => "UserAuthentication"
    #         }
    #       },
    #       provisioned_limit_value: 300,
    #       free_limit_value: 120
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     limit_definition: { # required
    #       limit_class: "API_CATEGORY" # One of: ["API_CATEGORY"], # required
    #       attributes: { # required
    #         "StringType" => "StringType"
    #       }
    #     },
    #     requested_limit_value: 1, # required
    #   }
    #   options = {}
    #   response = client.update_provisioned_limit(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     limit: { # required
    #       limit_definition: { # required
    #         limit_class: "API_CATEGORY" # One of: ["API_CATEGORY"], # required
    #         attributes: { # required
    #           "StringType" => "StringType"
    #         }
    #       },
    #       provisioned_limit_value: 1, # required
    #       free_limit_value: 1, # required
    #     }
    #   }
    # @return [Types::UpdateProvisionedLimitResponse]
    def update_provisioned_limit(params = {}, options = {})
      request = build_request(:update_provisioned_limit, params)
      request.send_request(options)
    end

    # <p>Updates the name and scopes of a resource server. All other fields are read-only. For
    #             more information about resource servers, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-define-resource-servers.html">Access control with resource servers</a>.</p>
    #          <important>
    #             <p>If you don't provide a value for an attribute, it is set to the default
    #                 value.</p>
    #          </important>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateResourceServerRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the resource server that you want to
    #               update.</p>
    # @option params [String] :identifier
    #   <p>A unique resource server identifier for the resource server. The identifier can be an
    #               API friendly name like <code>solar-system-data</code>. You can also set an API URL like
    #                   <code>https://solar-system-data-api.example.com</code> as your identifier.</p>
    #            <p>Amazon Cognito represents scopes in the access token in the format
    #                   <code>$resource-server-identifier/$scope</code>. Longer scope-identifier strings
    #               increase the size of your access tokens.</p>
    # @option params [String] :name
    #   <p>The updated name of the resource server.</p>
    # @option params [Array<Types::ResourceServerScopeType>] :scopes
    #   <p>An array of updated custom scope names and descriptions that you want to associate
    #               with your resource server.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     identifier: "ResourceServerIdentifierType", # required
    #     name: "ResourceServerNameType", # required
    #     scopes: [
    #       {
    #         scope_name: "ResourceServerScopeNameType", # required
    #         scope_description: "ResourceServerScopeDescriptionType", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_resource_server(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_server: { # required
    #       user_pool_id: "UserPoolIdType",
    #       identifier: "ResourceServerIdentifierType",
    #       name: "ResourceServerNameType",
    #       scopes: [
    #         {
    #           scope_name: "ResourceServerScopeNameType", # required
    #           scope_description: "ResourceServerScopeDescriptionType", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::UpdateResourceServerResponse]
    def update_resource_server(params = {}, options = {})
      request = build_request(:update_resource_server, params)
      request.send_request(options)
    end

    # <p>Modifies existing terms documents for the requested app client. When Terms and
    #             conditions and Privacy policy documents are configured, the app client displays links to
    #             them in the sign-up page of managed login for the app client.</p>
    #          <p>You can provide URLs for terms documents in the languages that are supported by <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-localization">managed login localization</a>. Amazon Cognito directs users to the terms documents for
    #             their current language, with fallback to <code>default</code> if no document exists for
    #             the language.</p>
    #          <p>Each request accepts one type of terms document and a map of language-to-link for that
    #             document type. You must provide both types of terms documents in at least one language
    #             before Amazon Cognito displays your terms documents. Supply each type in separate
    #             requests.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html#managed-login-terms-documents">Terms documents</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateTermsRequest] params
    # @option params [String] :terms_id
    #   <p>The ID of the terms document that you want to update.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the terms that you want to update.</p>
    # @option params [String] :terms_name
    #   <p>The new name that you want to apply to the requested terms documents.</p>
    # @option params [String] :terms_source
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    # @option params [String] :enforcement
    #   <p>This parameter is reserved for future use and currently accepts only one value.</p>
    # @option params [Hash<String, String>] :links
    #   <p>A map of URLs to languages. For each localized language that will view the requested
    #                   <code>TermsName</code>, assign a URL. A selection of <code>cognito:default</code>
    #               displays for all languages that don't have a language-specific URL.</p>
    #            <p>For example, <code>"cognito:default": "https://terms.example.com", "cognito:spanish":
    #                   "https://terms.example.com/es"</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     terms_id: "TermsIdType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     terms_name: "TermsNameType",
    #     terms_source: "LINK" # One of: ["LINK"],
    #     enforcement: "NONE" # One of: ["NONE"],
    #     links: {
    #       "LanguageIdType" => "LinkUrlType"
    #     }
    #   }
    #   options = {}
    #   response = client.update_terms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     terms: {
    #       terms_id: "TermsIdType", # required
    #       user_pool_id: "UserPoolIdType", # required
    #       client_id: "ClientIdType", # required
    #       terms_name: "TermsNameType", # required
    #       terms_source: "LINK" # One of: ["LINK"], # required
    #       enforcement: "NONE" # One of: ["NONE"], # required
    #       links: { # required
    #         "LanguageIdType" => "LinkUrlType"
    #       },
    #       creation_date: Time.now, # required
    #       last_modified_date: Time.now, # required
    #     }
    #   }
    # @return [Types::UpdateTermsResponse]
    def update_terms(params = {}, options = {})
      request = build_request(:update_terms, params)
      request.send_request(options)
    end

    # <p>Updates the currently signed-in user's attributes. To delete an attribute from
    #             the user, submit the attribute in your API request with a blank value.</p>
    #          <p>For custom attributes, you must add a <code>custom:</code> prefix to the attribute
    #             name, for example <code>custom:department</code>.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    # @param [Hash, Types::UpdateUserAttributesRequest] params
    # @option params [Array<Types::AttributeType>] :user_attributes
    #   <p>An array of name-value pairs representing user attributes.</p>
    #            <p>For custom attributes, you must add a <code>custom:</code> prefix to the attribute
    #               name.</p>
    #            <p>If you have set an attribute to require verification before Amazon Cognito updates its value,
    #               this request doesn’t immediately update the value of that attribute. After your user
    #               receives and responds to a verification message to verify the new value, Amazon Cognito updates
    #               the attribute value. Your user can sign in and receive messages with the original
    #               attribute value until they verify the new value.</p>
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [Hash<String, String>] :client_metadata
    #   <p>A map of custom key-value pairs that you can provide as input for any custom workflows
    #               that this action triggers. You create custom workflows by assigning Lambda functions
    #               to user pool triggers.</p>
    #            <p>When Amazon Cognito invokes any of these functions, it passes a JSON payload, which the
    #               function receives as input. This payload contains a <code>clientMetadata</code>
    #               attribute that provides the data that you assigned to the ClientMetadata parameter in
    #               your request. In your function code, you can process the <code>clientMetadata</code>
    #               value to enhance your workflow for your specific needs.</p>
    #            <p>To review the Lambda trigger types that Amazon Cognito invokes at runtime with API requests, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-working-with-lambda-triggers.html#lambda-triggers-by-event">
    #   Connecting API actions to Lambda triggers</a> in the <i>Amazon Cognito Developer Guide</i>.</p>
    #            <note>
    #               <p>When you use the <code>ClientMetadata</code> parameter, note that Amazon Cognito won't do the
    #                   following:</p>
    #               <ul>
    #                  <li>
    #                     <p>Store the <code>ClientMetadata</code> value. This data is available only
    #                           to Lambda triggers that are assigned to a user pool to support custom
    #                           workflows. If your user pool configuration doesn't include triggers, the
    #                           <code>ClientMetadata</code> parameter serves no purpose.</p>
    #                  </li>
    #                  <li>
    #                     <p>Validate the <code>ClientMetadata</code> value.</p>
    #                  </li>
    #                  <li>
    #                     <p>Encrypt the <code>ClientMetadata</code> value. Don't send sensitive
    #                           information in this parameter.</p>
    #                  </li>
    #               </ul>
    #            </note>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_attributes: [ # required
    #       {
    #         name: "AttributeNameType", # required
    #         value: "AttributeValueType"
    #       }
    #     ],
    #     access_token: "TokenModelType", # required
    #     client_metadata: {
    #       "StringType" => "StringType"
    #     }
    #   }
    #   options = {}
    #   response = client.update_user_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     code_delivery_details_list: [
    #       {
    #         destination: "StringType",
    #         delivery_medium: "SMS" # One of: ["SMS", "EMAIL"],
    #         attribute_name: "AttributeNameType"
    #       }
    #     ]
    #   }
    # @return [Types::UpdateUserAttributesResponse]
    def update_user_attributes(params = {}, options = {})
      request = build_request(:update_user_attributes, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of a user pool. To avoid setting parameters to Amazon Cognito
    #             defaults, construct this API request to pass the existing configuration of your user
    #             pool, modified to include the changes that you want to make.</p>
    #          <important>
    #             <p>If you don't provide a value for an attribute, Amazon Cognito sets it to its default value.</p>
    #          </important>
    #          <p>In secondary regions for user pools with multi-region replication, regional
    #             configurations for email, SMS, Lambda functions, and tags can be updated. Both global
    #             and regional settings must be provided as inputs, with global settings required to match
    #             existing values to maintain consistency across replicas.</p>
    #          <note>
    #             <p>This action might generate an SMS text message. Starting June 1, 2021, US telecom carriers
    #             require you to register an origination phone number before you can send SMS messages
    #             to US phone numbers. If you use SMS text messages in Amazon Cognito, you must register a
    #             phone number with <a href="https://console.aws.amazon.com/pinpoint/home/">Amazon Pinpoint</a>.
    #             Amazon Cognito uses the registered number automatically. Otherwise, Amazon Cognito users who must
    #             receive SMS messages might not be able to sign up, activate their accounts, or sign
    #             in.</p>
    #             <p>If you have never used SMS text messages with Amazon Cognito or any other Amazon Web Services service,
    #             Amazon Simple Notification Service might place your account in the SMS sandbox. In <i>
    #                   <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">sandbox
    #                     mode</a>
    #                </i>, you can send messages only to verified phone
    #             numbers. After you test your app while in the sandbox environment, you can move out
    #             of the sandbox and into production. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html"> SMS message settings for Amazon Cognito user pools</a> in the <i>Amazon Cognito
    #                 Developer Guide</i>.</p>
    #          </note>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateUserPoolRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool you want to update.</p>
    # @option params [Types::UserPoolPolicyType] :policies
    #   <p>The password policy and sign-in policy in the user pool. The password policy sets
    #               options like password complexity requirements and password history. The sign-in policy
    #               sets the options available to applications in <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/authentication-flows-selection-sdk.html#authentication-flows-selection-choice">choice-based authentication</a>.</p>
    # @option params [String] :deletion_protection
    #   <p>When active, <code>DeletionProtection</code> prevents accidental deletion of your user
    #   pool. Before you can delete a user pool that you have protected against deletion, you
    #   must deactivate this feature.</p>
    #            <p>When you try to delete a protected user pool in a <code>DeleteUserPool</code> API request,
    #   Amazon Cognito returns an <code>InvalidParameterException</code> error. To delete a protected user pool,
    #   send a new <code>DeleteUserPool</code> request after you deactivate deletion protection in an
    #   <code>UpdateUserPool</code> API request.</p>
    # @option params [Types::LambdaConfigType] :lambda_config
    #   <p>A collection of user pool Lambda triggers. Amazon Cognito invokes triggers at several possible
    #               stages of authentication operations. Triggers can modify the outcome of the operations
    #               that invoked them.</p>
    # @option params [Array<String>] :auto_verified_attributes
    #   <p>The attributes that you want your user pool to automatically verify. Possible values:
    #                   <b>email</b>, <b>phone_number</b>. For more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/signing-up-users-in-your-app.html#allowing-users-to-sign-up-and-confirm-themselves">Verifying contact information at sign-up</a>.</p>
    # @option params [String] :sms_verification_message
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :email_verification_message
    #   <p>This parameter is no longer used.</p>
    # @option params [String] :email_verification_subject
    #   <p>This parameter is no longer used.</p>
    # @option params [Types::VerificationMessageTemplateType] :verification_message_template
    #   <p>The template for the verification message that your user pool delivers to users who
    #               set an email address or phone number attribute.</p>
    #            <p>Set the email message type that corresponds to your <code>DefaultEmailOption</code>
    #               selection. For <code>CONFIRM_WITH_LINK</code>, specify an
    #                   <code>EmailMessageByLink</code> and leave <code>EmailMessage</code> blank. For
    #                   <code>CONFIRM_WITH_CODE</code>, specify an <code>EmailMessage</code> and leave
    #                   <code>EmailMessageByLink</code> blank. When you supply both parameters with either
    #               choice, Amazon Cognito returns an error.</p>
    # @option params [String] :sms_authentication_message
    #   <p>The contents of the SMS message that your user pool sends to users in SMS
    #               authentication.</p>
    # @option params [Types::UserAttributeUpdateSettingsType] :user_attribute_update_settings
    #   <p>The settings for updates to user attributes. These settings include the property <code>AttributesRequireVerificationBeforeUpdate</code>,
    #   a user-pool setting that tells Amazon Cognito how to handle changes to the value of your users' email address and phone number attributes. For
    #   more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-settings-email-phone-verification.html#user-pool-settings-verifications-verify-attribute-updates">
    #   Verifying updates to email addresses and phone numbers</a>.</p>
    # @option params [String] :mfa_configuration
    #   <p>Sets multi-factor authentication (MFA) to be on, off, or optional. When
    #                   <code>ON</code>, all users must set up MFA before they can sign in. When
    #                   <code>OPTIONAL</code>, your application must make a client-side determination of
    #               whether a user wants to register an MFA device. For user pools with adaptive
    #               authentication with threat protection, choose <code>OPTIONAL</code>.</p>
    #            <p>When <code>MfaConfiguration</code> is <code>OPTIONAL</code>, managed login
    #               doesn't automatically prompt users to set up MFA. Amazon Cognito generates MFA prompts in
    #               API responses and in managed login for users who have chosen and configured a preferred
    #               MFA factor.</p>
    # @option params [Types::DeviceConfigurationType] :device_configuration
    #   <p>The device-remembering configuration for a user pool. Device remembering or device
    #               tracking is a "Remember me on this device" option for user pools that perform
    #               authentication with the device key of a trusted device in the back end, instead of a
    #               user-provided MFA code. For more information about device authentication, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with user devices in your user pool</a>. A null value indicates that
    #               you have deactivated device remembering in your user pool.</p>
    #            <note>
    #               <p>When you provide a value for any <code>DeviceConfiguration</code> field, you
    #                   activate the Amazon Cognito device-remembering feature. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-device-tracking.html">Working with devices</a>.</p>
    #            </note>
    # @option params [Types::EmailConfigurationType] :email_configuration
    #   <p>The email configuration of your user pool. The email configuration type sets your
    #               preferred sending method, Amazon Web Services Region, and sender for email invitation and verification
    #               messages from your user pool.</p>
    # @option params [Types::SmsConfigurationType] :sms_configuration
    #   <p>The SMS configuration with the settings for your Amazon Cognito user pool to send SMS message
    #               with Amazon Simple Notification Service. To send SMS messages with Amazon SNS in the Amazon Web Services Region that you want, the
    #               Amazon Cognito user pool uses an Identity and Access Management (IAM) role in your Amazon Web Services account. For
    #               more information see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-sms-settings.html">SMS message settings</a>.</p>
    # @option params [Hash<String, String>] :user_pool_tags
    #   <p>The tag keys and values to assign to the user pool. A tag is a label that you can use
    #               to categorize and manage user pools in different ways, such as by purpose, owner,
    #               environment, or other criteria.</p>
    # @option params [Types::AdminCreateUserConfigType] :admin_create_user_config
    #   <p>The configuration for administrative creation of users. Includes the template for the
    #               invitation message for new users, the duration of temporary passwords, and permitting
    #               self-service sign-up.</p>
    # @option params [Types::UserPoolAddOnsType] :user_pool_add_ons
    #   <p>Contains settings for activation of threat protection, including the operating
    #   mode and additional authentication types. To log user security information but take
    #   no action, set to <code>AUDIT</code>. To configure automatic security responses to
    #   potentially unwanted traffic to your user pool, set to <code>ENFORCED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-advanced-security.html">Adding advanced security to a user pool</a>. To activate this setting, your user pool must be on the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-plus.html">
    #                        Plus tier</a>.</p>
    # @option params [Types::AccountRecoverySettingType] :account_recovery_setting
    #   <p>The available verified method a user can use to recover their password when they call
    #                   <code>ForgotPassword</code>. You can use this setting to define a preferred method
    #               when a user has more than one method available. With this setting, SMS doesn't qualify
    #               for a valid password recovery mechanism if the user also has SMS multi-factor
    #               authentication (MFA) activated. In the absence of this setting, Amazon Cognito uses the legacy
    #               behavior to determine the recovery method where SMS is preferred through email.</p>
    # @option params [String] :pool_name
    #   <p>The updated name of your user pool.</p>
    # @option params [String] :user_pool_tier
    #   <p>The user pool <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-sign-in-feature-plans.html">feature plan</a>, or tier. This parameter determines the
    #               eligibility of the user pool for features like managed login, access-token
    #               customization, and threat protection. Defaults to <code>ESSENTIALS</code>.</p>
    # @option params [Types::KeyConfigurationType] :key_configuration
    #   <p>The key configuration for the user pool. In secondary regions, this parameter must
    #               match the existing configuration and cannot be modified.</p>
    # @option params [Types::IssuerConfigurationType] :issuer_configuration
    #   <p>The issuer configuration for the user pool. In secondary regions, this parameter must
    #               match the existing configuration and cannot be modified.</p>
    # @option params [Hash<String, Types::AcrLevelConfigType>] :acr_configuration
    #   <p>The custom names for the authentication context class reference
    #               (ACR) levels in your user pool. This configuration has the same behavior as it does when
    #               you create a user pool: you customize only the URI name that Amazon Cognito reports for
    #               each of the four fixed ACR levels, and any level that you don't specify keeps its default
    #               name. Each name must be unique across all four levels, including default names.</p>
    #            <p>Configuring custom ACR level names requires the Essentials or Plus feature plan.
    #               To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     policies: {
    #       password_policy: {
    #         minimum_length: 1,
    #         require_uppercase: false,
    #         require_lowercase: false,
    #         require_numbers: false,
    #         require_symbols: false,
    #         password_history_size: 1,
    #         temporary_password_validity_days: 1
    #       },
    #       sign_in_policy: {
    #         allowed_first_auth_factors: ["PASSWORD" # One of: ["PASSWORD", "EMAIL_OTP", "SMS_OTP", "WEB_AUTHN", "SOFTWARE_TOKEN"]]
    #       }
    #     },
    #     deletion_protection: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"],
    #     lambda_config: {
    #       pre_sign_up: "ArnType",
    #       custom_message: "ArnType",
    #       post_confirmation: "ArnType",
    #       pre_authentication: "ArnType",
    #       post_authentication: "ArnType",
    #       define_auth_challenge: "ArnType",
    #       create_auth_challenge: "ArnType",
    #       verify_auth_challenge_response: "ArnType",
    #       pre_token_generation: "ArnType",
    #       user_migration: "ArnType",
    #       pre_token_generation_config: {
    #         lambda_version: "V1_0" # One of: ["V1_0", "V2_0", "V3_0"], # required
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_sms_sender: {
    #         lambda_version: "V1_0" # One of: ["V1_0"], # required
    #         lambda_arn: "ArnType", # required
    #       },
    #       custom_email_sender: {
    #         lambda_version: "V1_0" # One of: ["V1_0"], # required
    #         lambda_arn: "ArnType", # required
    #       },
    #       kms_key_id: "ArnType",
    #       inbound_federation: {
    #         lambda_version: "V1_0" # One of: ["V1_0"], # required
    #         lambda_arn: "ArnType", # required
    #       }
    #     },
    #     auto_verified_attributes: ["phone_number" # One of: ["phone_number", "email"]],
    #     sms_verification_message: "SmsVerificationMessageType",
    #     email_verification_message: "EmailVerificationMessageType",
    #     email_verification_subject: "EmailVerificationSubjectType",
    #     verification_message_template: {
    #       sms_message: "SmsVerificationMessageType",
    #       email_message: "EmailVerificationMessageType",
    #       email_subject: "EmailVerificationSubjectType",
    #       email_message_by_link: "EmailVerificationMessageByLinkType",
    #       email_subject_by_link: "EmailVerificationSubjectByLinkType",
    #       default_email_option: "CONFIRM_WITH_LINK" # One of: ["CONFIRM_WITH_LINK", "CONFIRM_WITH_CODE"]
    #     },
    #     sms_authentication_message: "SmsVerificationMessageType",
    #     user_attribute_update_settings: {
    #       attributes_require_verification_before_update: ["phone_number" # One of: ["phone_number", "email"]]
    #     },
    #     mfa_configuration: "OFF" # One of: ["OFF", "ON", "OPTIONAL"],
    #     device_configuration: {
    #       challenge_required_on_new_device: false,
    #       device_only_remembered_on_user_prompt: false
    #     },
    #     email_configuration: {
    #       source_arn: "ArnType",
    #       reply_to_email_address: "EmailAddressType",
    #       email_sending_account: "COGNITO_DEFAULT" # One of: ["COGNITO_DEFAULT", "DEVELOPER"],
    #       from: "StringType",
    #       configuration_set: "SESConfigurationSet"
    #     },
    #     sms_configuration: {
    #       sns_caller_arn: "OptionalArnType",
    #       external_id: "StringType",
    #       sns_region: "RegionCodeType",
    #       eums_sms: {
    #         caller_arn: "ArnType", # required
    #         external_id: "StringType",
    #         origination_identity: "StringType",
    #         configuration_set_name: "StringType",
    #         in_entity_id: "StringType",
    #         in_template_id: "StringType",
    #         region: "RegionCodeType"
    #       }
    #     },
    #     user_pool_tags: {
    #       "TagKeysType" => "TagValueType"
    #     },
    #     admin_create_user_config: {
    #       allow_admin_create_user_only: false,
    #       unused_account_validity_days: 1,
    #       invite_message_template: {
    #         sms_message: "SmsInviteMessageType",
    #         email_message: "EmailInviteMessageType",
    #         email_subject: "EmailVerificationSubjectType"
    #       }
    #     },
    #     user_pool_add_ons: {
    #       advanced_security_mode: "OFF" # One of: ["OFF", "AUDIT", "ENFORCED"], # required
    #       advanced_security_additional_flows: {
    #         custom_auth_mode: "AUDIT" # One of: ["AUDIT", "ENFORCED"]
    #       }
    #     },
    #     account_recovery_setting: {
    #       recovery_mechanisms: [
    #         {
    #           priority: 1, # required
    #           name: "verified_email" # One of: ["verified_email", "verified_phone_number", "admin_only"], # required
    #         }
    #       ]
    #     },
    #     pool_name: "UserPoolNameType",
    #     user_pool_tier: "LITE" # One of: ["LITE", "ESSENTIALS", "PLUS"],
    #     key_configuration: {
    #       key_type: "AWS_OWNED_KEY" # One of: ["AWS_OWNED_KEY", "CUSTOMER_MANAGED_KEY"],
    #       kms_key_arn: "EncryptionKeyArnType"
    #     },
    #     issuer_configuration: {
    #       type: "ORIGINAL" # One of: ["ORIGINAL", "UPDATED"]
    #     },
    #     acr_configuration: {
    #       "AcrLevelKeyType" => {
    #         acr_value: "AcrValueType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_user_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateUserPoolResponse]
    def update_user_pool(params = {}, options = {})
      request = build_request(:update_user_pool, params)
      request.send_request(options)
    end

    # <p>Given a user pool app client ID, updates the configuration. To avoid setting
    #             parameters to Amazon Cognito defaults, construct this API request to pass the existing
    #             configuration of your app client, modified to include the changes that you want to
    #             make.</p>
    #          <important>
    #             <p>If you don't provide a value for an attribute, Amazon Cognito sets it to its default value.</p>
    #          </important>
    #          <p>Unlike app clients created in the console, Amazon Cognito doesn't automatically assign a
    # branding style to app clients that you configure with this API operation. Managed login and classic hosted UI pages aren't
    # available for your client until after you apply a branding style.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateUserPoolClientRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool where you want to update the app client.</p>
    # @option params [String] :client_id
    #   <p>The ID of the app client that you want to update.</p>
    # @option params [String] :client_name
    #   <p>A friendly name for the app client.</p>
    # @option params [Integer] :refresh_token_validity
    #   <p>The refresh token time limit. After this limit expires, your user can't use
    #   their refresh token. To specify the time unit for <code>RefreshTokenValidity</code> as
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>RefreshTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>days</code>, your user can refresh their session
    #   and retrieve new access and ID tokens for 10 days.</p>
    #            <p>The default time unit for <code>RefreshTokenValidity</code> in an API request is days.
    #   You can't set <code>RefreshTokenValidity</code> to 0. If you do, Amazon Cognito overrides the
    #   value with the default value of 30 days. <i>Valid range</i> is displayed below
    #   in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your refresh
    #   tokens are valid for 30 days.</p>
    # @option params [Integer] :access_token_validity
    #   <p>The access token time limit. After this limit expires, your user can't use
    #   their access token. To specify the time unit for <code>AccessTokenValidity</code> as
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>AccessTokenValidity</code> to <code>10</code> and
    #   <code>TokenValidityUnits</code> to <code>hours</code>, your user can authorize access with
    #   their access token for 10 hours.</p>
    #            <p>The default time unit for <code>AccessTokenValidity</code> in an API request is hours.
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your access
    #   tokens are valid for one hour.</p>
    # @option params [Integer] :id_token_validity
    #   <p>The ID token time limit. After this limit expires, your user can't use
    #   their ID token. To specify the time unit for <code>IdTokenValidity</code> as
    #   <code>seconds</code>, <code>minutes</code>, <code>hours</code>, or <code>days</code>,
    #   set a <code>TokenValidityUnits</code> value in your API request.</p>
    #            <p>For example, when you set <code>IdTokenValidity</code> as <code>10</code> and
    #   <code>TokenValidityUnits</code> as <code>hours</code>, your user can authenticate their
    #   session with their ID token for 10 hours.</p>
    #            <p>The default time unit for <code>IdTokenValidity</code> in an API request is hours.
    #   <i>Valid range</i> is displayed below in seconds.</p>
    #            <p>If you don't specify otherwise in the configuration of your app client, your ID
    #   tokens are valid for one hour.</p>
    # @option params [Types::TokenValidityUnitsType] :token_validity_units
    #   <p>The units that validity times are represented in. The default unit for refresh tokens
    #               is days, and the default for ID and access tokens are hours.</p>
    # @option params [Array<String>] :read_attributes
    #   <p>The list of user attributes that you want your app client to have read access to.
    #       After your user authenticates in your app, their access token authorizes them to read
    #       their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>ReadAttributes</code> for your app client, your
    #       app can read the values of <code>email_verified</code>,
    #       <code>phone_number_verified</code>, and the standard attributes of your user pool.
    #       When your user pool app client has read access to these default attributes,
    #       <code>ReadAttributes</code> doesn't return any information. Amazon Cognito only
    #       populates <code>ReadAttributes</code> in the API response if you have specified your own
    #       custom set of read attributes.</p>
    # @option params [Array<String>] :write_attributes
    #   <p>The list of user attributes that you want your app client to have write access to.
    #       After your user authenticates in your app, their access token authorizes them to set or
    #       modify their own attribute value for any attribute in this list.</p>
    #            <p>When you don't specify the <code>WriteAttributes</code> for your app client, your
    #       app can write the values of the Standard attributes of your user pool. When your user
    #       pool has write access to these default attributes, <code>WriteAttributes</code>
    #       doesn't return any information. Amazon Cognito only populates
    #           <code>WriteAttributes</code> in the API response if you have specified your own
    #       custom set of write attributes.</p>
    #            <p>If your app client allows users to sign in through an IdP, this array must include all
    #       attributes that you have mapped to IdP attributes. Amazon Cognito updates mapped attributes when
    #       users sign in to your application through an IdP. If your app client does not have write
    #       access to a mapped attribute, Amazon Cognito throws an error when it tries to update the
    #       attribute. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-specifying-attribute-mapping.html">Specifying IdP Attribute Mappings for Your user
    #       pool</a>.</p>
    # @option params [Array<String>] :explicit_auth_flows
    #   <p>The <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/amazon-cognito-user-pools-authentication-flow-methods.html">authentication flows</a> that you want your user pool client to support. For each app
    #   client in your user pool, you can sign in your users with any combination of one or more flows, including with
    #   a user name and Secure Remote Password (SRP), a user name and password, or a custom authentication process that
    #   you define with Lambda functions.</p>
    #            <note>
    #               <p>If you don't specify a value for <code>ExplicitAuthFlows</code>, your app client supports
    #   <code>ALLOW_REFRESH_TOKEN_AUTH</code>, <code>ALLOW_USER_SRP_AUTH</code>, and <code>ALLOW_CUSTOM_AUTH</code>.
    #   </p>
    #            </note>
    #            <p>The values for authentication flow options include the following.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_AUTH</code>: Enable selection-based sign-in
    #               with <code>USER_AUTH</code>. This setting covers username-password,
    #               secure remote password (SRP), passwordless, and passkey authentication.
    #               This authentiation flow can do username-password and SRP authentication
    #               without other <code>ExplicitAuthFlows</code> permitting them. For example
    #               users can complete an SRP challenge through <code>USER_AUTH</code>
    #               without the flow <code>USER_SRP_AUTH</code> being active for the app
    #               client. This flow doesn't include <code>CUSTOM_AUTH</code>.
    #           </p>
    #                  <p>To activate this setting, your user pool must be in the <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/feature-plans-features-essentials.html">
    #                        Essentials tier</a> or higher.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_ADMIN_USER_PASSWORD_AUTH</code>: Enable admin based user password
    #               authentication flow <code>ADMIN_USER_PASSWORD_AUTH</code>. This setting replaces
    #               the <code>ADMIN_NO_SRP_AUTH</code> setting. With this authentication flow, your app
    #               passes a user name and password to Amazon Cognito in the request, instead of using the Secure
    #               Remote Password (SRP) protocol to securely transmit the password.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_CUSTOM_AUTH</code>: Enable Lambda trigger based
    #               authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_PASSWORD_AUTH</code>: Enable user password-based
    #               authentication. In this flow, Amazon Cognito receives the password in the request instead
    #               of using the SRP protocol to verify passwords.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_USER_SRP_AUTH</code>: Enable SRP-based authentication.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ALLOW_REFRESH_TOKEN_AUTH</code>: Enable authflow to refresh
    #               tokens.</p>
    #               </li>
    #            </ul>
    #            <p>In some environments, you will see the values <code>ADMIN_NO_SRP_AUTH</code>, <code>CUSTOM_AUTH_FLOW_ONLY</code>, or <code>USER_PASSWORD_AUTH</code>.
    #   You can't assign these legacy <code>ExplicitAuthFlows</code> values to user pool clients at the same time as values that begin with <code>ALLOW_</code>,
    #   like <code>ALLOW_USER_SRP_AUTH</code>.</p>
    # @option params [Array<String>] :supported_identity_providers
    #   <p>A list of provider names for the identity providers (IdPs) that are supported on this
    #               client. The following are supported: <code>COGNITO</code>, <code>Facebook</code>,
    #               <code>Google</code>, <code>SignInWithApple</code>, and <code>LoginWithAmazon</code>.
    #               You can also specify the names that you configured for the SAML and OIDC IdPs in your
    #               user pool, for example <code>MySAMLIdP</code> or <code>MyOIDCIdP</code>.</p>
    #            <p>This parameter sets the IdPs that <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">managed
    #               login</a> will display on the login page for your app client. The removal of
    #               <code>COGNITO</code> from this list doesn't prevent authentication operations
    #               for local users with the user pools API in an Amazon Web Services SDK. The only way to prevent
    #               SDK-based authentication is to block access with a <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pool-waf.html">WAF rule</a>.
    #           </p>
    # @option params [Array<String>] :callback_ur_ls
    #   <p>A list of allowed redirect, or callback, URLs for managed login authentication. These
    #               URLs are the paths where you want to send your users' browsers after they complete
    #               authentication with managed login or a third-party IdP. Typically, callback URLs are the
    #               home of an application that uses OAuth or OIDC libraries to process authentication
    #               outcomes.</p>
    #            <p>A redirect URI must meet the following requirements:</p>
    #            <ul>
    #               <li>
    #                  <p>Be an absolute URI.</p>
    #               </li>
    #               <li>
    #                  <p>Be registered with the authorization server. Amazon Cognito doesn't accept
    #                       authorization requests with <code>redirect_uri</code> values that aren't in
    #                       the list of <code>CallbackURLs</code> that you provide in this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>Not include a fragment component.</p>
    #               </li>
    #            </ul>
    #            <p>See <a href="https://tools.ietf.org/html/rfc6749#section-3.1.2">OAuth 2.0 -
    #                   Redirection Endpoint</a>.</p>
    #            <p>Amazon Cognito requires HTTPS over HTTP except for http://localhost for testing purposes
    #               only.</p>
    #            <p>App callback URLs such as <code>myapp://example</code> are also supported.</p>
    # @option params [Array<String>] :logout_ur_ls
    #   <p>A list of allowed logout URLs for managed login authentication. When you pass
    #                   <code>logout_uri</code> and <code>client_id</code> parameters to
    #                   <code>/logout</code>, Amazon Cognito signs out your user and redirects them to the logout
    #               URL. This parameter describes the URLs that you want to be the permitted targets of
    #                   <code>logout_uri</code>. A typical use of these URLs is when a user selects "Sign
    #               out" and you redirect them to your public homepage. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html">Logout
    #                   endpoint</a>.</p>
    # @option params [String] :default_redirect_uri
    #   <p>The default redirect URI. In app clients with one assigned IdP, replaces
    #                   <code>redirect_uri</code> in authentication requests. Must be in the
    #                   <code>CallbackURLs</code> list.</p>
    # @option params [Array<String>] :allowed_o_auth_flows
    #   <p>The OAuth grant types that you want your app client to generate. To create an app
    #               client that generates client credentials grants, you must add
    #                   <code>client_credentials</code> as the only allowed OAuth flow.</p>
    #            <dl>
    #               <dt>code</dt>
    #               <dd>
    #                  <p>Use a code grant flow, which provides an authorization code as the
    #                           response. This code can be exchanged for access tokens with the
    #                               <code>/oauth2/token</code> endpoint.</p>
    #               </dd>
    #               <dt>implicit</dt>
    #               <dd>
    #                  <p>Issue the access token (and, optionally, ID token, based on scopes)
    #                           directly to your user.</p>
    #               </dd>
    #               <dt>client_credentials</dt>
    #               <dd>
    #                  <p>Issue the access token from the <code>/oauth2/token</code> endpoint
    #                           directly to a non-person user using a combination of the client ID and
    #                           client secret.</p>
    #               </dd>
    #            </dl>
    # @option params [Array<String>] :allowed_o_auth_scopes
    #   <p>The OAuth, OpenID Connect (OIDC), and custom scopes that you want to permit your app
    #               client to authorize access with. Scopes govern access control to user pool self-service
    #               API operations, user data from the <code>userInfo</code> endpoint, and third-party APIs.
    #               Scope values include <code>phone</code>, <code>email</code>, <code>openid</code>, and
    #                   <code>profile</code>. The <code>aws.cognito.signin.user.admin</code> scope
    #               authorizes user self-service operations. Custom scopes with resource servers authorize
    #               access to external APIs.</p>
    # @option params [Boolean] :allowed_o_auth_flows_user_pool_client
    #   <p>Set to <code>true</code> to use OAuth 2.0 authorization server features in your app client.</p>
    #            <p>This parameter must have a value of <code>true</code> before you can configure
    #   the following features in your app client.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CallBackURLs</code>: Callback URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LogoutURLs</code>: Sign-out redirect URLs.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthScopes</code>: OAuth 2.0 scopes.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AllowedOAuthFlows</code>: Support for authorization code, implicit, and client credentials OAuth 2.0 grants.</p>
    #               </li>
    #            </ul>
    #            <p>To use authorization server features, configure one of these features in the Amazon Cognito console or set
    #   <code>AllowedOAuthFlowsUserPoolClient</code> to <code>true</code> in a <code>CreateUserPoolClient</code> or
    #   <code>UpdateUserPoolClient</code> API request. If you don't set a value for
    #   <code>AllowedOAuthFlowsUserPoolClient</code> in a request with the CLI or SDKs, it defaults
    #   to <code>false</code>. When <code>false</code>, only SDK-based API sign-in is permitted.</p>
    # @option params [Types::AnalyticsConfigurationType] :analytics_configuration
    #   <p>The user pool analytics configuration for collecting metrics and sending them to your
    #               Amazon Pinpoint campaign.</p>
    #            <p>In Amazon Web Services Regions where Amazon Pinpoint isn't available, user pools might not have access to
    #               analytics or might be configurable with campaigns in the US East (N. Virginia) Region. For
    #               more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-pinpoint-integration.html">Using Amazon Pinpoint analytics</a>.</p>
    # @option params [String] :prevent_user_existence_errors
    #   <p>When <code>ENABLED</code>, suppresses messages that might indicate a valid user exists
    #               when someone attempts sign-in. This parameters sets your preference for the errors and
    #               responses that you want Amazon Cognito APIs to return during authentication, account
    #               confirmation, and password recovery when the user doesn't exist in the user pool. When
    #               set to <code>ENABLED</code> and the user doesn't exist, authentication returns an error
    #               indicating either the username or password was incorrect. Account confirmation and
    #               password recovery return a response indicating a code was sent to a simulated
    #               destination. When set to <code>LEGACY</code>, those APIs return a
    #               <code>UserNotFoundException</code> exception if the user doesn't exist in the user
    #               pool.</p>
    #            <p>Defaults to <code>LEGACY</code>.</p>
    # @option params [Boolean] :enable_token_revocation
    #   <p>Activates or deactivates <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/token-revocation.html">token
    #                   revocation</a> in the target app client.</p>
    # @option params [Boolean] :enable_propagate_additional_user_context_data
    #   <p>When <code>true</code>, your application can include additional
    #                   <code>UserContextData</code> in authentication requests. This data includes the IP
    #               address, and contributes to analysis by threat protection features. For more information
    #               about propagation of user context data, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pool-settings-adaptive-authentication.html#user-pool-settings-adaptive-authentication-device-fingerprint">Adding session data to API requests</a>. If you don’t include this parameter,
    #               you can't send the source IP address to Amazon Cognito threat protection features. You can only
    #               activate <code>EnablePropagateAdditionalUserContextData</code> in an app client that has
    #               a client secret.</p>
    # @option params [Integer] :auth_session_validity
    #   <p>Amazon Cognito creates a session token for each API request in an authentication flow. <code>AuthSessionValidity</code> is the duration,
    #   in minutes, of that session token. Your user pool native user must respond to each authentication challenge before the session expires.</p>
    # @option params [Types::RefreshTokenRotationType] :refresh_token_rotation
    #   <p>The configuration of your app client for refresh token rotation. When enabled, your
    #               app client issues new ID, access, and refresh tokens when users renew their sessions
    #               with refresh tokens. When disabled, token refresh issues only ID and access
    #               tokens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     client_id: "ClientIdType", # required
    #     client_name: "ClientNameType",
    #     refresh_token_validity: 1,
    #     access_token_validity: 1,
    #     id_token_validity: 1,
    #     token_validity_units: {
    #       access_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #       id_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #       refresh_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"]
    #     },
    #     read_attributes: ["ClientPermissionType"],
    #     write_attributes: ["ClientPermissionType"],
    #     explicit_auth_flows: ["ADMIN_NO_SRP_AUTH" # One of: ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"]],
    #     supported_identity_providers: ["ProviderNameType"],
    #     callback_ur_ls: ["RedirectUrlType"],
    #     logout_ur_ls: ["RedirectUrlType"],
    #     default_redirect_uri: "RedirectUrlType",
    #     allowed_o_auth_flows: ["code" # One of: ["code", "implicit", "client_credentials"]],
    #     allowed_o_auth_scopes: ["ScopeType"],
    #     allowed_o_auth_flows_user_pool_client: false,
    #     analytics_configuration: {
    #       application_id: "HexStringType",
    #       application_arn: "ArnType",
    #       role_arn: "ArnType",
    #       external_id: "StringType",
    #       user_data_shared: false
    #     },
    #     prevent_user_existence_errors: "LEGACY" # One of: ["LEGACY", "ENABLED"],
    #     enable_token_revocation: false,
    #     enable_propagate_additional_user_context_data: false,
    #     auth_session_validity: 1,
    #     refresh_token_rotation: {
    #       feature: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #       retry_grace_period_seconds: 1
    #     }
    #   }
    #   options = {}
    #   response = client.update_user_pool_client(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_client: {
    #       user_pool_id: "UserPoolIdType",
    #       client_name: "ClientNameType",
    #       client_id: "ClientIdType",
    #       client_secret: "ClientSecretType",
    #       last_modified_date: Time.now,
    #       creation_date: Time.now,
    #       refresh_token_validity: 1,
    #       access_token_validity: 1,
    #       id_token_validity: 1,
    #       token_validity_units: {
    #         access_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #         id_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"],
    #         refresh_token: "seconds" # One of: ["seconds", "minutes", "hours", "days"]
    #       },
    #       read_attributes: ["ClientPermissionType"],
    #       write_attributes: ["ClientPermissionType"],
    #       explicit_auth_flows: ["ADMIN_NO_SRP_AUTH" # One of: ["ADMIN_NO_SRP_AUTH", "CUSTOM_AUTH_FLOW_ONLY", "USER_PASSWORD_AUTH", "ALLOW_ADMIN_USER_PASSWORD_AUTH", "ALLOW_CUSTOM_AUTH", "ALLOW_USER_PASSWORD_AUTH", "ALLOW_USER_SRP_AUTH", "ALLOW_REFRESH_TOKEN_AUTH", "ALLOW_USER_AUTH"]],
    #       supported_identity_providers: ["ProviderNameType"],
    #       callback_ur_ls: ["RedirectUrlType"],
    #       logout_ur_ls: ["RedirectUrlType"],
    #       default_redirect_uri: "RedirectUrlType",
    #       allowed_o_auth_flows: ["code" # One of: ["code", "implicit", "client_credentials"]],
    #       allowed_o_auth_scopes: ["ScopeType"],
    #       allowed_o_auth_flows_user_pool_client: false,
    #       analytics_configuration: {
    #         application_id: "HexStringType",
    #         application_arn: "ArnType",
    #         role_arn: "ArnType",
    #         external_id: "StringType",
    #         user_data_shared: false
    #       },
    #       prevent_user_existence_errors: "LEGACY" # One of: ["LEGACY", "ENABLED"],
    #       enable_token_revocation: false,
    #       enable_propagate_additional_user_context_data: false,
    #       auth_session_validity: 1,
    #       refresh_token_rotation: {
    #         feature: "ENABLED" # One of: ["ENABLED", "DISABLED"], # required
    #         retry_grace_period_seconds: 1
    #       }
    #     }
    #   }
    # @return [Types::UpdateUserPoolClientResponse]
    def update_user_pool_client(params = {}, options = {})
      request = build_request(:update_user_pool_client, params)
      request.send_request(options)
    end

    # <p>A user pool domain hosts managed login, an authorization server and web server for
    #             authentication in your application. This operation updates the branding version for user
    #             pool domains between <code>1</code> for hosted UI (classic) and <code>2</code> for
    #             managed login. It also updates the SSL certificate for user pool custom domains.</p>
    #          <p>Changes to the domain branding version take up to one minute to take effect for a
    #             prefix domain and up to five minutes for a custom domain.</p>
    #          <p>This operation doesn't change the name of your user pool domain. To change your
    #             domain, delete it with <code>DeleteUserPoolDomain</code> and create a new domain with
    #                 <code>CreateUserPoolDomain</code>.</p>
    #          <p>You can pass the ARN of a new Certificate Manager certificate in this request. Typically, ACM
    #             certificates automatically renew and you user pool can continue to use the same ARN. But
    #             if you generate a new certificate for your custom domain name, replace the original
    #             configuration with the new ARN in this request.</p>
    #          <p>ACM certificates for custom domains must be in the US East (N. Virginia)
    #             Amazon Web Services Region. After you submit your request, Amazon Cognito requires up to 1 hour to distribute
    #             your new certificate to your custom domain.</p>
    #          <p>For more information about adding a custom domain to your user pool, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-add-custom-domain.html">Configuring a user pool domain</a>.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateUserPoolDomainRequest] params
    # @option params [String] :domain
    #   <p>The name of the domain that you want to update. For custom domains, this is the
    #               fully-qualified domain name, for example <code>auth.example.com</code>. For prefix
    #               domains, this is the prefix alone, such as <code>myprefix</code>.</p>
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that is associated with the domain you're updating.</p>
    # @option params [Integer] :managed_login_version
    #   <p>A version number that indicates the state of managed login for your domain. Version
    #               <code>1</code> is hosted UI (classic). Version <code>2</code> is the newer managed
    #               login with the branding editor. For more information, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html">Managed login</a>.</p>
    # @option params [Types::CustomDomainConfigType] :custom_domain_config
    #   <p>The configuration for a custom domain that hosts managed login for your application.
    #               In an <code>UpdateUserPoolDomain</code> request, this parameter specifies an SSL
    #               certificate for the managed login hosted webserver. The certificate must be an ACM ARN
    #               in <code>us-east-1</code>.</p>
    #            <p>When you create a custom domain, the passkey RP ID defaults to the custom domain. If
    #               you had a prefix domain active, this will cause passkey integration for your prefix
    #               domain to stop working due to a mismatch in RP ID. To keep the prefix domain passkey
    #               integration working, you can explicitly set RP ID to the prefix domain.</p>
    # @option params [Types::RoutingType] :routing
    #   <p>The routing configuration for the user pool domain. Specifies failover settings for
    #               multi-region deployments.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     domain: "DomainType", # required
    #     user_pool_id: "UserPoolIdType", # required
    #     managed_login_version: 1,
    #     custom_domain_config: {
    #       certificate_arn: "ArnType", # required
    #       security_policy: "TLS_V1" # One of: ["TLS_V1", "TLS_V1_2_2021", "TLS_V1_3_2025"]
    #     },
    #     routing: {
    #       failover: {
    #         secondary_region: "RegionNameType", # required
    #         primary_route53_health_check_id: "HealthCheckIdType", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_user_pool_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     managed_login_version: 1,
    #     cloud_front_domain: "DomainType",
    #     routing: {
    #       failover: {
    #         secondary_region: "RegionNameType", # required
    #         primary_route53_health_check_id: "HealthCheckIdType", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateUserPoolDomainResponse]
    def update_user_pool_domain(params = {}, options = {})
      request = build_request(:update_user_pool_domain, params)
      request.send_request(options)
    end

    # <p>Updates replica-specific settings for a user pool replica. You can modify the status
    #             to activate or deactivate the replica. This request can be made in both primary and secondary
    #             regions of the user pool.</p>
    #          <note>
    #             <p>Amazon Cognito evaluates Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you must use IAM credentials to authorize requests, and you must
    #     grant yourself the corresponding IAM permission in a policy.</p>
    #             <p class="title">
    #                <b>Learn more</b>
    #             </p>
    #             <ul>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-signing.html">Signing Amazon Web Services API Requests</a>
    #                   </p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>
    #                   </p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::UpdateUserPoolReplicaRequest] params
    # @option params [String] :user_pool_id
    #   <p>The ID of the user pool that contains the replica to update.</p>
    # @option params [String] :region_name
    #   <p>The Amazon Web Services Region of the replica to update.</p>
    # @option params [String] :status
    #   <p>The status to set for the replica. Valid values are ACTIVE and INACTIVE.</p>
    # @example Example update a user pool replica
    #   # The following example sets the status of a user pool replica in the us-east-1 Region to ACTIVE.
    #   params = {
    #     user_pool_id: "ap-south-1_abcd12345",
    #     region_name: "us-east-1",
    #     status: ACTIVE
    #   }
    #   options = {}
    #   response = client.update_user_pool_replica(params, options)
    #   response.to_h #=>
    #   {
    #     user_pool_replica: {
    #       region_name: "us-east-1",
    #       status: ACTIVE,
    #       role: SECONDARY,
    #       user_pool_arn: "arn:aws:cognito-idp:us-east-1:123456789012:userpool/ap-south-1_abcd12345"
    #     }
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     user_pool_id: "UserPoolIdType", # required
    #     region_name: "RegionNameType", # required
    #     status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #   }
    #   options = {}
    #   response = client.update_user_pool_replica(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     user_pool_replica: {
    #       region_name: "RegionNameType",
    #       status: "CREATING" # One of: ["CREATING", "ACTIVE", "INACTIVE", "DELETING"],
    #       role: "PRIMARY" # One of: ["PRIMARY", "SECONDARY"],
    #       user_pool_arn: "ArnType"
    #     }
    #   }
    # @return [Types::UpdateUserPoolReplicaResponse]
    def update_user_pool_replica(params = {}, options = {})
      request = build_request(:update_user_pool_replica, params)
      request.send_request(options)
    end

    # <p>Registers the current user's time-based one-time password (TOTP) authenticator
    #             with a code generated in their authenticator app from a private key that's supplied
    #             by your user pool. Marks the user's software token MFA status as "verified" if
    #             successful. The request takes an access token or a session string, but not both.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::VerifySoftwareTokenRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :session
    #   <p>The session ID from an <code>AssociateSoftwareToken</code> request.</p>
    # @option params [String] :user_code
    #   <p>A TOTP that the user generated in their configured authenticator app.</p>
    # @option params [String] :friendly_device_name
    #   <p>A friendly name for the device that's running the TOTP authenticator.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType",
    #     session: "SessionType",
    #     user_code: "SoftwareTokenMFAUserCodeType", # required
    #     friendly_device_name: "StringType"
    #   }
    #   options = {}
    #   response = client.verify_software_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     status: "SUCCESS" # One of: ["SUCCESS", "ERROR"],
    #     session: "SessionType"
    #   }
    # @return [Types::VerifySoftwareTokenResponse]
    def verify_software_token(params = {}, options = {})
      request = build_request(:verify_software_token, params)
      request.send_request(options)
    end

    # <p>Submits a verification code for a signed-in user who has added or changed a value of
    #             an auto-verified attribute. When successful, the user's attribute becomes verified
    #             and the attribute <code>email_verified</code> or <code>phone_number_verified</code>
    #             becomes <code>true</code>.</p>
    #          <p> If your user pool requires verification before Amazon Cognito updates the attribute value,
    #             this operation updates the affected attribute to its pending value.</p>
    #          <p>Authorize this action with a signed-in user's access token. It must include the scope <code>aws.cognito.signin.user.admin</code>.</p>
    #          <note>
    #             <p>Amazon Cognito doesn't evaluate Identity and Access Management (IAM) policies in requests for this API operation. For
    #     this operation, you can't use IAM credentials to authorize requests, and you can't
    #     grant IAM permissions in policies. For more information about authorization models in
    #     Amazon Cognito, see <a href="https://docs.aws.amazon.com/cognito/latest/developerguide/user-pools-API-operations.html">Using the Amazon Cognito user pools API and user pool endpoints</a>.</p>
    #          </note>
    # @param [Hash, Types::VerifyUserAttributeRequest] params
    # @option params [String] :access_token
    #   <p>A valid access token that Amazon Cognito issued to the currently signed-in user. Must include a scope claim for
    #   <code>aws.cognito.signin.user.admin</code>.</p>
    # @option params [String] :attribute_name
    #   <p>The name of the attribute that you want to verify.</p>
    # @option params [String] :code
    #   <p>The verification code that your user pool sent to the added or changed attribute, for
    #               example the user's email address.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     access_token: "TokenModelType", # required
    #     attribute_name: "AttributeNameType", # required
    #     code: "ConfirmationCodeType", # required
    #   }
    #   options = {}
    #   response = client.verify_user_attribute(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::VerifyUserAttributeResponse]
    def verify_user_attribute(params = {}, options = {})
      request = build_request(:verify_user_attribute, params)
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
      context[:gem_name] = 'aws-sdk-cognitoidentityprovider'
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
