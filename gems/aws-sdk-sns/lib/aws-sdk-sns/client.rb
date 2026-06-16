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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/transfer_encoding'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/invocation_id'
require 'aws-sdk-core/plugins/recursion_detection'
require 'aws-sdk-core/plugins/retry_errors'
require 'aws-sdk-core/plugins/stub_responses'
require 'aws-sdk-core/plugins/query_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:sns)

module Aws::SNS
  # An API client for Aws::SNS.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonSimpleNotificationService
    @identifier = :sns

    add_plugin(::Aws::SNS::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::TransferEncoding)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::InvocationId)
    add_plugin(Aws::Core::Plugins::RecursionDetection)
    add_plugin(Aws::Core::Plugins::RetryErrors)
    add_plugin(Aws::Core::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::QueryProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SNS::EndpointProvider)
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
    # @option options [Integer] :max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt.
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

    # <p>Adds a statement to a topic's access control policy, granting access for the specified
    #             Amazon Web Services accounts to the specified actions.</p>
    #          <note>
    #             <p>To remove the ability to change topic permissions, you must deny permissions to
    #                 the <code>AddPermission</code>, <code>RemovePermission</code>, and
    #                     <code>SetTopicAttributes</code> actions in your IAM policy.</p>
    #          </note>
    # @param [Hash, Types::AddPermissionInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic whose access control policy you wish to modify.</p>
    # @option params [String] :label
    #   <p>A unique identifier for the new policy statement.</p>
    # @option params [Array<String>] :aws_account_id
    #   <p>The Amazon Web Services account IDs of the users (principals) who will be given access to the
    #               specified actions. The users must have Amazon Web Services account, but do not need to be signed up
    #               for this service.</p>
    # @option params [Array<String>] :action_name
    #   <p>The action you want to allow for the specified principal(s).</p>
    #            <p>Valid values: Any Amazon SNS action name, for example <code>Publish</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #     label: "label", # required
    #     aws_account_id: ["delegate"], # required
    #     action_name: ["action"], # required
    #   }
    #   options = {}
    #   response = client.add_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def add_permission(params = {}, options = {})
      request = build_request(:add_permission, params)
      request.send_request(options)
    end

    # <p>Accepts a phone number and indicates whether the phone holder has opted out of
    #             receiving SMS messages from your Amazon Web Services account. You cannot send SMS messages to a number
    #             that is opted out.</p>
    #          <p>To resume sending messages, you can opt in the number by using the
    #                 <code>OptInPhoneNumber</code> action.</p>
    # @param [Hash, Types::CheckIfPhoneNumberIsOptedOutInput] params
    # @option params [String] :phone_number
    #   <p>The phone number for which you want to check the opt out status.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number: "PhoneNumber", # required
    #   }
    #   options = {}
    #   response = client.check_if_phone_number_is_opted_out(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_opted_out: false
    #   }
    # @return [Types::CheckIfPhoneNumberIsOptedOutResponse]
    def check_if_phone_number_is_opted_out(params = {}, options = {})
      request = build_request(:check_if_phone_number_is_opted_out, params)
      request.send_request(options)
    end

    # <p>Verifies an endpoint owner's intent to receive messages by validating the token sent
    #             to the endpoint by an earlier <code>Subscribe</code> action. If the token is valid, the
    #             action creates a new subscription and returns its Amazon Resource Name (ARN). This call
    #             requires an AWS signature only when the <code>AuthenticateOnUnsubscribe</code> flag is
    #             set to "true".</p>
    # @param [Hash, Types::ConfirmSubscriptionInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic for which you wish to confirm a subscription.</p>
    # @option params [String] :token
    #   <p>Short-lived token sent to an endpoint during the <code>Subscribe</code> action.</p>
    # @option params [String] :authenticate_on_unsubscribe
    #   <p>Disallows unauthenticated unsubscribes of the subscription. If the value of this
    #               parameter is <code>true</code> and the request has an Amazon Web Services signature, then only the
    #               topic owner and the subscription owner can unsubscribe the endpoint. The unsubscribe
    #               action requires Amazon Web Services authentication. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #     token: "token", # required
    #     authenticate_on_unsubscribe: "authenticateOnUnsubscribe"
    #   }
    #   options = {}
    #   response = client.confirm_subscription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_arn: "subscriptionARN"
    #   }
    # @return [Types::ConfirmSubscriptionResponse]
    def confirm_subscription(params = {}, options = {})
      request = build_request(:confirm_subscription, params)
      request.send_request(options)
    end

    # <p>Creates a platform application object for one of the supported push notification
    #             services, such as APNS and GCM (Firebase Cloud Messaging), to which devices and mobile
    #             apps may register. You must specify <code>PlatformPrincipal</code> and
    #                 <code>PlatformCredential</code> attributes when using the
    #                 <code>CreatePlatformApplication</code> action.</p>
    #          <p>
    #             <code>PlatformPrincipal</code> and <code>PlatformCredential</code> are received from
    #             the notification service.</p>
    #          <ul>
    #             <li>
    #                <p>For ADM, <code>PlatformPrincipal</code> is <code>client id</code> and
    #                         <code>PlatformCredential</code> is <code>client secret</code>.</p>
    #             </li>
    #             <li>
    #                <p>For APNS and <code>APNS_SANDBOX</code> using certificate credentials,
    #                         <code>PlatformPrincipal</code> is <code>SSL certificate</code> and
    #                         <code>PlatformCredential</code> is <code>private key</code>.</p>
    #             </li>
    #             <li>
    #                <p>For APNS and <code>APNS_SANDBOX</code> using token credentials,
    #                         <code>PlatformPrincipal</code> is <code>signing key ID</code> and
    #                         <code>PlatformCredential</code> is <code>signing key</code>.</p>
    #             </li>
    #             <li>
    #                <p>For Baidu, <code>PlatformPrincipal</code> is <code>API key</code> and
    #                         <code>PlatformCredential</code> is <code>secret key</code>.</p>
    #             </li>
    #             <li>
    #                <p>For GCM (Firebase Cloud Messaging) using key credentials, there is no
    #                         <code>PlatformPrincipal</code>. The <code>PlatformCredential</code> is
    #                         <code>API key</code>.</p>
    #             </li>
    #             <li>
    #                <p>For GCM (Firebase Cloud Messaging) using token credentials, there is no
    #                         <code>PlatformPrincipal</code>. The <code>PlatformCredential</code> is a
    #                     JSON formatted private key file. When using the Amazon Web Services CLI or Amazon Web Services SDKs, the
    #                     file must be in string format and special characters must be ignored. To format
    #                     the file correctly, Amazon SNS recommends using the following command:
    #                         <code>SERVICE_JSON=$(jq @json < service.json)</code>.</p>
    #             </li>
    #             <li>
    #                <p>For MPNS, <code>PlatformPrincipal</code> is <code>TLS certificate</code> and
    #                         <code>PlatformCredential</code> is <code>private key</code>.</p>
    #             </li>
    #             <li>
    #                <p>For WNS, <code>PlatformPrincipal</code> is <code>Package Security
    #                         Identifier</code> and <code>PlatformCredential</code> is <code>secret
    #                         key</code>.</p>
    #             </li>
    #          </ul>
    #          <p>You can use the returned <code>PlatformApplicationArn</code> as an attribute for the
    #                 <code>CreatePlatformEndpoint</code> action.</p>
    # @param [Hash, Types::CreatePlatformApplicationInput] params
    # @option params [String] :name
    #   <p>Application names must be made up of only uppercase and lowercase ASCII letters,
    #               numbers, underscores, hyphens, and periods, and must be between 1 and 256 characters
    #               long.</p>
    # @option params [String] :platform
    #   <p>The following platforms are supported: ADM (Amazon Device Messaging), APNS (Apple Push
    #               Notification Service), APNS_SANDBOX, and GCM (Firebase Cloud Messaging).</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>For a list of attributes, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetPlatformApplicationAttributes.html">
    #                  <code>SetPlatformApplicationAttributes</code>
    #               </a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "String", # required
    #     platform: "String", # required
    #     attributes: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_platform_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_application_arn: "String"
    #   }
    # @return [Types::CreatePlatformApplicationResponse]
    def create_platform_application(params = {}, options = {})
      request = build_request(:create_platform_application, params)
      request.send_request(options)
    end

    # <p>Creates an endpoint for a device and mobile app on one of the supported push
    #             notification services, such as GCM (Firebase Cloud Messaging) and APNS.
    #                 <code>CreatePlatformEndpoint</code> requires the <code>PlatformApplicationArn</code>
    #             that is returned from <code>CreatePlatformApplication</code>. You can use the returned
    #                 <code>EndpointArn</code> to send a message to a mobile app or by the
    #                 <code>Subscribe</code> action for subscription to a topic. The
    #                 <code>CreatePlatformEndpoint</code> action is idempotent, so if the requester
    #             already owns an endpoint with the same device token and attributes, that endpoint's ARN
    #             is returned without creating a new endpoint. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #                 Notifications</a>. </p>
    #          <p>When using <code>CreatePlatformEndpoint</code> with Baidu, two attributes must be
    #             provided: ChannelId and UserId. The token field must also contain the ChannelId. For
    #             more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePushBaiduEndpoint.html">Creating an Amazon SNS Endpoint for
    #                 Baidu</a>. </p>
    # @param [Hash, Types::CreatePlatformEndpointInput] params
    # @option params [String] :platform_application_arn
    #   <p>
    #               <code>PlatformApplicationArn</code> returned from CreatePlatformApplication is used to
    #               create a an endpoint.</p>
    # @option params [String] :token
    #   <p>Unique identifier created by the notification service for an app on a device. The
    #               specific name for Token will vary, depending on which notification service is being
    #               used. For example, when using APNS as the notification service, you need the device
    #               token. Alternatively, when using GCM (Firebase Cloud Messaging) or ADM, the device token
    #               equivalent is called the registration ID.</p>
    # @option params [String] :custom_user_data
    #   <p>Arbitrary user data to associate with the endpoint. Amazon SNS does not use this data. The
    #               data must be in UTF-8 format and less than 2KB.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>For a list of attributes, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetEndpointAttributes.html">
    #                  <code>SetEndpointAttributes</code>
    #               </a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_application_arn: "String", # required
    #     token: "String", # required
    #     custom_user_data: "String",
    #     attributes: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_platform_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoint_arn: "String"
    #   }
    # @return [Types::CreateEndpointResponse]
    def create_platform_endpoint(params = {}, options = {})
      request = build_request(:create_platform_endpoint, params)
      request.send_request(options)
    end

    # <p>Adds a destination phone number to an Amazon Web Services account in the SMS sandbox and sends a
    #             one-time password (OTP) to that phone number.</p>
    #          <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for 
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your 
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send 
    #                 SMS messages only to verified destination phone numbers. For more information, including how to 
    #                 move out of the sandbox to send messages without restrictions, 
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in 
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    # @param [Hash, Types::CreateSMSSandboxPhoneNumberInput] params
    # @option params [String] :phone_number
    #   <p>The destination phone number to verify. On verification, Amazon SNS adds this phone number
    #               to the list of verified phone numbers that you can send SMS messages to.</p>
    # @option params [String] :language_code
    #   <p>The language to use for sending the OTP. The default value is
    #               <code>en-US</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number: "PhoneNumberString", # required
    #     language_code: "en-US" # One of: ["en-US", "en-GB", "es-419", "es-ES", "de-DE", "fr-CA", "fr-FR", "it-IT", "ja-JP", "pt-BR", "kr-KR", "zh-CN", "zh-TW"]
    #   }
    #   options = {}
    #   response = client.create_sms_sandbox_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CreateSMSSandboxPhoneNumberResult]
    def create_sms_sandbox_phone_number(params = {}, options = {})
      request = build_request(:create_sms_sandbox_phone_number, params)
      request.send_request(options)
    end

    # <p>Creates a topic to which notifications can be published. Users can create at most
    #             100,000 standard topics (at most 1,000 FIFO topics). For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html">Creating an Amazon SNS
    #                 topic</a> in the <i>Amazon SNS Developer Guide</i>. This action is
    #             idempotent, so if the requester already owns a topic with the specified name, that
    #             topic's ARN is returned without creating a new topic.</p>
    # @param [Hash, Types::CreateTopicInput] params
    # @option params [String] :name
    #   <p>The name of the topic you want to create.</p>
    #            <p>Constraints: Topic names must be made up of only uppercase and lowercase ASCII
    #               letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters
    #               long.</p>
    #            <p>For a FIFO (first-in-first-out) topic, the name must end with the <code>.fifo</code>
    #               suffix. </p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of attributes with their corresponding values.</p>
    #            <p>The following lists names, descriptions, and values of the special request parameters
    #               that the <code>CreateTopic</code> action uses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DisplayName</code> – The display name to use for a topic with SMS
    #                       subscriptions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Policy</code> – The policy that defines who can access your
    #                       topic. By default, only the topic owner can publish or subscribe to the
    #                       topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TracingConfig</code> – Tracing mode of an Amazon SNS topic. By default
    #                           <code>TracingConfig</code> is set to <code>PassThrough</code>, and the topic
    #                       passes through the tracing header it receives from an Amazon SNS publisher to its
    #                       subscriptions. If set to <code>Active</code>, Amazon SNS will vend X-Ray segment data
    #                       to topic owner account if the sampled flag in the tracing header is true. This
    #                       is only supported on standard topics.</p>
    #               </li>
    #               <li>
    #                  <p>HTTP</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HTTPSuccessFeedbackRoleArn</code> – Indicates successful
    #                               message delivery status for an Amazon SNS topic that is subscribed to an HTTP
    #                               endpoint. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HTTPSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an HTTP endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HTTPFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an HTTP
    #                               endpoint.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Amazon Data Firehose</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>FirehoseSuccessFeedbackRoleArn</code> – Indicates
    #                               successful message delivery status for an Amazon SNS topic that is subscribed
    #                               to an Amazon Data Firehose endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FirehoseSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an Amazon Data Firehose endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FirehoseFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Amazon Data Firehose endpoint. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Lambda</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>LambdaSuccessFeedbackRoleArn</code> – Indicates
    #                               successful message delivery status for an Amazon SNS topic that is subscribed
    #                               to an Lambda endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>LambdaSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an Lambda endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>LambdaFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Lambda endpoint. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Platform application endpoint</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ApplicationSuccessFeedbackRoleArn</code> – Indicates
    #                               successful message delivery status for an Amazon SNS topic that is subscribed
    #                               to a platform application endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ApplicationSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an platform application endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ApplicationFailureFeedbackRoleArn</code> – Indicates
    #                               failed message delivery status for an Amazon SNS topic that is subscribed to
    #                               an platform application endpoint.</p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>In addition to being able to configure topic attributes for message
    #                           delivery status of notification messages sent to Amazon SNS application
    #                           endpoints, you can also configure application attributes for the delivery
    #                           status of push notification messages sent to push notification
    #                           services.</p>
    #                     <p>For example, For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application
    #                               Attributes for Message Delivery Status</a>. </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>Amazon SQS</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SQSSuccessFeedbackRoleArn</code> – Indicates successful
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Amazon SQS endpoint. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SQSSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an Amazon SQS endpoint. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SQSFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Amazon SQS endpoint. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <ENDPOINT>SuccessFeedbackRoleArn and <ENDPOINT>FailureFeedbackRoleArn
    #                   attributes are used to give Amazon SNS write access to use CloudWatch Logs on your
    #                   behalf. The <ENDPOINT>SuccessFeedbackSampleRate attribute is for specifying the
    #                   sample rate percentage (0-100) of successfully delivered messages. After you
    #                   configure the <ENDPOINT>FailureFeedbackRoleArn attribute, then all failed message
    #                   deliveries generate CloudWatch Logs. </p>
    #            </note>
    #            <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side
    #               encryption</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KmsMasterKeyId</code> – The ID of an Amazon Web Services managed customer master
    #                       key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms">Key
    #                           Terms</a>. For more examples, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>Key Management Service API Reference</i>. </p>
    #               </li>
    #            </ul>
    #            <p>The following attributes apply only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ArchivePolicy</code> – The policy that sets the retention period
    #                       for messages stored in the message archive of an Amazon SNS FIFO
    #                       topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ContentBasedDeduplication</code> – Enables content-based
    #                       deduplication for FIFO topics.</p>
    #                  <ul>
    #                     <li>
    #                        <p>By default, <code>ContentBasedDeduplication</code> is set to
    #                                   <code>false</code>. If you create a FIFO topic and this attribute is
    #                                   <code>false</code>, you must specify a value for the
    #                                   <code>MessageDeduplicationId</code> parameter for the <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a> action. </p>
    #                     </li>
    #                     <li>
    #                        <p>When you set <code>ContentBasedDeduplication</code> to
    #                                   <code>true</code>, Amazon SNS uses a SHA-256 hash to
    #                               generate the <code>MessageDeduplicationId</code> using the body of the
    #                               message (but not the attributes of the message).</p>
    #                        <p>(Optional) To override the generated value, you can specify a value
    #                               for the <code>MessageDeduplicationId</code> parameter for the
    #                                   <code>Publish</code> action.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FifoThroughputScope</code> – Enables higher throughput for your FIFO topic by adjusting the scope of deduplication. This attribute has two possible values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Topic</code> – The scope of message deduplication is across the entire topic. This is the default value and maintains existing behavior, with a maximum throughput of 3000 messages per second or 20MB per second, whichever comes first.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MessageGroup</code> – The scope of deduplication is within each individual message group, which enables higher throughput per topic subject to regional quotas. For more information on quotas or to request an increase, see <a href="https://docs.aws.amazon.com/general/latest/gr/sns.html">Amazon SNS service quotas</a> in the Amazon Web Services General Reference.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The list of tags to add to a new topic.</p>
    #            <note>
    #               <p>To be able to tag a topic on creation, you must have the
    #                       <code>sns:CreateTopic</code> and <code>sns:TagResource</code>
    #                   permissions.</p>
    #            </note>
    # @option params [String] :data_protection_policy
    #   <p>The body of the policy document you want to use for this topic.</p>
    #            <p>You can only add one policy per topic.</p>
    #            <p>The policy must be in JSON string format.</p>
    #            <p>Length Constraints: Maximum length of 30,720.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "topicName", # required
    #     attributes: {
    #       "attributeName" => "attributeValue"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     data_protection_policy: "attributeValue"
    #   }
    #   options = {}
    #   response = client.create_topic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     topic_arn: "topicARN"
    #   }
    # @return [Types::CreateTopicResponse]
    def create_topic(params = {}, options = {})
      request = build_request(:create_topic, params)
      request.send_request(options)
    end

    # <p>Deletes the endpoint for a device and mobile app from Amazon SNS. This action is
    #             idempotent. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #             Notifications</a>. </p>
    #          <p>When you delete an endpoint that is also subscribed to a topic, then you must also
    #             unsubscribe the endpoint from the topic.</p>
    # @param [Hash, Types::DeleteEndpointInput] params
    # @option params [String] :endpoint_arn
    #   <p>
    #               <code>EndpointArn</code> of endpoint to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_endpoint(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_endpoint(params = {}, options = {})
      request = build_request(:delete_endpoint, params)
      request.send_request(options)
    end

    # <p>Deletes a platform application object for one of the supported push notification
    #             services, such as APNS and GCM (Firebase Cloud Messaging). For more information, see
    #                 <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS
    #                 Mobile Push Notifications</a>. </p>
    # @param [Hash, Types::DeletePlatformApplicationInput] params
    # @option params [String] :platform_application_arn
    #   <p>
    #               <code>PlatformApplicationArn</code> of platform application object to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_application_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.delete_platform_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_platform_application(params = {}, options = {})
      request = build_request(:delete_platform_application, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Web Services account's verified or pending phone number from the SMS
    #             sandbox.</p>
    #          <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for 
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your 
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send 
    #                 SMS messages only to verified destination phone numbers. For more information, including how to 
    #                 move out of the sandbox to send messages without restrictions, 
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in 
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteSMSSandboxPhoneNumberInput] params
    # @option params [String] :phone_number
    #   <p>The destination phone number to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number: "PhoneNumberString", # required
    #   }
    #   options = {}
    #   response = client.delete_sms_sandbox_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteSMSSandboxPhoneNumberResult]
    def delete_sms_sandbox_phone_number(params = {}, options = {})
      request = build_request(:delete_sms_sandbox_phone_number, params)
      request.send_request(options)
    end

    # <p>Deletes a topic and all its subscriptions. Deleting a topic might prevent some
    #             messages previously sent to the topic from being delivered to subscribers. This action
    #             is idempotent, so deleting a topic that does not exist does not result in an
    #             error.</p>
    # @param [Hash, Types::DeleteTopicInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic you want to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #   }
    #   options = {}
    #   response = client.delete_topic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_topic(params = {}, options = {})
      request = build_request(:delete_topic, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified inline <code>DataProtectionPolicy</code> document that is
    #             stored in the specified Amazon SNS topic. </p>
    # @param [Hash, Types::GetDataProtectionPolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic whose <code>DataProtectionPolicy</code> you want to get.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names
    #                   (ARNs)</a> in the Amazon Web Services General Reference.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "topicARN", # required
    #   }
    #   options = {}
    #   response = client.get_data_protection_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     data_protection_policy: "attributeValue"
    #   }
    # @return [Types::GetDataProtectionPolicyResponse]
    def get_data_protection_policy(params = {}, options = {})
      request = build_request(:get_data_protection_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves the endpoint attributes for a device on one of the supported push
    #             notification services, such as GCM (Firebase Cloud Messaging) and APNS. For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
    # @param [Hash, Types::GetEndpointAttributesInput] params
    # @option params [String] :endpoint_arn
    #   <p>
    #               <code>EndpointArn</code> for <code>GetEndpointAttributes</code> input.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_endpoint_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetEndpointAttributesResponse]
    def get_endpoint_attributes(params = {}, options = {})
      request = build_request(:get_endpoint_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves the attributes of the platform application object for the supported push
    #             notification services, such as APNS and GCM (Firebase Cloud Messaging). For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
    # @param [Hash, Types::GetPlatformApplicationAttributesInput] params
    # @option params [String] :platform_application_arn
    #   <p>
    #               <code>PlatformApplicationArn</code> for GetPlatformApplicationAttributesInput.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_application_arn: "String", # required
    #   }
    #   options = {}
    #   response = client.get_platform_application_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetPlatformApplicationAttributesResponse]
    def get_platform_application_attributes(params = {}, options = {})
      request = build_request(:get_platform_application_attributes, params)
      request.send_request(options)
    end

    # <p>Returns the settings for sending SMS messages from your Amazon Web Services account.</p>
    #          <p>These settings are set with the <code>SetSMSAttributes</code> action.</p>
    # @param [Hash, Types::GetSMSAttributesInput] params
    # @option params [Array<String>] :attributes
    #   <p>A list of the individual attribute names, such as <code>MonthlySpendLimit</code>, for
    #               which you want values.</p>
    #            <p>For all attribute names, see <a href="https://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html">SetSMSAttributes</a>.</p>
    #            <p>If you don't use this parameter, Amazon SNS returns all SMS attributes.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attributes: ["String"]
    #   }
    #   options = {}
    #   response = client.get_sms_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "String" => "String"
    #     }
    #   }
    # @return [Types::GetSMSAttributesResponse]
    def get_sms_attributes(params = {}, options = {})
      request = build_request(:get_sms_attributes, params)
      request.send_request(options)
    end

    # <p>Retrieves the SMS sandbox status for the calling Amazon Web Services account in the target
    #             Amazon Web Services Region.</p>
    #          <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for 
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your 
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send 
    #                 SMS messages only to verified destination phone numbers. For more information, including how to 
    #                 move out of the sandbox to send messages without restrictions, 
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in 
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    # @param [Hash, Types::GetSMSSandboxAccountStatusInput] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_sms_sandbox_account_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     is_in_sandbox: false, # required
    #   }
    # @return [Types::GetSMSSandboxAccountStatusResult]
    def get_sms_sandbox_account_status(params = {}, options = {})
      request = build_request(:get_sms_sandbox_account_status, params)
      request.send_request(options)
    end

    # <p>Returns all of the properties of a subscription.</p>
    # @param [Hash, Types::GetSubscriptionAttributesInput] params
    # @option params [String] :subscription_arn
    #   <p>The ARN of the subscription whose properties you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_arn: "subscriptionARN", # required
    #   }
    #   options = {}
    #   response = client.get_subscription_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "attributeName" => "attributeValue"
    #     }
    #   }
    # @return [Types::GetSubscriptionAttributesResponse]
    def get_subscription_attributes(params = {}, options = {})
      request = build_request(:get_subscription_attributes, params)
      request.send_request(options)
    end

    # <p>Returns all of the properties of a topic. Topic properties returned might differ based
    #             on the authorization of the user.</p>
    # @param [Hash, Types::GetTopicAttributesInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic whose properties you want to get.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #   }
    #   options = {}
    #   response = client.get_topic_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attributes: {
    #       "attributeName" => "attributeValue"
    #     }
    #   }
    # @return [Types::GetTopicAttributesResponse]
    def get_topic_attributes(params = {}, options = {})
      request = build_request(:get_topic_attributes, params)
      request.send_request(options)
    end

    # <p>Lists the endpoints and endpoint attributes for devices in a supported push
    #             notification service, such as GCM (Firebase Cloud Messaging) and APNS. The results for
    #                 <code>ListEndpointsByPlatformApplication</code> are paginated and return a limited
    #             list of endpoints, up to 100. If additional records are available after the first page
    #             results, then a NextToken string will be returned. To receive the next page, you call
    #                 <code>ListEndpointsByPlatformApplication</code> again using the NextToken string
    #             received from the previous call. When there are no more records to return, NextToken
    #             will be null. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #             Notifications</a>. </p>
    #          <p>This action is throttled at 30 transactions per second (TPS).</p>
    # @param [Hash, Types::ListEndpointsByPlatformApplicationInput] params
    # @option params [String] :platform_application_arn
    #   <p>
    #               <code>PlatformApplicationArn</code> for
    #                   <code>ListEndpointsByPlatformApplicationInput</code> action.</p>
    # @option params [String] :next_token
    #   <p>
    #               <code>NextToken</code> string is used when calling
    #                   <code>ListEndpointsByPlatformApplication</code> action to retrieve additional
    #               records that are available after the first page results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_application_arn: "String", # required
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_endpoints_by_platform_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     endpoints: [
    #       {
    #         endpoint_arn: "String",
    #         attributes: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListEndpointsByPlatformApplicationResponse]
    def list_endpoints_by_platform_application(params = {}, options = {})
      request = build_request(:list_endpoints_by_platform_application, params)
      request.send_request(options)
    end

    # <p>Lists the calling Amazon Web Services account's dedicated origination numbers and their metadata.
    #             For more information about origination numbers, see <a href="https://docs.aws.amazon.com/sns/latest/dg/channels-sms-originating-identities-origination-numbers.html">Origination numbers</a> in the <i>Amazon SNS Developer
    #             Guide</i>.</p>
    # @param [Hash, Types::ListOriginationNumbersRequest] params
    # @option params [String] :next_token
    #   <p>Token that the previous <code>ListOriginationNumbers</code> request returns.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of origination numbers to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_origination_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "nextToken",
    #     phone_numbers: [
    #       {
    #         created_at: Time.now,
    #         phone_number: "PhoneNumber",
    #         status: "String",
    #         iso2_country_code: "Iso2CountryCode",
    #         route_type: "Transactional" # One of: ["Transactional", "Promotional", "Premium"],
    #         number_capabilities: ["SMS" # One of: ["SMS", "MMS", "VOICE"]]
    #       }
    #     ]
    #   }
    # @return [Types::ListOriginationNumbersResult]
    def list_origination_numbers(params = {}, options = {})
      request = build_request(:list_origination_numbers, params)
      request.send_request(options)
    end

    # <p>Returns a list of phone numbers that are opted out, meaning you cannot send SMS
    #             messages to them.</p>
    #          <p>The results for <code>ListPhoneNumbersOptedOut</code> are paginated, and each page
    #             returns up to 100 phone numbers. If additional phone numbers are available after the
    #             first page of results, then a <code>NextToken</code> string will be returned. To receive
    #             the next page, you call <code>ListPhoneNumbersOptedOut</code> again using the
    #                 <code>NextToken</code> string received from the previous call. When there are no
    #             more records to return, <code>NextToken</code> will be null.</p>
    # @param [Hash, Types::ListPhoneNumbersOptedOutInput] params
    # @option params [String] :next_token
    #   <p>A <code>NextToken</code> string is used when you call the
    #                   <code>ListPhoneNumbersOptedOut</code> action to retrieve additional records that are
    #               available after the first page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_phone_numbers_opted_out(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_numbers: ["PhoneNumber"],
    #     next_token: "String"
    #   }
    # @return [Types::ListPhoneNumbersOptedOutResponse]
    def list_phone_numbers_opted_out(params = {}, options = {})
      request = build_request(:list_phone_numbers_opted_out, params)
      request.send_request(options)
    end

    # <p>Lists the platform application objects for the supported push notification services,
    #             such as APNS and GCM (Firebase Cloud Messaging). The results for
    #                 <code>ListPlatformApplications</code> are paginated and return a limited list of
    #             applications, up to 100. If additional records are available after the first page
    #             results, then a NextToken string will be returned. To receive the next page, you call
    #                 <code>ListPlatformApplications</code> using the NextToken string received from the
    #             previous call. When there are no more records to return, <code>NextToken</code> will be
    #             null. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push
    #             Notifications</a>. </p>
    #          <p>This action is throttled at 15 transactions per second (TPS).</p>
    # @param [Hash, Types::ListPlatformApplicationsInput] params
    # @option params [String] :next_token
    #   <p>
    #               <code>NextToken</code> string is used when calling
    #                   <code>ListPlatformApplications</code> action to retrieve additional records that are
    #               available after the first page results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String"
    #   }
    #   options = {}
    #   response = client.list_platform_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     platform_applications: [
    #       {
    #         platform_application_arn: "String",
    #         attributes: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPlatformApplicationsResponse]
    def list_platform_applications(params = {}, options = {})
      request = build_request(:list_platform_applications, params)
      request.send_request(options)
    end

    # <p>Lists the calling Amazon Web Services account's current verified and pending destination phone
    #             numbers in the SMS sandbox.</p>
    #          <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for 
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your 
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send 
    #                 SMS messages only to verified destination phone numbers. For more information, including how to 
    #                 move out of the sandbox to send messages without restrictions, 
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in 
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    # @param [Hash, Types::ListSMSSandboxPhoneNumbersInput] params
    # @option params [String] :next_token
    #   <p>Token that the previous <code>ListSMSSandboxPhoneNumbersInput</code> request
    #               returns.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of phone numbers to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_sms_sandbox_phone_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_numbers: [ # required
    #       {
    #         phone_number: "PhoneNumberString",
    #         status: "Pending" # One of: ["Pending", "Verified"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListSMSSandboxPhoneNumbersResult]
    def list_sms_sandbox_phone_numbers(params = {}, options = {})
      request = build_request(:list_sms_sandbox_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Returns a list of the requester's subscriptions. Each call returns a limited list of
    #             subscriptions, up to 100. If there are more subscriptions, a <code>NextToken</code> is
    #             also returned. Use the <code>NextToken</code> parameter in a new
    #                 <code>ListSubscriptions</code> call to get further results.</p>
    #          <p>This action is throttled at 30 transactions per second (TPS).</p>
    # @param [Hash, Types::ListSubscriptionsInput] params
    # @option params [String] :next_token
    #   <p>Token returned by the previous <code>ListSubscriptions</code> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.list_subscriptions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriptions: [
    #       {
    #         subscription_arn: "subscriptionARN",
    #         owner: "account",
    #         protocol: "protocol",
    #         endpoint: "Endpoint2",
    #         topic_arn: "topicARN"
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListSubscriptionsResponse]
    def list_subscriptions(params = {}, options = {})
      request = build_request(:list_subscriptions, params)
      request.send_request(options)
    end

    # <p>Returns a list of the subscriptions to a specific topic. Each call returns a limited
    #             list of subscriptions, up to 100. If there are more subscriptions, a
    #                 <code>NextToken</code> is also returned. Use the <code>NextToken</code> parameter in
    #             a new <code>ListSubscriptionsByTopic</code> call to get further results.</p>
    #          <p>This action is throttled at 30 transactions per second (TPS).</p>
    # @param [Hash, Types::ListSubscriptionsByTopicInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic for which you wish to find subscriptions.</p>
    # @option params [String] :next_token
    #   <p>Token returned by the previous <code>ListSubscriptionsByTopic</code> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.list_subscriptions_by_topic(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscriptions: [
    #       {
    #         subscription_arn: "subscriptionARN",
    #         owner: "account",
    #         protocol: "protocol",
    #         endpoint: "Endpoint2",
    #         topic_arn: "topicARN"
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListSubscriptionsByTopicResponse]
    def list_subscriptions_by_topic(params = {}, options = {})
      request = build_request(:list_subscriptions_by_topic, params)
      request.send_request(options)
    end

    # <p>List all tags added to the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the
    #                 <i>Amazon Simple Notification Service Developer Guide</i>.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic for which to list tags.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Returns a list of the requester's topics. Each call returns a limited list of topics,
    #             up to 100. If there are more topics, a <code>NextToken</code> is also returned. Use the
    #                 <code>NextToken</code> parameter in a new <code>ListTopics</code> call to get
    #             further results.</p>
    #          <p>This action is throttled at 30 transactions per second (TPS).</p>
    # @param [Hash, Types::ListTopicsInput] params
    # @option params [String] :next_token
    #   <p>Token returned by the previous <code>ListTopics</code> request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "nextToken"
    #   }
    #   options = {}
    #   response = client.list_topics(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     topics: [
    #       {
    #         topic_arn: "topicARN"
    #       }
    #     ],
    #     next_token: "nextToken"
    #   }
    # @return [Types::ListTopicsResponse]
    def list_topics(params = {}, options = {})
      request = build_request(:list_topics, params)
      request.send_request(options)
    end

    # <p>Use this request to opt in a phone number that is opted out, which enables you to
    #             resume sending SMS messages to the number.</p>
    #          <p>You can opt in a phone number only once every 30 days.</p>
    # @param [Hash, Types::OptInPhoneNumberInput] params
    # @option params [String] :phone_number
    #   <p>The phone number to opt in. Use E.164 format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number: "PhoneNumber", # required
    #   }
    #   options = {}
    #   response = client.opt_in_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::OptInPhoneNumberResponse]
    def opt_in_phone_number(params = {}, options = {})
      request = build_request(:opt_in_phone_number, params)
      request.send_request(options)
    end

    # <p>Sends a message to an Amazon SNS topic, a text message (SMS message) directly to a phone
    #             number, or a message to a mobile platform endpoint (when you specify the
    #                 <code>TargetArn</code>).</p>
    #          <p>If you send a message to a topic, Amazon SNS delivers the message to each endpoint that is
    #             subscribed to the topic. The format of the message depends on the notification protocol
    #             for each subscribed endpoint.</p>
    #          <p>When a <code>messageId</code> is returned, the message is saved and Amazon SNS immediately
    #             delivers it to subscribers.</p>
    #          <p>To use the <code>Publish</code> action for publishing a message to a mobile endpoint,
    #             such as an app on a Kindle device or mobile phone, you must specify the EndpointArn for
    #             the TargetArn parameter. The EndpointArn is returned when making a call with the
    #                 <code>CreatePlatformEndpoint</code> action. </p>
    #          <p>For more information about formatting messages, see <a href="https://docs.aws.amazon.com/sns/latest/dg/mobile-push-send-custommessage.html">Send Custom
    #                 Platform-Specific Payloads in Messages to Mobile Devices</a>. </p>
    #          <important>
    #             <p>You can publish messages only to topics and endpoints in the same
    #                 Amazon Web Services Region.</p>
    #          </important>
    # @param [Hash, Types::PublishInput] params
    # @option params [String] :topic_arn
    #   <p>The topic you want to publish to.</p>
    #            <p>If you don't specify a value for the <code>TopicArn</code> parameter, you must specify
    #               a value for the <code>PhoneNumber</code> or <code>TargetArn</code> parameters.</p>
    # @option params [String] :target_arn
    #   <p>If you don't specify a value for the <code>TargetArn</code> parameter, you must
    #               specify a value for the <code>PhoneNumber</code> or <code>TopicArn</code>
    #               parameters.</p>
    # @option params [String] :phone_number
    #   <p>The phone number to which you want to deliver an SMS message. Use E.164 format.</p>
    #            <p>If you don't specify a value for the <code>PhoneNumber</code> parameter, you must
    #               specify a value for the <code>TargetArn</code> or <code>TopicArn</code>
    #               parameters.</p>
    # @option params [String] :message
    #   <p>The message you want to send.</p>
    #            <p>If you are publishing to a topic and you want to send the same message to all
    #               transport protocols, include the text of the message as a String value. If you want to
    #               send different messages for each transport protocol, set the value of the
    #                   <code>MessageStructure</code> parameter to <code>json</code> and use a JSON object
    #               for the <code>Message</code> parameter. 
    #           </p>
    #            <p></p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>With the exception of SMS, messages must be UTF-8 encoded strings and at most
    #                       256 KB in size (262,144 bytes, not 262,144 characters).</p>
    #               </li>
    #               <li>
    #                  <p>For SMS, each message can contain up to 140 characters. This character limit
    #                       depends on the encoding schema. For example, an SMS message can contain 160 GSM
    #                       characters, 140 ASCII characters, or 70 UCS-2 characters.</p>
    #                  <p>If you publish a message that exceeds this size limit, Amazon SNS sends the message
    #                       as multiple messages, each fitting within the size limit. Messages aren't
    #                       truncated mid-word but are cut off at whole-word boundaries.</p>
    #                  <p>The total size limit for a single SMS <code>Publish</code> action is 1,600
    #                       characters.</p>
    #               </li>
    #            </ul>
    #            <p>JSON-specific constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Keys in the JSON object that correspond to supported transport protocols must
    #                       have simple JSON string values.</p>
    #               </li>
    #               <li>
    #                  <p>The values will be parsed (unescaped) before they are used in outgoing
    #                       messages.</p>
    #               </li>
    #               <li>
    #                  <p>Outbound notifications are JSON encoded (meaning that the characters will be
    #                       reescaped for sending).</p>
    #               </li>
    #               <li>
    #                  <p>Values have a minimum length of 0 (the empty string, "", is allowed).</p>
    #               </li>
    #               <li>
    #                  <p>Values have a maximum length bounded by the overall message size (so,
    #                       including multiple protocols may limit message sizes).</p>
    #               </li>
    #               <li>
    #                  <p>Non-string values will cause the key to be ignored.</p>
    #               </li>
    #               <li>
    #                  <p>Keys that do not correspond to supported transport protocols are
    #                       ignored.</p>
    #               </li>
    #               <li>
    #                  <p>Duplicate keys are not allowed.</p>
    #               </li>
    #               <li>
    #                  <p>Failure to parse or validate any key or value in the message will cause the
    #                           <code>Publish</code> call to return an error (no partial delivery).</p>
    #               </li>
    #            </ul>
    # @option params [String] :subject
    #   <p>Optional parameter to be used as the "Subject" line when the message is delivered to
    #               email endpoints. This field will also be included, if present, in the standard JSON
    #               messages delivered to other endpoints.</p>
    #            <p>Constraints: Subjects must be UTF-8 text with no line breaks or control characters,
    #               and less than 100 characters long.</p>
    # @option params [String] :message_structure
    #   <p>Set <code>MessageStructure</code> to <code>json</code> if you want to send a different
    #               message for each protocol. For example, using one publish action, you can send a short
    #               message to your SMS subscribers and a longer message to your email subscribers. If you
    #               set <code>MessageStructure</code> to <code>json</code>, the value of the
    #                   <code>Message</code> parameter must: </p>
    #            <ul>
    #               <li>
    #                  <p>be a syntactically valid JSON object; and</p>
    #               </li>
    #               <li>
    #                  <p>contain at least a top-level JSON key of "default" with a value that is a
    #                       string.</p>
    #               </li>
    #            </ul>
    #            <p>You can define other top-level keys that define the message you want to send to a
    #               specific transport protocol (e.g., "http").</p>
    #            <p>Valid value: <code>json</code>
    #            </p>
    # @option params [Hash<String, Types::MessageAttributeValue>] :message_attributes
    #   <p>Message attributes for Publish action.</p>
    # @option params [String] :message_deduplication_id
    #   <ul>
    #               <li>
    #                  <p>This parameter applies only to FIFO (first-in-first-out) topics. The
    #                           <code>MessageDeduplicationId</code> can contain up to 128 alphanumeric
    #                       characters <code>(a-z, A-Z, 0-9)</code> and punctuation
    #                           <code>(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #               </li>
    #               <li>
    #                  <p>Every message must have a unique <code>MessageDeduplicationId</code>, which is
    #                       a token used for deduplication of sent messages within the 5 minute minimum
    #                       deduplication interval.</p>
    #               </li>
    #               <li>
    #                  <p>The scope of deduplication depends on the <code>FifoThroughputScope</code>
    #                       attribute, when set to <code>Topic</code> the message deduplication scope is
    #                       across the entire topic, when set to <code>MessageGroup</code> the message
    #                       deduplication scope is within each individual message group.</p>
    #               </li>
    #               <li>
    #                  <p>If a message with a particular <code>MessageDeduplicationId</code> is sent
    #                       successfully, subsequent messages within the deduplication scope and interval,
    #                       with the same <code>MessageDeduplicationId</code>, are accepted successfully but
    #                       aren't delivered.</p>
    #               </li>
    #               <li>
    #                  <p>Every message must have a unique <code>MessageDeduplicationId</code>:</p>
    #                  <ul>
    #                     <li>
    #                        <p>You may provide a <code>MessageDeduplicationId</code>
    #                               explicitly.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you aren't able to provide a <code>MessageDeduplicationId</code>
    #                               and you enable <code>ContentBasedDeduplication</code> for your topic,
    #                               Amazon SNS uses a SHA-256 hash to generate the
    #                                   <code>MessageDeduplicationId</code> using the body of the message
    #                               (but not the attributes of the message).</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't provide a <code>MessageDeduplicationId</code> and the
    #                               topic doesn't have <code>ContentBasedDeduplication</code> set, the
    #                               action fails with an error.</p>
    #                     </li>
    #                     <li>
    #                        <p>If the topic has a <code>ContentBasedDeduplication</code> set, your
    #                                   <code>MessageDeduplicationId</code> overrides the generated one.
    #                           </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>When <code>ContentBasedDeduplication</code> is in effect, messages with
    #                       identical content sent within the deduplication scope and interval are treated
    #                       as duplicates and only one copy of the message is delivered.</p>
    #               </li>
    #               <li>
    #                  <p>If you send one message with <code>ContentBasedDeduplication</code> enabled,
    #                       and then another message with a <code>MessageDeduplicationId</code> that is the
    #                       same as the one generated for the first <code>MessageDeduplicationId</code>, the
    #                       two messages are treated as duplicates, within the deduplication scope and
    #                       interval, and only one copy of the message is delivered.</p>
    #               </li>
    #            </ul>
    # @option params [String] :message_group_id
    #   <p>The
    #                   <code>MessageGroupId</code> can contain up to 128 alphanumeric characters
    #                   <code>(a-z, A-Z, 0-9)</code> and punctuation
    #                   <code>(!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~)</code>.</p>
    #            <p>
    #           For FIFO topics: The <code>MessageGroupId</code> is a tag that specifies that a message belongs to a
    #               specific message group. Messages that belong to the same message group are processed in
    #               a FIFO manner (however, messages in different message groups might be processed out of
    #               order). Every message must include a <code>MessageGroupId</code>.
    #           </p>
    #            <p>
    #           For standard topics: The <code>MessageGroupId</code> is optional
    #               and is forwarded only to Amazon SQS standard subscriptions to activate <a href="https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/sqs-fair-queues.html">fair queues</a>.
    #               The <code>MessageGroupId</code> is not used for, or sent to, any other endpoint types.
    #               When provided, the same validation rules apply as for FIFO topics.
    #           </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN",
    #     target_arn: "String",
    #     phone_number: "PhoneNumber",
    #     message: "message", # required
    #     subject: "subject",
    #     message_structure: "messageStructure",
    #     message_attributes: {
    #       "String" => {
    #         data_type: "String", # required
    #         string_value: "String",
    #         binary_value: "data"
    #       }
    #     },
    #     message_deduplication_id: "String",
    #     message_group_id: "String"
    #   }
    #   options = {}
    #   response = client.publish(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "messageId",
    #     sequence_number: "String"
    #   }
    # @return [Types::PublishResponse]
    def publish(params = {}, options = {})
      request = build_request(:publish, params)
      request.send_request(options)
    end

    # <p>Publishes up to 10 messages to the specified topic in a single batch. This is a batch
    #             version of the <code>Publish</code> API. If you try to send more than 10 messages in a
    #             single batch request, you will receive a <code>TooManyEntriesInBatchRequest</code>
    #             exception.</p>
    #          <p>For FIFO topics, multiple messages within a single batch are published in the order
    #             they are sent, and messages are deduplicated within the batch and across batches for
    #             five minutes.</p>
    #          <p>The result of publishing each message is reported individually in the response.
    #             Because the batch request can result in a combination of successful and unsuccessful
    #             actions, you should check for batch errors even when the call returns an HTTP status
    #             code of 200.</p>
    #          <p>The maximum allowed individual message size and the maximum total payload size (the sum
    #             of the individual lengths of all of the batched messages) are both 256 KB (262,144
    #             bytes).</p>
    #          <important>
    #             <p>The <code>PublishBatch</code> API can send up to 10 messages at a time. If you
    #                 attempt to send more than 10 messages in one request, you will encounter a
    #                     <code>TooManyEntriesInBatchRequest</code> exception. In such cases, split your
    #                 messages into multiple requests, each containing no more than 10 messages.</p>
    #          </important>
    #          <p>Some actions take lists of parameters. These lists are specified using the
    #                 <code>param.n</code> notation. Values of <code>n</code> are integers starting from
    #                 <b>1</b>. For example, a parameter list with two elements
    #             looks like this:</p>
    #          <p>
    #             <code>&AttributeName.1=first</code>
    #          </p>
    #          <p>
    #             <code>&AttributeName.2=second</code>
    #          </p>
    #          <p>If you send a batch message to a topic, Amazon SNS publishes the batch message to each
    #             endpoint that is subscribed to the topic. The format of the batch message depends on the
    #             notification protocol for each subscribed endpoint.</p>
    #          <p>When a <code>messageId</code> is returned, the batch message is saved, and Amazon SNS
    #             immediately delivers the message to subscribers.</p>
    # @param [Hash, Types::PublishBatchInput] params
    # @option params [String] :topic_arn
    #   <p>The Amazon resource name (ARN) of the topic you want to batch publish to.</p>
    # @option params [Array<Types::PublishBatchRequestEntry>] :publish_batch_request_entries
    #   <p>A list of <code>PublishBatch</code> request entries to be sent to the SNS
    #               topic.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #     publish_batch_request_entries: [ # required
    #       {
    #         id: "String", # required
    #         message: "message", # required
    #         subject: "subject",
    #         message_structure: "messageStructure",
    #         message_attributes: {
    #           "String" => {
    #             data_type: "String", # required
    #             string_value: "String",
    #             binary_value: "data"
    #           }
    #         },
    #         message_deduplication_id: "String",
    #         message_group_id: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.publish_batch(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     successful: [
    #       {
    #         id: "String",
    #         message_id: "messageId",
    #         sequence_number: "String"
    #       }
    #     ],
    #     failed: [
    #       {
    #         id: "String", # required
    #         code: "String", # required
    #         message: "String",
    #         sender_fault: false, # required
    #       }
    #     ]
    #   }
    # @return [Types::PublishBatchResponse]
    def publish_batch(params = {}, options = {})
      request = build_request(:publish_batch, params)
      request.send_request(options)
    end

    # <p>Adds or updates an inline policy document that is stored in the specified Amazon SNS
    #             topic.</p>
    # @param [Hash, Types::PutDataProtectionPolicyInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic whose <code>DataProtectionPolicy</code> you want to add or
    #               update.</p>
    #            <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names
    #                   (ARNs)</a> in the Amazon Web Services General Reference.</p>
    # @option params [String] :data_protection_policy
    #   <p>The JSON serialization of the topic's <code>DataProtectionPolicy</code>.</p>
    #            <p>The <code>DataProtectionPolicy</code> must be in JSON string format.</p>
    #            <p>Length Constraints: Maximum length of 30,720.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "topicARN", # required
    #     data_protection_policy: "attributeValue", # required
    #   }
    #   options = {}
    #   response = client.put_data_protection_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_data_protection_policy(params = {}, options = {})
      request = build_request(:put_data_protection_policy, params)
      request.send_request(options)
    end

    # <p>Removes a statement from a topic's access control policy.</p>
    #          <note>
    #             <p>To remove the ability to change topic permissions, you must deny permissions to
    #                 the <code>AddPermission</code>, <code>RemovePermission</code>, and
    #                     <code>SetTopicAttributes</code> actions in your IAM policy.</p>
    #          </note>
    # @param [Hash, Types::RemovePermissionInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic whose access control policy you wish to modify.</p>
    # @option params [String] :label
    #   <p>The unique label of the statement you want to remove.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #     label: "label", # required
    #   }
    #   options = {}
    #   response = client.remove_permission(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def remove_permission(params = {}, options = {})
      request = build_request(:remove_permission, params)
      request.send_request(options)
    end

    # <p>Sets the attributes for an endpoint for a device on one of the supported push
    #             notification services, such as GCM (Firebase Cloud Messaging) and APNS. For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. </p>
    # @param [Hash, Types::SetEndpointAttributesInput] params
    # @option params [String] :endpoint_arn
    #   <p>EndpointArn used for <code>SetEndpointAttributes</code> action.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of the endpoint attributes. Attributes in this map include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CustomUserData</code> – arbitrary user data to associate with the
    #                       endpoint. Amazon SNS does not use this data. The data must be in UTF-8 format and
    #                       less than 2KB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Enabled</code> – flag that enables/disables delivery to the
    #                       endpoint. Amazon SNS will set this to false when a notification service indicates to
    #                       Amazon SNS that the endpoint is invalid. Users can set it back to true, typically
    #                       after updating Token.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Token</code> – device token, also referred to as a registration id,
    #                       for an app and mobile device. This is returned from the notification service
    #                       when an app and mobile device are registered with the notification
    #                       service.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     endpoint_arn: "String", # required
    #     attributes: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.set_endpoint_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_endpoint_attributes(params = {}, options = {})
      request = build_request(:set_endpoint_attributes, params)
      request.send_request(options)
    end

    # <p>Sets the attributes of the platform application object for the supported push
    #             notification services, such as APNS and GCM (Firebase Cloud Messaging). For more
    #             information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/SNSMobilePush.html">Using Amazon SNS Mobile Push Notifications</a>. For information on configuring
    #             attributes for message delivery status, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application Attributes for
    #                 Message Delivery Status</a>. </p>
    # @param [Hash, Types::SetPlatformApplicationAttributesInput] params
    # @option params [String] :platform_application_arn
    #   <p>
    #               <code>PlatformApplicationArn</code> for <code>SetPlatformApplicationAttributes</code>
    #               action.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of the platform application attributes. Attributes in this map include the
    #               following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlatformCredential</code> – The credential received from the
    #                       notification service.</p>
    #                  <ul>
    #                     <li>
    #                        <p>For ADM, <code>PlatformCredential</code>is client secret.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using certificate credentials,
    #                                   <code>PlatformCredential</code> is private key.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using token credentials,
    #                                   <code>PlatformCredential</code> is signing key.</p>
    #                     </li>
    #                     <li>
    #                        <p>For GCM (Firebase Cloud Messaging) using key credentials, there is no
    #                                   <code>PlatformPrincipal</code>. The <code>PlatformCredential</code>
    #                               is <code>API key</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>For GCM (Firebase Cloud Messaging) using token credentials, there is
    #                               no <code>PlatformPrincipal</code>. The <code>PlatformCredential</code>
    #                               is a JSON formatted private key file. When using the Amazon Web Services CLI, the file
    #                               must be in string format and special characters must be ignored. To
    #                               format the file correctly, Amazon SNS recommends using the following command:
    #                                   <code>SERVICE_JSON=`jq @json <<< cat
    #                               service.json`</code>.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PlatformPrincipal</code> – The principal received from the
    #                       notification service.</p>
    #                  <ul>
    #                     <li>
    #                        <p>For ADM, <code>PlatformPrincipal</code>is client id.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using certificate credentials,
    #                                   <code>PlatformPrincipal</code> is SSL certificate.</p>
    #                     </li>
    #                     <li>
    #                        <p>For Apple Services using token credentials,
    #                                   <code>PlatformPrincipal</code> is signing key ID.</p>
    #                     </li>
    #                     <li>
    #                        <p>For GCM (Firebase Cloud Messaging), there is no
    #                                   <code>PlatformPrincipal</code>. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>EventEndpointCreated</code> – Topic ARN to which
    #                           <code>EndpointCreated</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EventEndpointDeleted</code> – Topic ARN to which
    #                           <code>EndpointDeleted</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EventEndpointUpdated</code> – Topic ARN to which
    #                           <code>EndpointUpdate</code> event notifications are sent.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EventDeliveryFailure</code> – Topic ARN to which
    #                           <code>DeliveryFailure</code> event notifications are sent upon Direct
    #                       Publish delivery failure (permanent) to one of the application's
    #                       endpoints.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SuccessFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
    #                       write access to use CloudWatch Logs on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FailureFeedbackRoleArn</code> – IAM role ARN used to give Amazon SNS
    #                       write access to use CloudWatch Logs on your behalf.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SuccessFeedbackSampleRate</code> – Sample rate percentage (0-100)
    #                       of successfully delivered messages.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes only apply to <code>APNs</code> token-based
    #               authentication:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ApplePlatformTeamID</code> – The identifier that's assigned to your
    #                       Apple developer account team.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ApplePlatformBundleID</code> – The bundle identifier that's assigned to
    #                       your iOS app.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     platform_application_arn: "String", # required
    #     attributes: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.set_platform_application_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_platform_application_attributes(params = {}, options = {})
      request = build_request(:set_platform_application_attributes, params)
      request.send_request(options)
    end

    # <p>Use this request to set the default settings for sending SMS messages and receiving
    #             daily SMS usage reports.</p>
    #          <p>You can override some of these settings for a single message when you use the
    #                 <code>Publish</code> action with the <code>MessageAttributes.entry.N</code>
    #             parameter. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sms_publish-to-phone.html">Publishing to a mobile phone</a>
    #             in the <i>Amazon SNS Developer Guide</i>.</p>
    #          <note>
    #             <p>To use this operation, you must grant the Amazon SNS service principal
    #                     (<code>sns.amazonaws.com</code>) permission to perform the
    #                     <code>s3:ListBucket</code> action. </p>
    #          </note>
    # @param [Hash, Types::SetSMSAttributesInput] params
    # @option params [Hash<String, String>] :attributes
    #   <p>The default settings for sending SMS messages from your Amazon Web Services account. You can set
    #               values for the following attribute names:</p>
    #            <p>
    #               <code>MonthlySpendLimit</code> – The maximum amount in USD that you are willing to spend
    #               each month to send SMS messages. When Amazon SNS determines that sending an SMS message would
    #               incur a cost that exceeds this limit, it stops sending SMS messages within
    #               minutes.</p>
    #            <important>
    #               <p>Amazon SNS stops sending SMS messages within minutes of the limit being crossed. During
    #                   that interval, if you continue to send SMS messages, you will incur costs that
    #                   exceed your limit.</p>
    #            </important>
    #            <p>By default, the spend limit is set to the maximum allowed by Amazon SNS. If you want to
    #               raise the limit, submit an <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=service-limit-increase&limitType=service-code-sns">SNS Limit Increase case</a>. For <b>New limit
    #                   value</b>, enter your desired monthly spend limit. In the <b>Use Case Description</b> field, explain that you are requesting
    #               an SMS monthly spend limit increase.</p>
    #            <p>
    #               <code>DeliveryStatusIAMRole</code> – The ARN of the IAM role that allows Amazon SNS to write
    #               logs about SMS deliveries in CloudWatch Logs. For each SMS message that you send, Amazon SNS
    #               writes a log that includes the message price, the success or failure status, the reason
    #               for failure (if the message failed), the message dwell time, and other
    #               information.</p>
    #            <p>
    #               <code>DeliveryStatusSuccessSamplingRate</code> – The percentage of successful SMS
    #               deliveries for which Amazon SNS will write logs in CloudWatch Logs. The value can be an
    #               integer from 0 - 100. For example, to write logs only for failed deliveries, set this
    #               value to <code>0</code>. To write logs for 10% of your successful deliveries, set it to
    #                   <code>10</code>.</p>
    #            <p>
    #               <code>DefaultSenderID</code> – A string, such as your business brand, that is displayed
    #               as the sender on the receiving device. Support for sender IDs varies by country. The
    #               sender ID can be 1 - 11 alphanumeric characters, and it must contain at least one
    #               letter.</p>
    #            <p>
    #               <code>DefaultSMSType</code> – The type of SMS message that you will send by default. You
    #               can assign the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>Promotional</code> – (Default) Noncritical messages, such as marketing
    #                       messages. Amazon SNS optimizes the message delivery to incur the lowest cost.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Transactional</code> – Critical messages that support customer
    #                       transactions, such as one-time passcodes for multi-factor authentication. Amazon SNS
    #                       optimizes the message delivery to achieve the highest reliability.</p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>UsageReportS3Bucket</code> – The name of the Amazon S3 bucket to receive daily SMS
    #               usage reports from Amazon SNS. Each day, Amazon SNS will deliver a usage report as a CSV file to
    #               the bucket. The report includes the following information for each SMS message that was
    #               successfully delivered by your Amazon Web Services account:</p>
    #            <ul>
    #               <li>
    #                  <p>Time that the message was published (in UTC)</p>
    #               </li>
    #               <li>
    #                  <p>Message ID</p>
    #               </li>
    #               <li>
    #                  <p>Destination phone number</p>
    #               </li>
    #               <li>
    #                  <p>Message type</p>
    #               </li>
    #               <li>
    #                  <p>Delivery status</p>
    #               </li>
    #               <li>
    #                  <p>Message price (in USD)</p>
    #               </li>
    #               <li>
    #                  <p>Part number (a message is split into multiple parts if it is too long for a
    #                       single message)</p>
    #               </li>
    #               <li>
    #                  <p>Total number of parts</p>
    #               </li>
    #            </ul>
    #            <p>To receive the report, the bucket must have a policy that allows the Amazon SNS service
    #               principal to perform the <code>s3:PutObject</code> and <code>s3:GetBucketLocation</code>
    #               actions.</p>
    #            <p>For an example bucket policy and usage report, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sms_stats.html">Monitoring SMS Activity</a> in the
    #                   <i>Amazon SNS Developer Guide</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attributes: { # required
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.set_sms_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SetSMSAttributesResponse]
    def set_sms_attributes(params = {}, options = {})
      request = build_request(:set_sms_attributes, params)
      request.send_request(options)
    end

    # <p>Allows a subscription owner to set an attribute of the subscription to a new
    #             value.</p>
    # @param [Hash, Types::SetSubscriptionAttributesInput] params
    # @option params [String] :subscription_arn
    #   <p>The ARN of the subscription to modify.</p>
    # @option params [String] :attribute_name
    #   <p>A map of attributes with their corresponding values.</p>
    #            <p>The following lists the names, descriptions, and values of the special request
    #               parameters that this action uses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FilterPolicy</code> – The simple JSON object that lets your
    #                       subscriber receive only a subset of messages, rather than receiving every
    #                       message published to the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FilterPolicyScope</code> – This attribute lets you choose the
    #                       filtering scope by using one of the following string value types:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MessageAttributes</code> (default) – The filter is
    #                               applied on the message attributes.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MessageBody</code> – The filter is applied on the message
    #                               body.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RawMessageDelivery</code> – When set to <code>true</code>,
    #                       enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
    #                       need for the endpoints to process JSON formatting, which is otherwise created
    #                       for Amazon SNS metadata.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. 
    #       Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    #       or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held 
    #       in the dead-letter queue for further analysis or reprocessing.</p>
    #               </li>
    #            </ul>
    #            <p>The following attribute applies only to Amazon Data Firehose delivery stream subscriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Permission to write to the Firehose delivery stream</p>
    #                     </li>
    #                     <li>
    #                        <p>Amazon SNS listed as a trusted entity</p>
    #                     </li>
    #                  </ul>
    #                  <p>Specifying a valid ARN for this attribute is required for Firehose delivery stream subscriptions. 
    #                   For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout 
    #                       to Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    # @option params [String] :attribute_value
    #   <p>The new value for the attribute in JSON format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_arn: "subscriptionARN", # required
    #     attribute_name: "attributeName", # required
    #     attribute_value: "attributeValue"
    #   }
    #   options = {}
    #   response = client.set_subscription_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_subscription_attributes(params = {}, options = {})
      request = build_request(:set_subscription_attributes, params)
      request.send_request(options)
    end

    # <p>Allows a topic owner to set an attribute of the topic to a new value.</p>
    #          <note>
    #             <p>To remove the ability to change topic permissions, you must deny permissions to
    #                 the <code>AddPermission</code>, <code>RemovePermission</code>, and
    #                     <code>SetTopicAttributes</code> actions in your IAM policy.</p>
    #          </note>
    # @param [Hash, Types::SetTopicAttributesInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic to modify.</p>
    # @option params [String] :attribute_name
    #   <p>A map of attributes with their corresponding values.</p>
    #            <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>SetTopicAttributes</code> action uses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DisplayName</code> – The display name to use for a topic with SMS
    #                       subscriptions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Policy</code> – The policy that defines who can access your
    #                       topic. By default, only the topic owner can publish or subscribe to the
    #                       topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TracingConfig</code> – Tracing mode of an Amazon SNS topic. By default
    #                           <code>TracingConfig</code> is set to <code>PassThrough</code>, and the topic
    #                       passes through the tracing header it receives from an Amazon SNS publisher to its
    #                       subscriptions. If set to <code>Active</code>, Amazon SNS will vend X-Ray segment data
    #                       to topic owner account if the sampled flag in the tracing header is true. This
    #                       is only supported on standard topics.</p>
    #               </li>
    #               <li>
    #                  <p>HTTP</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>HTTPSuccessFeedbackRoleArn</code> – Indicates successful
    #                               message delivery status for an Amazon SNS topic that is subscribed to an HTTP
    #                               endpoint. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HTTPSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an HTTP endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>HTTPFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an HTTP
    #                               endpoint.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Amazon Data Firehose</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>FirehoseSuccessFeedbackRoleArn</code> – Indicates
    #                               successful message delivery status for an Amazon SNS topic that is subscribed
    #                               to an Amazon Data Firehose endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FirehoseSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an Amazon Data Firehose endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>FirehoseFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Amazon Data Firehose endpoint. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Lambda</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>LambdaSuccessFeedbackRoleArn</code> – Indicates
    #                               successful message delivery status for an Amazon SNS topic that is subscribed
    #                               to an Lambda endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>LambdaSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an Lambda endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>LambdaFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Lambda endpoint. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Platform application endpoint</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>ApplicationSuccessFeedbackRoleArn</code> – Indicates
    #                               successful message delivery status for an Amazon SNS topic that is subscribed
    #                               to an platform application endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ApplicationSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an platform application endpoint.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>ApplicationFailureFeedbackRoleArn</code> – Indicates
    #                               failed message delivery status for an Amazon SNS topic that is subscribed to
    #                               an platform application endpoint.</p>
    #                     </li>
    #                  </ul>
    #                  <note>
    #                     <p>In addition to being able to configure topic attributes for message
    #                           delivery status of notification messages sent to Amazon SNS application
    #                           endpoints, you can also configure application attributes for the delivery
    #                           status of push notification messages sent to push notification
    #                           services.</p>
    #                     <p>For example, For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-msg-status.html">Using Amazon SNS Application
    #                               Attributes for Message Delivery Status</a>. </p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>Amazon SQS</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>SQSSuccessFeedbackRoleArn</code> – Indicates successful
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Amazon SQS endpoint. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SQSSuccessFeedbackSampleRate</code> – Indicates
    #                               percentage of successful messages to sample for an Amazon SNS topic that is
    #                               subscribed to an Amazon SQS endpoint. </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>SQSFailureFeedbackRoleArn</code> – Indicates failed
    #                               message delivery status for an Amazon SNS topic that is subscribed to an
    #                               Amazon SQS endpoint. </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>The <ENDPOINT>SuccessFeedbackRoleArn and <ENDPOINT>FailureFeedbackRoleArn
    #                   attributes are used to give Amazon SNS write access to use CloudWatch Logs on your
    #                   behalf. The <ENDPOINT>SuccessFeedbackSampleRate attribute is for specifying the
    #                   sample rate percentage (0-100) of successfully delivered messages. After you
    #                   configure the <ENDPOINT>FailureFeedbackRoleArn attribute, then all failed message
    #                   deliveries generate CloudWatch Logs. </p>
    #            </note>
    #            <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html">server-side-encryption</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>KmsMasterKeyId</code> – The ID of an Amazon Web Services managed customer master
    #                       key (CMK) for Amazon SNS or a custom CMK. For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-server-side-encryption.html#sse-key-terms">Key
    #                           Terms</a>. For more examples, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">KeyId</a> in the <i>Key Management Service API Reference</i>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SignatureVersion</code> – The signature version corresponds to the
    #                       hashing algorithm used while creating the signature of the notifications,
    #                       subscription confirmations, or unsubscribe confirmation messages sent by Amazon SNS.
    #                       By default, <code>SignatureVersion</code> is set to <code>1</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The following attribute applies only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ArchivePolicy</code> – The policy that sets the retention period
    #                       for messages stored in the message archive of an Amazon SNS FIFO
    #                       topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ContentBasedDeduplication</code> – Enables content-based
    #                       deduplication for FIFO topics.</p>
    #                  <ul>
    #                     <li>
    #                        <p>By default, <code>ContentBasedDeduplication</code> is set to
    #                                   <code>false</code>. If you create a FIFO topic and this attribute is
    #                                   <code>false</code>, you must specify a value for the
    #                                   <code>MessageDeduplicationId</code> parameter for the <a href="https://docs.aws.amazon.com/sns/latest/api/API_Publish.html">Publish</a> action. </p>
    #                     </li>
    #                     <li>
    #                        <p>When you set <code>ContentBasedDeduplication</code> to
    #                                   <code>true</code>, Amazon SNS uses a SHA-256 hash to
    #                               generate the <code>MessageDeduplicationId</code> using the body of the
    #                               message (but not the attributes of the message).</p>
    #                        <p>(Optional) To override the generated value, you can specify a value
    #                               for the <code>MessageDeduplicationId</code> parameter for the
    #                                   <code>Publish</code> action.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FifoThroughputScope</code> – Enables higher throughput for your FIFO topic by adjusting the scope of deduplication. This attribute has two possible values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Topic</code> – The scope of message deduplication is across the entire topic. This is the default value and maintains existing behavior, with a maximum throughput of 3000 messages per second or 20MB per second, whichever comes first.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MessageGroup</code> – The scope of deduplication is within each individual message group, which enables higher throughput per topic subject to regional quotas. For more information on quotas or to request an increase, see <a href="https://docs.aws.amazon.com/general/latest/gr/sns.html">Amazon SNS service quotas</a> in the Amazon Web Services General Reference.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :attribute_value
    #   <p>The new value for the attribute.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #     attribute_name: "attributeName", # required
    #     attribute_value: "attributeValue"
    #   }
    #   options = {}
    #   response = client.set_topic_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def set_topic_attributes(params = {}, options = {})
      request = build_request(:set_topic_attributes, params)
      request.send_request(options)
    end

    # <p>Subscribes an endpoint to an Amazon SNS topic. If the endpoint type is HTTP/S or email, or
    #             if the endpoint and the topic are not in the same Amazon Web Services account, the endpoint owner must
    #             run the <code>ConfirmSubscription</code> action to confirm the subscription.</p>
    #          <p>You call the <code>ConfirmSubscription</code> action with the token from the
    #             subscription response. Confirmation tokens are valid for two days.</p>
    #          <p>This action is throttled at 100 transactions per second (TPS).</p>
    # @param [Hash, Types::SubscribeInput] params
    # @option params [String] :topic_arn
    #   <p>The ARN of the topic you want to subscribe to.</p>
    # @option params [String] :protocol
    #   <p>The protocol that you want to use. Supported protocols include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>http</code> – delivery of JSON-encoded message via HTTP
    #                       POST</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>https</code> – delivery of JSON-encoded message via HTTPS
    #                       POST</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>email</code> – delivery of message via SMTP</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>email-json</code> – delivery of JSON-encoded message via
    #                       SMTP</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sms</code> – delivery of message via SMS</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>sqs</code> – delivery of JSON-encoded message to an Amazon SQS
    #                       queue</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>application</code> – delivery of JSON-encoded message to an
    #                       EndpointArn for a mobile app and device</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>lambda</code> – delivery of JSON-encoded message to an Lambda
    #                       function</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>firehose</code> – delivery of JSON-encoded message to an Amazon
    #                        Data Firehose delivery stream.</p>
    #               </li>
    #            </ul>
    # @option params [String] :endpoint
    #   <p>The endpoint that you want to receive notifications. Endpoints vary by
    #               protocol:</p>
    #            <ul>
    #               <li>
    #                  <p>For the <code>http</code> protocol, the (public) endpoint is a URL beginning
    #                       with <code>http://</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>https</code> protocol, the (public) endpoint is a URL beginning
    #                       with <code>https://</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>email</code> protocol, the endpoint is an email address.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>email-json</code> protocol, the endpoint is an email
    #                       address.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>sms</code> protocol, the endpoint is a phone number of an
    #                       SMS-enabled device.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>sqs</code> protocol, the endpoint is the ARN of an Amazon SQS
    #                       queue.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>application</code> protocol, the endpoint is the EndpointArn of
    #                       a mobile app and device.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>lambda</code> protocol, the endpoint is the ARN of an Lambda
    #                       function.</p>
    #               </li>
    #               <li>
    #                  <p>For the <code>firehose</code> protocol, the endpoint is the ARN of an Amazon
    #                    Data Firehose delivery stream.</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :attributes
    #   <p>A map of attributes with their corresponding values.</p>
    #            <p>The following lists the names, descriptions, and values of the special request
    #               parameters that the <code>Subscribe</code> action uses:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DeliveryPolicy</code> – The policy that defines how Amazon SNS retries
    #                       failed deliveries to HTTP/S endpoints.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FilterPolicy</code> – The simple JSON object that lets your
    #                       subscriber receive only a subset of messages, rather than receiving every
    #                       message published to the topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FilterPolicyScope</code> – This attribute lets you choose the
    #                       filtering scope by using one of the following string value types:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MessageAttributes</code> (default) – The filter is
    #                               applied on the message attributes.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>MessageBody</code> – The filter is applied on the message
    #                               body.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RawMessageDelivery</code> – When set to <code>true</code>,
    #                       enables raw message delivery to Amazon SQS or HTTP/S endpoints. This eliminates the
    #                       need for the endpoints to process JSON formatting, which is otherwise created
    #                       for Amazon SNS metadata.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RedrivePolicy</code> – When specified, sends undeliverable messages to the specified Amazon SQS dead-letter queue. 
    #       Messages that can't be delivered due to client errors (for example, when the subscribed endpoint is unreachable)
    #       or server errors (for example, when the service that powers the subscribed endpoint becomes unavailable) are held 
    #       in the dead-letter queue for further analysis or reprocessing.</p>
    #               </li>
    #            </ul>
    #            <p>The following attribute applies only to Amazon Data Firehose delivery stream subscriptions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SubscriptionRoleArn</code> – The ARN of the IAM role that has the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Permission to write to the Firehose delivery stream</p>
    #                     </li>
    #                     <li>
    #                        <p>Amazon SNS listed as a trusted entity</p>
    #                     </li>
    #                  </ul>
    #                  <p>Specifying a valid ARN for this attribute is required for Firehose delivery stream subscriptions. 
    #                   For more information, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-firehose-as-subscriber.html">Fanout 
    #                       to Firehose delivery streams</a> in the <i>Amazon SNS Developer Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>The following attributes apply only to <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-fifo-topics.html">FIFO topics</a>:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ReplayPolicy</code> – Adds or updates an inline policy document
    #                       for a subscription to replay messages stored in the specified Amazon SNS
    #                       topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ReplayStatus</code> – Retrieves the status of the subscription
    #                       message replay, which can be one of the following:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>Completed</code> – The replay has successfully
    #                               redelivered all messages, and is now delivering newly published
    #                               messages. If an ending point was specified in the
    #                                   <code>ReplayPolicy</code> then the subscription will no longer
    #                               receive newly published messages.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>In progress</code> – The replay is currently replaying
    #                               the selected messages.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Failed</code> – The replay was unable to complete.</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>Pending</code> – The default state while the replay
    #                               initiates.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Boolean] :return_subscription_arn
    #   <p>Sets whether the response from the <code>Subscribe</code> request includes the
    #               subscription ARN, even if the subscription is not yet confirmed.</p>
    #            <p>If you set this parameter to <code>true</code>, the response includes the ARN in all
    #               cases, even if the subscription is not yet confirmed. In addition to the ARN for
    #               confirmed subscriptions, the response also includes the <code>pending
    #                   subscription</code> ARN value for subscriptions that aren't yet confirmed. A
    #               subscription becomes confirmed when the subscriber calls the
    #                   <code>ConfirmSubscription</code> action with a confirmation token.</p>
    #            <p></p>
    #            <p>The default value is <code>false</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     topic_arn: "topicARN", # required
    #     protocol: "protocol", # required
    #     endpoint: "Endpoint2",
    #     attributes: {
    #       "attributeName" => "attributeValue"
    #     },
    #     return_subscription_arn: false
    #   }
    #   options = {}
    #   response = client.subscribe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     subscription_arn: "subscriptionARN"
    #   }
    # @return [Types::SubscribeResponse]
    def subscribe(params = {}, options = {})
      request = build_request(:subscribe, params)
      request.send_request(options)
    end

    # <p>Add tags to the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the
    #                 <i>Amazon SNS Developer Guide</i>.</p>
    #          <p>When you use topic tags, keep the following guidelines in mind:</p>
    #          <ul>
    #             <li>
    #                <p>Adding more than 50 tags to a topic isn't recommended.</p>
    #             </li>
    #             <li>
    #                <p>Tags don't have any semantic meaning. Amazon SNS interprets tags as character
    #                     strings.</p>
    #             </li>
    #             <li>
    #                <p>Tags are case-sensitive.</p>
    #             </li>
    #             <li>
    #                <p>A new tag with a key identical to that of an existing tag overwrites the
    #                     existing tag.</p>
    #             </li>
    #             <li>
    #                <p>Tagging actions are limited to 10 TPS per Amazon Web Services account, per Amazon Web Services Region. If
    #                     your application requires a higher throughput, file a <a href="https://console.aws.amazon.com/support/home#/case/create?issueType=technical">technical support request</a>.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic to which to add tags.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags to be added to the specified topic. A tag consists of a required key and an
    #               optional value.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
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

    # <p>Deletes a subscription. If the subscription requires authentication for deletion, only
    #             the owner of the subscription or the topic's owner can unsubscribe, and an Amazon Web Services
    #             signature is required. If the <code>Unsubscribe</code> call does not require
    #             authentication and the requester is not the subscription owner, a final cancellation
    #             message is delivered to the endpoint, so that the endpoint owner can easily resubscribe
    #             to the topic if the <code>Unsubscribe</code> request was unintended.</p>
    #          <p>This action is throttled at 100 transactions per second (TPS).</p>
    # @param [Hash, Types::UnsubscribeInput] params
    # @option params [String] :subscription_arn
    #   <p>The ARN of the subscription to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     subscription_arn: "subscriptionARN", # required
    #   }
    #   options = {}
    #   response = client.unsubscribe(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def unsubscribe(params = {}, options = {})
      request = build_request(:unsubscribe, params)
      request.send_request(options)
    end

    # <p>Remove tags from the specified Amazon SNS topic. For an overview, see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-tags.html">Amazon SNS Tags</a> in the
    #                 <i>Amazon SNS Developer Guide</i>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the topic from which to remove tags.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The list of tag keys to remove from the specified topic.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
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

    # <p>Verifies a destination phone number with a one-time password (OTP) for the calling
    #             Amazon Web Services account.</p>
    #          <p>When you start using Amazon SNS to send SMS messages, your Amazon Web Services account is in the
    #                 <i>SMS sandbox</i>. The SMS sandbox provides a safe environment for 
    #                 you to try Amazon SNS features without risking your reputation as an SMS sender. While your 
    #                 Amazon Web Services account is in the SMS sandbox, you can use all of the features of Amazon SNS. However, you can send 
    #                 SMS messages only to verified destination phone numbers. For more information, including how to 
    #                 move out of the sandbox to send messages without restrictions, 
    #                 see <a href="https://docs.aws.amazon.com/sns/latest/dg/sns-sms-sandbox.html">SMS sandbox</a> in 
    #                 the <i>Amazon SNS Developer Guide</i>.</p>
    # @param [Hash, Types::VerifySMSSandboxPhoneNumberInput] params
    # @option params [String] :phone_number
    #   <p>The destination phone number to verify.</p>
    # @option params [String] :one_time_password
    #   <p>The OTP sent to the destination number from the
    #                   <code>CreateSMSSandBoxPhoneNumber</code> call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number: "PhoneNumberString", # required
    #     one_time_password: "OTPCode", # required
    #   }
    #   options = {}
    #   response = client.verify_sms_sandbox_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::VerifySMSSandboxPhoneNumberResult]
    def verify_sms_sandbox_phone_number(params = {}, options = {})
      request = build_request(:verify_sms_sandbox_phone_number, params)
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
      context[:gem_name] = 'aws-sdk-sns'
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
