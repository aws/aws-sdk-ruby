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

module Aws::ChimeSDKVoice
  # An API client for Aws::ChimeSDKVoice.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ChimeSDKTelephonyService

    add_plugin(::Aws::ChimeSDKVoice::Plugins::Endpoint)
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
    # @option options [Aws::ChimeSDKVoice::EndpointProvider] :endpoint_provider
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

    # <p>Associates phone numbers with the specified Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::AssociatePhoneNumbersWithVoiceConnectorRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    # @option params [Boolean] :force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime SDK Voice Connector and removes any previously existing associations. If false, does not associate any phone numbers that have previously existing associations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #     force_associate: false
    #   }
    #   options = {}
    #   response = client.associate_phone_numbers_with_voice_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_errors: [
    #       {
    #         phone_number_id: "SensitiveNonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::AssociatePhoneNumbersWithVoiceConnectorResponse]
    def associate_phone_numbers_with_voice_connector(params = {}, options = {})
      request = build_request(:associate_phone_numbers_with_voice_connector, params)
      request.send_request(options)
    end

    # <p>Associates phone numbers with the specified Amazon Chime SDK Voice Connector group.</p>
    # @param [Hash, Types::AssociatePhoneNumbersWithVoiceConnectorGroupRequest] params
    # @option params [String] :voice_connector_group_id
    #   <p>The Amazon Chime SDK Voice Connector group ID.</p>
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    # @option params [Boolean] :force_associate
    #   <p>If true, associates the provided phone numbers with the provided Amazon Chime SDK Voice Connector Group and removes any previously existing associations. 
    #            If false, does not associate any phone numbers that have previously existing associations.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_group_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #     force_associate: false
    #   }
    #   options = {}
    #   response = client.associate_phone_numbers_with_voice_connector_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_errors: [
    #       {
    #         phone_number_id: "SensitiveNonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::AssociatePhoneNumbersWithVoiceConnectorGroupResponse]
    def associate_phone_numbers_with_voice_connector_group(params = {}, options = {})
      request = build_request(:associate_phone_numbers_with_voice_connector_group, params)
      request.send_request(options)
    end

    # <p>
    #          Moves phone numbers into the 
    #          <b>Deletion queue</b>. Phone numbers must be disassociated from any users or Amazon Chime SDK Voice Connectors before they can be deleted.
    #       </p>
    #          <p>
    #          Phone numbers remain in the 
    #          <b>Deletion queue</b> for 7 days before they are deleted permanently.
    #       </p>
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
    #         phone_number_id: "SensitiveNonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchDeletePhoneNumberResponse]
    def batch_delete_phone_number(params = {}, options = {})
      request = build_request(:batch_delete_phone_number, params)
      request.send_request(options)
    end

    # <p>Updates phone number product types, calling names, or phone number names. You can update one attribute at a time for each 
    #          <code>UpdatePhoneNumberRequestItem</code>. For example, you can update the product type, the calling name, or phone name.
    #         </p>
    #          <note>
    #             <p>You cannot have a duplicate <code>phoneNumberId</code> in a request.</p>
    #          </note>
    # @param [Hash, Types::BatchUpdatePhoneNumberRequest] params
    # @option params [Array<Types::UpdatePhoneNumberRequestItem>] :update_phone_number_request_items
    #   <p>Lists the phone numbers in the update request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     update_phone_number_request_items: [ # required
    #       {
    #         phone_number_id: "SensitiveNonEmptyString", # required
    #         product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #         calling_name: "CallingName",
    #         name: "PhoneNumberName"
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
    #         phone_number_id: "SensitiveNonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchUpdatePhoneNumberResponse]
    def batch_update_phone_number(params = {}, options = {})
      request = build_request(:batch_update_phone_number, params)
      request.send_request(options)
    end

    # <p>Creates an order for phone numbers to be provisioned. For numbers outside the U.S., you must use the Amazon Chime SDK SIP media application dial-in product type.</p>
    # @param [Hash, Types::CreatePhoneNumberOrderRequest] params
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    # @option params [String] :name
    #   <p>Specifies the name assigned to one or more phone numbers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"], # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #     name: "PhoneNumberName"
    #   }
    #   options = {}
    #   response = client.create_phone_number_order(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_order: {
    #       phone_number_order_id: "GuidString",
    #       product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "Processing" # One of: ["Processing", "Successful", "Failed", "Partial", "PendingDocuments", "Submitted", "FOC", "ChangeRequested", "Exception", "CancelRequested", "Cancelled"],
    #       order_type: "New" # One of: ["New", "Porting"],
    #       ordered_phone_numbers: [
    #         {
    #           e164_phone_number: "E164PhoneNumber",
    #           status: "Processing" # One of: ["Processing", "Acquired", "Failed"]
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       foc_date: Time.now
    #     }
    #   }
    # @return [Types::CreatePhoneNumberOrderResponse]
    def create_phone_number_order(params = {}, options = {})
      request = build_request(:create_phone_number_order, params)
      request.send_request(options)
    end

    # <p>Creates a proxy session for the specified Amazon Chime SDK Voice Connector for 
    #             the specified participant phone numbers.</p>
    # @param [Hash, Types::CreateProxySessionRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Array<String>] :participant_phone_numbers
    #   <p>The participant phone numbers.</p>
    # @option params [String] :name
    #   <p>The name of the proxy session.</p>
    # @option params [Integer] :expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    # @option params [Array<String>] :capabilities
    #   <p>The proxy session's capabilities.</p>
    # @option params [String] :number_selection_behavior
    #   <p>The preference for proxy phone number reuse, or stickiness, between the same 
    #               participants across sessions.</p>
    # @option params [String] :geo_match_level
    #   <p>The preference for matching the country or area code of the proxy phone number with that of the first participant.</p>
    # @option params [Types::GeoMatchParams] :geo_match_params
    #   <p>The country and area code for the proxy phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     participant_phone_numbers: ["E164PhoneNumber"], # required
    #     name: "ProxySessionNameString",
    #     expiry_minutes: 1,
    #     capabilities: ["Voice" # One of: ["Voice", "SMS"]], # required
    #     number_selection_behavior: "PreferSticky" # One of: ["PreferSticky", "AvoidSticky"],
    #     geo_match_level: "Country" # One of: ["Country", "AreaCode"],
    #     geo_match_params: {
    #       country: "Country", # required
    #       area_code: "AreaCode", # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_proxy_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proxy_session: {
    #       voice_connector_id: "NonEmptyString128",
    #       proxy_session_id: "NonEmptyString128",
    #       name: "String128",
    #       status: "Open" # One of: ["Open", "InProgress", "Closed"],
    #       expiry_minutes: 1,
    #       capabilities: ["Voice" # One of: ["Voice", "SMS"]],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       ended_timestamp: Time.now,
    #       participants: [
    #         {
    #           phone_number: "E164PhoneNumber",
    #           proxy_phone_number: "E164PhoneNumber"
    #         }
    #       ],
    #       number_selection_behavior: "PreferSticky" # One of: ["PreferSticky", "AvoidSticky"],
    #       geo_match_level: "Country" # One of: ["Country", "AreaCode"],
    #       geo_match_params: {
    #         country: "Country", # required
    #         area_code: "AreaCode", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateProxySessionResponse]
    def create_proxy_session(params = {}, options = {})
      request = build_request(:create_proxy_session, params)
      request.send_request(options)
    end

    # <p>Creates a SIP media application. For more information about SIP media applications, see <a href="https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html">Managing SIP media applications 
    #            and rules</a> in the <i>Amazon Chime SDK Administrator Guide</i>.</p>
    # @param [Hash, Types::CreateSipMediaApplicationRequest] params
    # @option params [String] :aws_region
    #   <p>The AWS Region assigned to the SIP media application.</p>
    # @option params [String] :name
    #   <p>The SIP media application's name.</p>
    # @option params [Array<Types::SipMediaApplicationEndpoint>] :endpoints
    #   <p>List of endpoints (Lambda ARNs) specified for the SIP media application.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the SIP media application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aws_region: "String", # required
    #     name: "SipMediaApplicationName", # required
    #     endpoints: [ # required
    #       {
    #         lambda_arn: "FunctionArn"
    #       }
    #     ],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_sip_media_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application: {
    #       sip_media_application_id: "NonEmptyString",
    #       aws_region: "String",
    #       name: "SipMediaApplicationName",
    #       endpoints: [
    #         {
    #           lambda_arn: "FunctionArn"
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       sip_media_application_arn: "NonEmptyString"
    #     }
    #   }
    # @return [Types::CreateSipMediaApplicationResponse]
    def create_sip_media_application(params = {}, options = {})
      request = build_request(:create_sip_media_application, params)
      request.send_request(options)
    end

    # <p>Creates an outbound call to a phone number from the phone number specified 
    #          in the request, and it invokes the endpoint of the specified 
    #          <code>sipMediaApplicationId</code>.</p>
    # @param [Hash, Types::CreateSipMediaApplicationCallRequest] params
    # @option params [String] :from_phone_number
    #   <p>The phone number that a user calls from. This is a phone number in your 
    #            Amazon Chime SDK phone number inventory.</p>
    # @option params [String] :to_phone_number
    #   <p>The phone number that the service should call.</p>
    # @option params [String] :sip_media_application_id
    #   <p>The ID of the SIP media application.</p>
    # @option params [Hash<String, String>] :sip_headers
    #   <p>The SIP headers added to an outbound call leg.</p>
    # @option params [Hash<String, String>] :arguments_map
    #   <p>Context passed to a CreateSipMediaApplication API call. For example, you could pass
    #               key-value pairs such as: <code>"FirstName": "John", "LastName": "Doe"</code>
    #            </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     from_phone_number: "E164PhoneNumber", # required
    #     to_phone_number: "E164PhoneNumber", # required
    #     sip_media_application_id: "NonEmptyString", # required
    #     sip_headers: {
    #       "SensitiveString" => "SensitiveString"
    #     },
    #     arguments_map: {
    #       "SensitiveString" => "SensitiveString"
    #     }
    #   }
    #   options = {}
    #   response = client.create_sip_media_application_call(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application_call: {
    #       transaction_id: "GuidString"
    #     }
    #   }
    # @return [Types::CreateSipMediaApplicationCallResponse]
    def create_sip_media_application_call(params = {}, options = {})
      request = build_request(:create_sip_media_application_call, params)
      request.send_request(options)
    end

    # <p>Creates a SIP rule, which can be used to run a SIP media application as a target for a specific trigger type. For more information about SIP rules, see <a href="https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html">Managing SIP media applications 
    #            and rules</a> in the <i>Amazon Chime SDK Administrator Guide</i>.</p>
    # @param [Hash, Types::CreateSipRuleRequest] params
    # @option params [String] :name
    #   <p>The name of the SIP rule.</p>
    # @option params [String] :trigger_type
    #   <p>The type of trigger assigned to the SIP rule in <code>TriggerValue</code>, 
    #            currently <code>RequestUriHostname</code> or <code>ToPhoneNumber</code>.</p>
    # @option params [String] :trigger_value
    #   <p>If <code>TriggerType</code> is <code>RequestUriHostname</code>, the 
    #            value can be the outbound host name of a Voice Connector. If 
    #            <code>TriggerType</code> is <code>ToPhoneNumber</code>, the value can 
    #            be a customer-owned phone number in the E164 format. The 
    #            <code>SipMediaApplication</code> specified in the <code>SipRule</code> is triggered 
    #            if the request URI in an incoming SIP request matches the 
    #            <code>RequestUriHostname</code>, or if the <code>To</code> header in the 
    #            incoming SIP request matches the <code>ToPhoneNumber</code> value.</p>
    # @option params [Boolean] :disabled
    #   <p>Disables or enables a SIP rule. You must disable SIP rules 
    #            before you can delete them.</p>
    # @option params [Array<Types::SipRuleTargetApplication>] :target_applications
    #   <p>List of SIP media applications, with priority and AWS Region. Only one SIP 
    #            application per AWS Region can be used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SipRuleName", # required
    #     trigger_type: "ToPhoneNumber" # One of: ["ToPhoneNumber", "RequestUriHostname"], # required
    #     trigger_value: "NonEmptyString", # required
    #     disabled: false,
    #     target_applications: [
    #       {
    #         sip_media_application_id: "NonEmptyString",
    #         priority: 1,
    #         aws_region: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_sip_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_rule: {
    #       sip_rule_id: "NonEmptyString",
    #       name: "SipRuleName",
    #       disabled: false,
    #       trigger_type: "ToPhoneNumber" # One of: ["ToPhoneNumber", "RequestUriHostname"],
    #       trigger_value: "NonEmptyString",
    #       target_applications: [
    #         {
    #           sip_media_application_id: "NonEmptyString",
    #           priority: 1,
    #           aws_region: "String"
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateSipRuleResponse]
    def create_sip_rule(params = {}, options = {})
      request = build_request(:create_sip_rule, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Chime SDK Voice Connector. For more information about 
    #           Voice Connectors,
    #          see <a href="https://docs.aws.amazon.com/chime-sdk/latest/ag/voice-connector-groups.html">Managing Amazon Chime SDK Voice Connector groups</a> in the <i>Amazon Chime SDK
    #             Administrator Guide</i>.</p>
    # @param [Hash, Types::CreateVoiceConnectorRequest] params
    # @option params [String] :name
    #   <p>The name of the Voice Connector.</p>
    # @option params [String] :aws_region
    #   <p>The AWS Region in which the Amazon Chime SDK Voice Connector is created. Default value: 
    #            <code>us-east-1</code> .</p>
    # @option params [Boolean] :require_encryption
    #   <p>Enables or disables encryption for the Voice Connector.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the Voice Connector.</p>
    # @option params [String] :integration_type
    #   <p>The connectors for use with Amazon Connect.</p>
    #            <p>The following options are available:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CONNECT_CALL_TRANSFER_CONNECTOR</code> - Enables enterprises to integrate
    #                  Amazon Connect with other voice systems to directly transfer voice calls and
    #                  metadata without using the public telephone network. They can use Amazon Connect
    #                  telephony and Interactive Voice Response (IVR) with their existing voice systems to
    #                  modernize the IVR experience of their existing contact center and their enterprise
    #                  and branch voice systems. Additionally, enterprises migrating their contact center to
    #                  Amazon Connect can start with Connect telephony and IVR for immediate
    #                  modernization ahead of agent migration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CONNECT_ANALYTICS_CONNECTOR</code> - Enables enterprises to integrate
    #                  Amazon Connect with other voice systems for real-time and post-call analytics.
    #                  They can use Amazon Connect Contact Lens with their existing voice systems to
    #                  provides call recordings, conversational analytics (including contact transcript,
    #                  sensitive data redaction, content categorization, theme detection, sentiment
    #                  analysis, real-time alerts, and post-contact summary), and agent performance
    #                  evaluations (including evaluation forms, automated evaluation, supervisor review)
    #                  with a rich user experience to display, search and filter customer interactions, and
    #                  programmatic access to data streams and the data lake. Additionally, enterprises
    #                  migrating their contact center to Amazon Connect can start with Contact Lens
    #                  analytics and performance insights ahead of agent migration.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "VoiceConnectorName", # required
    #     aws_region: "us-east-1" # One of: ["us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"],
    #     require_encryption: false, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     integration_type: "CONNECT_CALL_TRANSFER_CONNECTOR" # One of: ["CONNECT_CALL_TRANSFER_CONNECTOR", "CONNECT_ANALYTICS_CONNECTOR"]
    #   }
    #   options = {}
    #   response = client.create_voice_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector: {
    #       voice_connector_id: "NonEmptyString",
    #       aws_region: "us-east-1" # One of: ["us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"],
    #       name: "VoiceConnectorName",
    #       outbound_host_name: "String",
    #       require_encryption: false,
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       voice_connector_arn: "NonEmptyString",
    #       integration_type: "CONNECT_CALL_TRANSFER_CONNECTOR" # One of: ["CONNECT_CALL_TRANSFER_CONNECTOR", "CONNECT_ANALYTICS_CONNECTOR"]
    #     }
    #   }
    # @return [Types::CreateVoiceConnectorResponse]
    def create_voice_connector(params = {}, options = {})
      request = build_request(:create_voice_connector, params)
      request.send_request(options)
    end

    # <p>Creates an Amazon Chime SDK Voice Connector group under the administrator's 
    #          AWS account. You can associate Amazon Chime SDK Voice Connectors with the 
    #          Voice Connector group by including <code>VoiceConnectorItems</code> in the 
    #          request. </p>
    #          <p>You can include Voice Connectors from different AWS Regions in your group. 
    #          This creates a fault tolerant mechanism for fallback in case of availability events.</p>
    # @param [Hash, Types::CreateVoiceConnectorGroupRequest] params
    # @option params [String] :name
    #   <p>The name of the Voice Connector group.</p>
    # @option params [Array<Types::VoiceConnectorItem>] :voice_connector_items
    #   <p>Lists the Voice Connectors that inbound calls are routed to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "VoiceConnectorGroupName", # required
    #     voice_connector_items: [
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         priority: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_voice_connector_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector_group: {
    #       voice_connector_group_id: "NonEmptyString",
    #       name: "VoiceConnectorGroupName",
    #       voice_connector_items: [
    #         {
    #           voice_connector_id: "NonEmptyString", # required
    #           priority: 1, # required
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       voice_connector_group_arn: "NonEmptyString"
    #     }
    #   }
    # @return [Types::CreateVoiceConnectorGroupResponse]
    def create_voice_connector_group(params = {}, options = {})
      request = build_request(:create_voice_connector_group, params)
      request.send_request(options)
    end

    # <p>Creates a voice profile, which consists of an enrolled user and their latest voice print.</p>
    #          <important>
    #             <p>Before creating any voice profiles, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the  
    #          <a href="https://aws.amazon.com/service-terms/">AWS service terms</a> for the Amazon Chime SDK.</p>
    #          </important>
    #          <p>For more information about voice profiles and voice analytics, see <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html">Using Amazon Chime SDK Voice Analytics</a> 
    #       in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    # @param [Hash, Types::CreateVoiceProfileRequest] params
    # @option params [String] :speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.create_voice_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profile: {
    #       voice_profile_id: "NonEmptyString256",
    #       voice_profile_arn: "Arn",
    #       voice_profile_domain_id: "NonEmptyString256",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       expiration_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateVoiceProfileResponse]
    def create_voice_profile(params = {}, options = {})
      request = build_request(:create_voice_profile, params)
      request.send_request(options)
    end

    # <p>Creates a voice profile domain, a collection of voice profiles, their voice prints, and encrypted enrollment audio.</p>
    #          <important>
    #             <p>Before creating any voice profiles, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the  
    #          <a href="https://aws.amazon.com/service-terms/">AWS service terms</a> for the Amazon Chime SDK.</p>
    #          </important>
    #          <p>For more information about voice profile domains, see <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html">Using Amazon Chime SDK Voice Analytics</a> 
    #          in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    # @param [Hash, Types::CreateVoiceProfileDomainRequest] params
    # @option params [String] :name
    #   <p>The name of the voice profile domain.</p>
    # @option params [String] :description
    #   <p>A description of the voice profile domain.</p>
    # @option params [Types::ServerSideEncryptionConfiguration] :server_side_encryption_configuration
    #   <p>The server-side encryption configuration for the request.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different domain creation requests.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags assigned to the domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "VoiceProfileDomainName", # required
    #     description: "VoiceProfileDomainDescription",
    #     server_side_encryption_configuration: { # required
    #       kms_key_arn: "Arn", # required
    #     },
    #     client_request_token: "ClientRequestId",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_voice_profile_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profile_domain: {
    #       voice_profile_domain_id: "NonEmptyString256",
    #       voice_profile_domain_arn: "Arn",
    #       name: "VoiceProfileDomainName",
    #       description: "VoiceProfileDomainDescription",
    #       server_side_encryption_configuration: {
    #         kms_key_arn: "Arn", # required
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateVoiceProfileDomainResponse]
    def create_voice_profile_domain(params = {}, options = {})
      request = build_request(:create_voice_profile_domain, params)
      request.send_request(options)
    end

    # <p>Moves the specified phone number into the 
    #          <b>Deletion queue</b>. A phone number must 
    #          be disassociated from any users or Amazon Chime SDK Voice Connectors before it can be 
    #          deleted.</p>
    #          <p>Deleted phone numbers remain in the 
    #          <b>Deletion queue</b> queue for 7 days before 
    #          they are deleted permanently.</p>
    # @param [Hash, Types::DeletePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "SensitiveNonEmptyString", # required
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

    # <p>Deletes the specified proxy session from the specified Amazon Chime SDK Voice 
    #             Connector.</p>
    # @param [Hash, Types::DeleteProxySessionRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :proxy_session_id
    #   <p>The proxy session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     proxy_session_id: "NonEmptyString128", # required
    #   }
    #   options = {}
    #   response = client.delete_proxy_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_proxy_session(params = {}, options = {})
      request = build_request(:delete_proxy_session, params)
      request.send_request(options)
    end

    # <p>Deletes a SIP media application.</p>
    # @param [Hash, Types::DeleteSipMediaApplicationRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_sip_media_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_sip_media_application(params = {}, options = {})
      request = build_request(:delete_sip_media_application, params)
      request.send_request(options)
    end

    # <p>Deletes a SIP rule.</p>
    # @param [Hash, Types::DeleteSipRuleRequest] params
    # @option params [String] :sip_rule_id
    #   <p>The SIP rule ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_rule_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_sip_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_sip_rule(params = {}, options = {})
      request = build_request(:delete_sip_rule, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Chime SDK Voice Connector. Any phone numbers associated 
    #          with the Amazon Chime SDK Voice Connector must be disassociated from it before it 
    #          can be deleted.</p>
    # @param [Hash, Types::DeleteVoiceConnectorRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector(params = {}, options = {})
      request = build_request(:delete_voice_connector, params)
      request.send_request(options)
    end

    # <p>Deletes the emergency calling details from the specified Amazon Chime SDK Voice 
    #          Connector.</p>
    # @param [Hash, Types::DeleteVoiceConnectorEmergencyCallingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_emergency_calling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_emergency_calling_configuration(params = {}, options = {})
      request = build_request(:delete_voice_connector_emergency_calling_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the external systems configuration for a Voice Connector.</p>
    # @param [Hash, Types::DeleteVoiceConnectorExternalSystemsConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The ID of the Voice Connector for which to delete the external system
    #            configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_external_systems_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_external_systems_configuration(params = {}, options = {})
      request = build_request(:delete_voice_connector_external_systems_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an Amazon Chime SDK Voice Connector group. Any <code>VoiceConnectorItems</code> 
    #          and phone numbers associated with the group must be removed before it can be 
    #          deleted.</p>
    # @param [Hash, Types::DeleteVoiceConnectorGroupRequest] params
    # @option params [String] :voice_connector_group_id
    #   <p>The Voice Connector Group ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_group_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_group(params = {}, options = {})
      request = build_request(:delete_voice_connector_group, params)
      request.send_request(options)
    end

    # <p>Deletes the origination settings for the specified Amazon Chime SDK Voice Connector. </p>
    #          <note>
    #             <p>If emergency calling is configured for the Voice Connector, it must be 
    #          deleted prior to deleting the origination settings.</p>
    #          </note>
    # @param [Hash, Types::DeleteVoiceConnectorOriginationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_origination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_origination(params = {}, options = {})
      request = build_request(:delete_voice_connector_origination, params)
      request.send_request(options)
    end

    # <p>Deletes the proxy configuration from the specified Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::DeleteVoiceConnectorProxyRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_proxy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_proxy(params = {}, options = {})
      request = build_request(:delete_voice_connector_proxy, params)
      request.send_request(options)
    end

    # <p>Deletes a Voice Connector's streaming configuration.</p>
    # @param [Hash, Types::DeleteVoiceConnectorStreamingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_streaming_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_streaming_configuration(params = {}, options = {})
      request = build_request(:delete_voice_connector_streaming_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes the termination settings for the specified Amazon Chime SDK Voice Connector.</p>
    #          <note>
    #             <p>If emergency calling is configured for the Voice Connector, it must be 
    #          deleted prior to deleting the termination settings.</p>
    #          </note>
    # @param [Hash, Types::DeleteVoiceConnectorTerminationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_termination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_termination(params = {}, options = {})
      request = build_request(:delete_voice_connector_termination, params)
      request.send_request(options)
    end

    # <p>Deletes the specified SIP credentials used by your equipment to 
    #          authenticate during call termination.</p>
    # @param [Hash, Types::DeleteVoiceConnectorTerminationCredentialsRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Array<String>] :usernames
    #   <p>The RFC2617 compliant username associated with the SIP credentials, 
    #            in US-ASCII format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     usernames: ["SensitiveString"], # required
    #   }
    #   options = {}
    #   response = client.delete_voice_connector_termination_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_connector_termination_credentials(params = {}, options = {})
      request = build_request(:delete_voice_connector_termination_credentials, params)
      request.send_request(options)
    end

    # <p>Deletes a voice profile, including its voice print and enrollment data. WARNING: This action is not reversible.</p>
    # @param [Hash, Types::DeleteVoiceProfileRequest] params
    # @option params [String] :voice_profile_id
    #   <p>The voice profile ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_profile_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_profile(params = {}, options = {})
      request = build_request(:delete_voice_profile, params)
      request.send_request(options)
    end

    # <p>Deletes all voice profiles in the domain. WARNING: This action is not reversible.</p>
    # @param [Hash, Types::DeleteVoiceProfileDomainRequest] params
    # @option params [String] :voice_profile_domain_id
    #   <p>The voice profile domain ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.delete_voice_profile_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_voice_profile_domain(params = {}, options = {})
      request = build_request(:delete_voice_profile_domain, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified phone numbers from the specified 
    #          Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::DisassociatePhoneNumbersFromVoiceConnectorRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>List of phone numbers, in E.164 format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_phone_numbers_from_voice_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_errors: [
    #       {
    #         phone_number_id: "SensitiveNonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DisassociatePhoneNumbersFromVoiceConnectorResponse]
    def disassociate_phone_numbers_from_voice_connector(params = {}, options = {})
      request = build_request(:disassociate_phone_numbers_from_voice_connector, params)
      request.send_request(options)
    end

    # <p>Disassociates the specified phone numbers from the specified Amazon Chime SDK Voice 
    #          Connector group.</p>
    # @param [Hash, Types::DisassociatePhoneNumbersFromVoiceConnectorGroupRequest] params
    # @option params [String] :voice_connector_group_id
    #   <p>The Voice Connector group ID.</p>
    # @option params [Array<String>] :e164_phone_numbers
    #   <p>The list of phone numbers, in E.164 format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_group_id: "NonEmptyString", # required
    #     e164_phone_numbers: ["E164PhoneNumber"], # required
    #   }
    #   options = {}
    #   response = client.disassociate_phone_numbers_from_voice_connector_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_errors: [
    #       {
    #         phone_number_id: "SensitiveNonEmptyString",
    #         error_code: "BadRequest" # One of: ["BadRequest", "Conflict", "Forbidden", "NotFound", "PreconditionFailed", "ResourceLimitExceeded", "ServiceFailure", "AccessDenied", "ServiceUnavailable", "Throttled", "Throttling", "Unauthorized", "Unprocessable", "VoiceConnectorGroupAssociationsExist", "PhoneNumberAssociationsExist", "Gone"],
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::DisassociatePhoneNumbersFromVoiceConnectorGroupResponse]
    def disassociate_phone_numbers_from_voice_connector_group(params = {}, options = {})
      request = build_request(:disassociate_phone_numbers_from_voice_connector_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the global settings for the Amazon Chime SDK Voice Connectors in an AWS account.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.get_global_settings(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector: {
    #       cdr_bucket: "String"
    #     }
    #   }
    # @return [Types::GetGlobalSettingsResponse]
    def get_global_settings(params = {}, options = {})
      request = build_request(:get_global_settings, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified phone number ID, such as associations, 
    #          capabilities, and product type.</p>
    # @param [Hash, Types::GetPhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "SensitiveNonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number: {
    #       phone_number_id: "SensitiveNonEmptyString",
    #       e164_phone_number: "E164PhoneNumber",
    #       country: "Alpha2CountryCode",
    #       type: "Local" # One of: ["Local", "TollFree"],
    #       product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "Cancelled" # One of: ["Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
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
    #           name: "VoiceConnectorId" # One of: ["VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #           associated_timestamp: Time.now
    #         }
    #       ],
    #       calling_name: "CallingName",
    #       calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       deletion_timestamp: Time.now,
    #       order_id: "GuidString",
    #       name: "PhoneNumberName"
    #     }
    #   }
    # @return [Types::GetPhoneNumberResponse]
    def get_phone_number(params = {}, options = {})
      request = build_request(:get_phone_number, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified phone number order, such as the order 
    #          creation timestamp, phone numbers in E.164 format, product type, and 
    #          order status.</p>
    # @param [Hash, Types::GetPhoneNumberOrderRequest] params
    # @option params [String] :phone_number_order_id
    #   <p>The ID of the phone number order .</p>
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
    #       product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "Processing" # One of: ["Processing", "Successful", "Failed", "Partial", "PendingDocuments", "Submitted", "FOC", "ChangeRequested", "Exception", "CancelRequested", "Cancelled"],
    #       order_type: "New" # One of: ["New", "Porting"],
    #       ordered_phone_numbers: [
    #         {
    #           e164_phone_number: "E164PhoneNumber",
    #           status: "Processing" # One of: ["Processing", "Acquired", "Failed"]
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       foc_date: Time.now
    #     }
    #   }
    # @return [Types::GetPhoneNumberOrderResponse]
    def get_phone_number_order(params = {}, options = {})
      request = build_request(:get_phone_number_order, params)
      request.send_request(options)
    end

    # <p>Retrieves the phone number settings for the administrator's AWS account, 
    #          such as the default outbound calling name.</p>
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

    # <p>Retrieves the specified proxy session details for the specified Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::GetProxySessionRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :proxy_session_id
    #   <p>The proxy session ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     proxy_session_id: "NonEmptyString128", # required
    #   }
    #   options = {}
    #   response = client.get_proxy_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proxy_session: {
    #       voice_connector_id: "NonEmptyString128",
    #       proxy_session_id: "NonEmptyString128",
    #       name: "String128",
    #       status: "Open" # One of: ["Open", "InProgress", "Closed"],
    #       expiry_minutes: 1,
    #       capabilities: ["Voice" # One of: ["Voice", "SMS"]],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       ended_timestamp: Time.now,
    #       participants: [
    #         {
    #           phone_number: "E164PhoneNumber",
    #           proxy_phone_number: "E164PhoneNumber"
    #         }
    #       ],
    #       number_selection_behavior: "PreferSticky" # One of: ["PreferSticky", "AvoidSticky"],
    #       geo_match_level: "Country" # One of: ["Country", "AreaCode"],
    #       geo_match_params: {
    #         country: "Country", # required
    #         area_code: "AreaCode", # required
    #       }
    #     }
    #   }
    # @return [Types::GetProxySessionResponse]
    def get_proxy_session(params = {}, options = {})
      request = build_request(:get_proxy_session, params)
      request.send_request(options)
    end

    # <p>Retrieves the information for a SIP media application, including name, 
    #          AWS Region, and endpoints.</p>
    # @param [Hash, Types::GetSipMediaApplicationRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID .</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_sip_media_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application: {
    #       sip_media_application_id: "NonEmptyString",
    #       aws_region: "String",
    #       name: "SipMediaApplicationName",
    #       endpoints: [
    #         {
    #           lambda_arn: "FunctionArn"
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       sip_media_application_arn: "NonEmptyString"
    #     }
    #   }
    # @return [Types::GetSipMediaApplicationResponse]
    def get_sip_media_application(params = {}, options = {})
      request = build_request(:get_sip_media_application, params)
      request.send_request(options)
    end

    # <p>Gets the Alexa Skill configuration for the SIP media application.</p>
    #          <important>
    #             <p>Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to 
    #          the <a href="https://developer.amazon.com/en-US/alexa/alexasmartproperties">Alexa Smart Properties</a> page.</p>
    #          </important>
    # @param [Hash, Types::GetSipMediaApplicationAlexaSkillConfigurationRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_sip_media_application_alexa_skill_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application_alexa_skill_configuration: {
    #       alexa_skill_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       alexa_skill_ids: ["AlexaSkillId"], # required
    #     }
    #   }
    # @deprecated
    #   Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to the Alexa Smart Properties page(https://developer.amazon.com/en-US/alexa/alexasmartproperties).
    # @return [Types::GetSipMediaApplicationAlexaSkillConfigurationResponse]
    def get_sip_media_application_alexa_skill_configuration(params = {}, options = {})
      request = build_request(:get_sip_media_application_alexa_skill_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the logging configuration for the specified SIP media application.</p>
    # @param [Hash, Types::GetSipMediaApplicationLoggingConfigurationRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_sip_media_application_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application_logging_configuration: {
    #       enable_sip_media_application_message_logs: false
    #     }
    #   }
    # @return [Types::GetSipMediaApplicationLoggingConfigurationResponse]
    def get_sip_media_application_logging_configuration(params = {}, options = {})
      request = build_request(:get_sip_media_application_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a SIP rule, such as the rule ID, name, triggers, and 
    #          target endpoints.</p>
    # @param [Hash, Types::GetSipRuleRequest] params
    # @option params [String] :sip_rule_id
    #   <p>The SIP rule ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_rule_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_sip_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_rule: {
    #       sip_rule_id: "NonEmptyString",
    #       name: "SipRuleName",
    #       disabled: false,
    #       trigger_type: "ToPhoneNumber" # One of: ["ToPhoneNumber", "RequestUriHostname"],
    #       trigger_value: "NonEmptyString",
    #       target_applications: [
    #         {
    #           sip_media_application_id: "NonEmptyString",
    #           priority: 1,
    #           aws_region: "String"
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetSipRuleResponse]
    def get_sip_rule(params = {}, options = {})
      request = build_request(:get_sip_rule, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified speaker search task.</p>
    # @param [Hash, Types::GetSpeakerSearchTaskRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.get_speaker_search_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     speaker_search_task: {
    #       speaker_search_task_id: "NonEmptyString256",
    #       speaker_search_task_status: "NonEmptyString",
    #       call_details: {
    #         voice_connector_id: "NonEmptyString128",
    #         transaction_id: "NonEmptyString256",
    #         is_caller: false
    #       },
    #       speaker_search_details: {
    #         results: [
    #           {
    #             confidence_score: 1.0,
    #             voice_profile_id: "NonEmptyString256"
    #           }
    #         ],
    #         voiceprint_generation_status: "NonEmptyString256"
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       started_timestamp: Time.now,
    #       status_message: "String"
    #     }
    #   }
    # @return [Types::GetSpeakerSearchTaskResponse]
    def get_speaker_search_task(params = {}, options = {})
      request = build_request(:get_speaker_search_task, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified Amazon Chime SDK Voice Connector, such as 
    #          timestamps,name, outbound host, and encryption requirements.</p>
    # @param [Hash, Types::GetVoiceConnectorRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector: {
    #       voice_connector_id: "NonEmptyString",
    #       aws_region: "us-east-1" # One of: ["us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"],
    #       name: "VoiceConnectorName",
    #       outbound_host_name: "String",
    #       require_encryption: false,
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       voice_connector_arn: "NonEmptyString",
    #       integration_type: "CONNECT_CALL_TRANSFER_CONNECTOR" # One of: ["CONNECT_CALL_TRANSFER_CONNECTOR", "CONNECT_ANALYTICS_CONNECTOR"]
    #     }
    #   }
    # @return [Types::GetVoiceConnectorResponse]
    def get_voice_connector(params = {}, options = {})
      request = build_request(:get_voice_connector, params)
      request.send_request(options)
    end

    # <p>Retrieves the emergency calling configuration details for the specified Voice Connector.</p>
    # @param [Hash, Types::GetVoiceConnectorEmergencyCallingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_emergency_calling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     emergency_calling_configuration: {
    #       dnis: [
    #         {
    #           emergency_phone_number: "E164PhoneNumber", # required
    #           test_phone_number: "E164PhoneNumber",
    #           calling_country: "Alpha2CountryCode", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::GetVoiceConnectorEmergencyCallingConfigurationResponse]
    def get_voice_connector_emergency_calling_configuration(params = {}, options = {})
      request = build_request(:get_voice_connector_emergency_calling_configuration, params)
      request.send_request(options)
    end

    # <p>Gets information about an external systems configuration for a Voice
    #          Connector.</p>
    # @param [Hash, Types::GetVoiceConnectorExternalSystemsConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The ID of the Voice Connector for which to return information about the
    #            external system configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_external_systems_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     external_systems_configuration: {
    #       session_border_controller_types: ["RIBBON_SBC" # One of: ["RIBBON_SBC", "ORACLE_ACME_PACKET_SBC", "AVAYA_SBCE", "CISCO_UNIFIED_BORDER_ELEMENT", "AUDIOCODES_MEDIANT_SBC"]],
    #       contact_center_system_types: ["GENESYS_ENGAGE_ON_PREMISES" # One of: ["GENESYS_ENGAGE_ON_PREMISES", "AVAYA_AURA_CALL_CENTER_ELITE", "AVAYA_AURA_CONTACT_CENTER", "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE"]]
    #     }
    #   }
    # @return [Types::GetVoiceConnectorExternalSystemsConfigurationResponse]
    def get_voice_connector_external_systems_configuration(params = {}, options = {})
      request = build_request(:get_voice_connector_external_systems_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves details for the specified Amazon Chime SDK Voice Connector group, 
    #          such as timestamps,name, and associated <code>VoiceConnectorItems</code>.</p>
    # @param [Hash, Types::GetVoiceConnectorGroupRequest] params
    # @option params [String] :voice_connector_group_id
    #   <p>The Voice Connector group ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_group_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector_group: {
    #       voice_connector_group_id: "NonEmptyString",
    #       name: "VoiceConnectorGroupName",
    #       voice_connector_items: [
    #         {
    #           voice_connector_id: "NonEmptyString", # required
    #           priority: 1, # required
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       voice_connector_group_arn: "NonEmptyString"
    #     }
    #   }
    # @return [Types::GetVoiceConnectorGroupResponse]
    def get_voice_connector_group(params = {}, options = {})
      request = build_request(:get_voice_connector_group, params)
      request.send_request(options)
    end

    # <p>Retrieves the logging configuration settings for the specified Voice Connector.
    #          Shows whether SIP message logs are enabled for sending to Amazon CloudWatch Logs.</p>
    # @param [Hash, Types::GetVoiceConnectorLoggingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configuration: {
    #       enable_sip_logs: false,
    #       enable_media_metric_logs: false
    #     }
    #   }
    # @return [Types::GetVoiceConnectorLoggingConfigurationResponse]
    def get_voice_connector_logging_configuration(params = {}, options = {})
      request = build_request(:get_voice_connector_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the origination settings for the specified Voice Connector.</p>
    # @param [Hash, Types::GetVoiceConnectorOriginationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_origination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origination: {
    #       routes: [
    #         {
    #           host: "String",
    #           port: 1,
    #           protocol: "TCP" # One of: ["TCP", "UDP"],
    #           priority: 1,
    #           weight: 1
    #         }
    #       ],
    #       disabled: false
    #     }
    #   }
    # @return [Types::GetVoiceConnectorOriginationResponse]
    def get_voice_connector_origination(params = {}, options = {})
      request = build_request(:get_voice_connector_origination, params)
      request.send_request(options)
    end

    # <p>Retrieves the proxy configuration details for the specified Amazon Chime SDK Voice 
    #             Connector.</p>
    # @param [Hash, Types::GetVoiceConnectorProxyRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_proxy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proxy: {
    #       default_session_expiry_minutes: 1,
    #       disabled: false,
    #       fall_back_phone_number: "E164PhoneNumber",
    #       phone_number_countries: ["String"]
    #     }
    #   }
    # @return [Types::GetVoiceConnectorProxyResponse]
    def get_voice_connector_proxy(params = {}, options = {})
      request = build_request(:get_voice_connector_proxy, params)
      request.send_request(options)
    end

    # <p>Retrieves the streaming configuration details for the specified Amazon Chime SDK 
    #          Voice Connector. Shows whether media streaming is enabled for sending to Amazon 
    #          Kinesis. It also shows the retention period, in hours, for the Amazon Kinesis data.</p>
    # @param [Hash, Types::GetVoiceConnectorStreamingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_streaming_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_configuration: {
    #       data_retention_in_hours: 1, # required
    #       disabled: false, # required
    #       streaming_notification_targets: [
    #         {
    #           notification_target: "EventBridge" # One of: ["EventBridge", "SNS", "SQS"]
    #         }
    #       ],
    #       media_insights_configuration: {
    #         disabled: false,
    #         configuration_arn: "Arn"
    #       }
    #     }
    #   }
    # @return [Types::GetVoiceConnectorStreamingConfigurationResponse]
    def get_voice_connector_streaming_configuration(params = {}, options = {})
      request = build_request(:get_voice_connector_streaming_configuration, params)
      request.send_request(options)
    end

    # <p>Retrieves the termination setting details for the specified Voice Connector.</p>
    # @param [Hash, Types::GetVoiceConnectorTerminationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_termination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     termination: {
    #       cps_limit: 1,
    #       default_phone_number: "E164PhoneNumber",
    #       calling_regions: ["CallingRegion"],
    #       cidr_allowed_list: ["String"],
    #       disabled: false
    #     }
    #   }
    # @return [Types::GetVoiceConnectorTerminationResponse]
    def get_voice_connector_termination(params = {}, options = {})
      request = build_request(:get_voice_connector_termination, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the last time a <code>SIP OPTIONS</code> ping 
    #          was received from your SIP infrastructure for the specified Amazon Chime SDK Voice 
    #          Connector.</p>
    # @param [Hash, Types::GetVoiceConnectorTerminationHealthRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.get_voice_connector_termination_health(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     termination_health: {
    #       timestamp: Time.now,
    #       source: "String"
    #     }
    #   }
    # @return [Types::GetVoiceConnectorTerminationHealthResponse]
    def get_voice_connector_termination_health(params = {}, options = {})
      request = build_request(:get_voice_connector_termination_health, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified voice profile.</p>
    # @param [Hash, Types::GetVoiceProfileRequest] params
    # @option params [String] :voice_profile_id
    #   <p>The voice profile ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_profile_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.get_voice_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profile: {
    #       voice_profile_id: "NonEmptyString256",
    #       voice_profile_arn: "Arn",
    #       voice_profile_domain_id: "NonEmptyString256",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       expiration_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetVoiceProfileResponse]
    def get_voice_profile(params = {}, options = {})
      request = build_request(:get_voice_profile, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of the specified voice profile domain.</p>
    # @param [Hash, Types::GetVoiceProfileDomainRequest] params
    # @option params [String] :voice_profile_domain_id
    #   <p>The voice profile domain ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.get_voice_profile_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profile_domain: {
    #       voice_profile_domain_id: "NonEmptyString256",
    #       voice_profile_domain_arn: "Arn",
    #       name: "VoiceProfileDomainName",
    #       description: "VoiceProfileDomainDescription",
    #       server_side_encryption_configuration: {
    #         kms_key_arn: "Arn", # required
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::GetVoiceProfileDomainResponse]
    def get_voice_profile_domain(params = {}, options = {})
      request = build_request(:get_voice_profile_domain, params)
      request.send_request(options)
    end

    # <p>Retrieves the details of a voice tone analysis task.</p>
    # @param [Hash, Types::GetVoiceToneAnalysisTaskRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    # @option params [Boolean] :is_caller
    #   <p>Specifies whether the voice being analyzed is the caller (originator) or the callee (responder).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     voice_tone_analysis_task_id: "NonEmptyString256", # required
    #     is_caller: false, # required
    #   }
    #   options = {}
    #   response = client.get_voice_tone_analysis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_tone_analysis_task: {
    #       voice_tone_analysis_task_id: "NonEmptyString256",
    #       voice_tone_analysis_task_status: "NonEmptyString",
    #       call_details: {
    #         voice_connector_id: "NonEmptyString128",
    #         transaction_id: "NonEmptyString256",
    #         is_caller: false
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       started_timestamp: Time.now,
    #       status_message: "String"
    #     }
    #   }
    # @return [Types::GetVoiceToneAnalysisTaskResponse]
    def get_voice_tone_analysis_task(params = {}, options = {})
      request = build_request(:get_voice_tone_analysis_task, params)
      request.send_request(options)
    end

    # <p>Lists the available AWS Regions in which you can create an Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Smithy::Schema::EmptyStructure] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.list_available_voice_connector_regions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector_regions: ["us-east-1" # One of: ["us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"]]
    #   }
    # @return [Types::ListAvailableVoiceConnectorRegionsResponse]
    def list_available_voice_connector_regions(params = {}, options = {})
      request = build_request(:list_available_voice_connector_regions, params)
      request.send_request(options)
    end

    # <p>Lists the phone numbers for an administrator's Amazon Chime SDK account.</p>
    # @param [Hash, Types::ListPhoneNumberOrdersRequest] params
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
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
    #         product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #         status: "Processing" # One of: ["Processing", "Successful", "Failed", "Partial", "PendingDocuments", "Submitted", "FOC", "ChangeRequested", "Exception", "CancelRequested", "Cancelled"],
    #         order_type: "New" # One of: ["New", "Porting"],
    #         ordered_phone_numbers: [
    #           {
    #             e164_phone_number: "E164PhoneNumber",
    #             status: "Processing" # One of: ["Processing", "Acquired", "Failed"]
    #           }
    #         ],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         foc_date: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPhoneNumberOrdersResponse]
    def list_phone_number_orders(params = {}, options = {})
      request = build_request(:list_phone_number_orders, params)
      request.send_request(options)
    end

    # <p>Lists the phone numbers for the specified Amazon Chime SDK account, 
    #          Amazon Chime SDK user, Amazon Chime SDK Voice Connector, or Amazon Chime SDK Voice 
    #          Connector group.</p>
    # @param [Hash, Types::ListPhoneNumbersRequest] params
    # @option params [String] :status
    #   <p>The status of your organization's phone numbers.</p>
    # @option params [String] :product_type
    #   <p>The phone number product types.</p>
    # @option params [String] :filter_name
    #   <p>The filter to limit the number of results.</p>
    # @option params [String] :filter_value
    #   <p>The filter value.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     status: "String",
    #     product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #     filter_name: "VoiceConnectorId" # One of: ["VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
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
    #         phone_number_id: "SensitiveNonEmptyString",
    #         e164_phone_number: "E164PhoneNumber",
    #         country: "Alpha2CountryCode",
    #         type: "Local" # One of: ["Local", "TollFree"],
    #         product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #         status: "Cancelled" # One of: ["Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
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
    #             name: "VoiceConnectorId" # One of: ["VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #             associated_timestamp: Time.now
    #           }
    #         ],
    #         calling_name: "CallingName",
    #         calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         deletion_timestamp: Time.now,
    #         order_id: "GuidString",
    #         name: "PhoneNumberName"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListPhoneNumbersResponse]
    def list_phone_numbers(params = {}, options = {})
      request = build_request(:list_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Lists the proxy sessions for the specified Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::ListProxySessionsRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :status
    #   <p>The proxy session status.</p>
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     status: "Open" # One of: ["Open", "InProgress", "Closed"],
    #     next_token: "NextTokenString",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_proxy_sessions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proxy_sessions: [
    #       {
    #         voice_connector_id: "NonEmptyString128",
    #         proxy_session_id: "NonEmptyString128",
    #         name: "String128",
    #         status: "Open" # One of: ["Open", "InProgress", "Closed"],
    #         expiry_minutes: 1,
    #         capabilities: ["Voice" # One of: ["Voice", "SMS"]],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         ended_timestamp: Time.now,
    #         participants: [
    #           {
    #             phone_number: "E164PhoneNumber",
    #             proxy_phone_number: "E164PhoneNumber"
    #           }
    #         ],
    #         number_selection_behavior: "PreferSticky" # One of: ["PreferSticky", "AvoidSticky"],
    #         geo_match_level: "Country" # One of: ["Country", "AreaCode"],
    #         geo_match_params: {
    #           country: "Country", # required
    #           area_code: "AreaCode", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListProxySessionsResponse]
    def list_proxy_sessions(params = {}, options = {})
      request = build_request(:list_proxy_sessions, params)
      request.send_request(options)
    end

    # <p>Lists the SIP media applications  under the administrator's AWS account.</p>
    # @param [Hash, Types::ListSipMediaApplicationsRequest] params
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     max_results: 1,
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_sip_media_applications(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_applications: [
    #       {
    #         sip_media_application_id: "NonEmptyString",
    #         aws_region: "String",
    #         name: "SipMediaApplicationName",
    #         endpoints: [
    #           {
    #             lambda_arn: "FunctionArn"
    #           }
    #         ],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         sip_media_application_arn: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListSipMediaApplicationsResponse]
    def list_sip_media_applications(params = {}, options = {})
      request = build_request(:list_sip_media_applications, params)
      request.send_request(options)
    end

    # <p>Lists the SIP rules under the administrator's AWS account.</p>
    # @param [Hash, Types::ListSipRulesRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call. Defaults to 100.</p>
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString",
    #     max_results: 1,
    #     next_token: "NextTokenString"
    #   }
    #   options = {}
    #   response = client.list_sip_rules(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_rules: [
    #       {
    #         sip_rule_id: "NonEmptyString",
    #         name: "SipRuleName",
    #         disabled: false,
    #         trigger_type: "ToPhoneNumber" # One of: ["ToPhoneNumber", "RequestUriHostname"],
    #         trigger_value: "NonEmptyString",
    #         target_applications: [
    #           {
    #             sip_media_application_id: "NonEmptyString",
    #             priority: 1,
    #             aws_region: "String"
    #           }
    #         ],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextTokenString"
    #   }
    # @return [Types::ListSipRulesResponse]
    def list_sip_rules(params = {}, options = {})
      request = build_request(:list_sip_rules, params)
      request.send_request(options)
    end

    # <p>Lists the countries that you can order phone numbers from.</p>
    # @param [Hash, Types::ListSupportedPhoneNumberCountriesRequest] params
    # @option params [String] :product_type
    #   <p>The phone number product type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"], # required
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

    # <p>Returns a list of the tags in a given resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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

    # <p>Lists the Amazon Chime SDK Voice Connector groups in the administrator's AWS 
    #          account.</p>
    # @param [Hash, Types::ListVoiceConnectorGroupsRequest] params
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.  </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_voice_connector_groups(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector_groups: [
    #       {
    #         voice_connector_group_id: "NonEmptyString",
    #         name: "VoiceConnectorGroupName",
    #         voice_connector_items: [
    #           {
    #             voice_connector_id: "NonEmptyString", # required
    #             priority: 1, # required
    #           }
    #         ],
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         voice_connector_group_arn: "NonEmptyString"
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVoiceConnectorGroupsResponse]
    def list_voice_connector_groups(params = {}, options = {})
      request = build_request(:list_voice_connector_groups, params)
      request.send_request(options)
    end

    # <p>Lists the SIP credentials for the specified Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::ListVoiceConnectorTerminationCredentialsRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.list_voice_connector_termination_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     usernames: ["SensitiveString"]
    #   }
    # @return [Types::ListVoiceConnectorTerminationCredentialsResponse]
    def list_voice_connector_termination_credentials(params = {}, options = {})
      request = build_request(:list_voice_connector_termination_credentials, params)
      request.send_request(options)
    end

    # <p>Lists the Amazon Chime SDK Voice Connectors in the administrators 
    #          AWS account.</p>
    # @param [Hash, Types::ListVoiceConnectorsRequest] params
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_voice_connectors(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connectors: [
    #       {
    #         voice_connector_id: "NonEmptyString",
    #         aws_region: "us-east-1" # One of: ["us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"],
    #         name: "VoiceConnectorName",
    #         outbound_host_name: "String",
    #         require_encryption: false,
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         voice_connector_arn: "NonEmptyString",
    #         integration_type: "CONNECT_CALL_TRANSFER_CONNECTOR" # One of: ["CONNECT_CALL_TRANSFER_CONNECTOR", "CONNECT_ANALYTICS_CONNECTOR"]
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVoiceConnectorsResponse]
    def list_voice_connectors(params = {}, options = {})
      request = build_request(:list_voice_connectors, params)
      request.send_request(options)
    end

    # <p>Lists the specified voice profile domains in the administrator's AWS account.
    #          </p>
    # @param [Hash, Types::ListVoiceProfileDomainsRequest] params
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_voice_profile_domains(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profile_domains: [
    #       {
    #         voice_profile_domain_id: "NonEmptyString256",
    #         voice_profile_domain_arn: "Arn",
    #         name: "VoiceProfileDomainName",
    #         description: "VoiceProfileDomainDescription",
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVoiceProfileDomainsResponse]
    def list_voice_profile_domains(params = {}, options = {})
      request = build_request(:list_voice_profile_domains, params)
      request.send_request(options)
    end

    # <p>Lists the voice profiles in a voice profile domain.</p>
    # @param [Hash, Types::ListVoiceProfilesRequest] params
    # @option params [String] :voice_profile_domain_id
    #   <p>The ID of the voice profile domain.</p>
    # @option params [String] :next_token
    #   <p>The token used to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results in the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_voice_profiles(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profiles: [
    #       {
    #         voice_profile_id: "NonEmptyString256",
    #         voice_profile_arn: "Arn",
    #         voice_profile_domain_id: "NonEmptyString256",
    #         created_timestamp: Time.now,
    #         updated_timestamp: Time.now,
    #         expiration_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListVoiceProfilesResponse]
    def list_voice_profiles(params = {}, options = {})
      request = build_request(:list_voice_profiles, params)
      request.send_request(options)
    end

    # <p>Updates the Alexa Skill configuration for the SIP media application.</p>
    #          <important>
    #             <p>Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to 
    #          the <a href="https://developer.amazon.com/en-US/alexa/alexasmartproperties">Alexa Smart Properties</a> page.</p>
    #          </important>
    # @param [Hash, Types::PutSipMediaApplicationAlexaSkillConfigurationRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    # @option params [Types::SipMediaApplicationAlexaSkillConfiguration] :sip_media_application_alexa_skill_configuration
    #   <p>The Alexa Skill configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #     sip_media_application_alexa_skill_configuration: {
    #       alexa_skill_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       alexa_skill_ids: ["AlexaSkillId"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.put_sip_media_application_alexa_skill_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application_alexa_skill_configuration: {
    #       alexa_skill_status: "ACTIVE" # One of: ["ACTIVE", "INACTIVE"], # required
    #       alexa_skill_ids: ["AlexaSkillId"], # required
    #     }
    #   }
    # @deprecated
    #   Due to changes made by the Amazon Alexa service, this API is no longer available for use. For more information, refer to the Alexa Smart Properties page(https://developer.amazon.com/en-US/alexa/alexasmartproperties).
    # @return [Types::PutSipMediaApplicationAlexaSkillConfigurationResponse]
    def put_sip_media_application_alexa_skill_configuration(params = {}, options = {})
      request = build_request(:put_sip_media_application_alexa_skill_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the logging configuration for the specified SIP media application.</p>
    # @param [Hash, Types::PutSipMediaApplicationLoggingConfigurationRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    # @option params [Types::SipMediaApplicationLoggingConfiguration] :sip_media_application_logging_configuration
    #   <p>The logging configuration for the specified SIP media application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #     sip_media_application_logging_configuration: {
    #       enable_sip_media_application_message_logs: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_sip_media_application_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application_logging_configuration: {
    #       enable_sip_media_application_message_logs: false
    #     }
    #   }
    # @return [Types::PutSipMediaApplicationLoggingConfigurationResponse]
    def put_sip_media_application_logging_configuration(params = {}, options = {})
      request = build_request(:put_sip_media_application_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a Voice Connector's emergency calling configuration.</p>
    # @param [Hash, Types::PutVoiceConnectorEmergencyCallingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Types::EmergencyCallingConfiguration] :emergency_calling_configuration
    #   <p>The configuration being updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     emergency_calling_configuration: { # required
    #       dnis: [
    #         {
    #           emergency_phone_number: "E164PhoneNumber", # required
    #           test_phone_number: "E164PhoneNumber",
    #           calling_country: "Alpha2CountryCode", # required
    #         }
    #       ]
    #     }
    #   }
    #   options = {}
    #   response = client.put_voice_connector_emergency_calling_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     emergency_calling_configuration: {
    #       dnis: [
    #         {
    #           emergency_phone_number: "E164PhoneNumber", # required
    #           test_phone_number: "E164PhoneNumber",
    #           calling_country: "Alpha2CountryCode", # required
    #         }
    #       ]
    #     }
    #   }
    # @return [Types::PutVoiceConnectorEmergencyCallingConfigurationResponse]
    def put_voice_connector_emergency_calling_configuration(params = {}, options = {})
      request = build_request(:put_voice_connector_emergency_calling_configuration, params)
      request.send_request(options)
    end

    # <p>Adds an external systems configuration to a Voice Connector.</p>
    # @param [Hash, Types::PutVoiceConnectorExternalSystemsConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The ID of the Voice Connector for which to add the external system
    #            configuration.</p>
    # @option params [Array<String>] :session_border_controller_types
    #   <p>The session border controllers to use.</p>
    # @option params [Array<String>] :contact_center_system_types
    #   <p>The contact center system to use.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     session_border_controller_types: ["RIBBON_SBC" # One of: ["RIBBON_SBC", "ORACLE_ACME_PACKET_SBC", "AVAYA_SBCE", "CISCO_UNIFIED_BORDER_ELEMENT", "AUDIOCODES_MEDIANT_SBC"]],
    #     contact_center_system_types: ["GENESYS_ENGAGE_ON_PREMISES" # One of: ["GENESYS_ENGAGE_ON_PREMISES", "AVAYA_AURA_CALL_CENTER_ELITE", "AVAYA_AURA_CONTACT_CENTER", "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE"]]
    #   }
    #   options = {}
    #   response = client.put_voice_connector_external_systems_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     external_systems_configuration: {
    #       session_border_controller_types: ["RIBBON_SBC" # One of: ["RIBBON_SBC", "ORACLE_ACME_PACKET_SBC", "AVAYA_SBCE", "CISCO_UNIFIED_BORDER_ELEMENT", "AUDIOCODES_MEDIANT_SBC"]],
    #       contact_center_system_types: ["GENESYS_ENGAGE_ON_PREMISES" # One of: ["GENESYS_ENGAGE_ON_PREMISES", "AVAYA_AURA_CALL_CENTER_ELITE", "AVAYA_AURA_CONTACT_CENTER", "CISCO_UNIFIED_CONTACT_CENTER_ENTERPRISE"]]
    #     }
    #   }
    # @return [Types::PutVoiceConnectorExternalSystemsConfigurationResponse]
    def put_voice_connector_external_systems_configuration(params = {}, options = {})
      request = build_request(:put_voice_connector_external_systems_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a Voice Connector's logging configuration.</p>
    # @param [Hash, Types::PutVoiceConnectorLoggingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Types::LoggingConfiguration] :logging_configuration
    #   <p>The logging configuration being updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     logging_configuration: { # required
    #       enable_sip_logs: false,
    #       enable_media_metric_logs: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_voice_connector_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configuration: {
    #       enable_sip_logs: false,
    #       enable_media_metric_logs: false
    #     }
    #   }
    # @return [Types::PutVoiceConnectorLoggingConfigurationResponse]
    def put_voice_connector_logging_configuration(params = {}, options = {})
      request = build_request(:put_voice_connector_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a Voice Connector's origination settings.</p>
    # @param [Hash, Types::PutVoiceConnectorOriginationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Types::Origination] :origination
    #   <p>The origination settings being updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     origination: { # required
    #       routes: [
    #         {
    #           host: "String",
    #           port: 1,
    #           protocol: "TCP" # One of: ["TCP", "UDP"],
    #           priority: 1,
    #           weight: 1
    #         }
    #       ],
    #       disabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_voice_connector_origination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origination: {
    #       routes: [
    #         {
    #           host: "String",
    #           port: 1,
    #           protocol: "TCP" # One of: ["TCP", "UDP"],
    #           priority: 1,
    #           weight: 1
    #         }
    #       ],
    #       disabled: false
    #     }
    #   }
    # @return [Types::PutVoiceConnectorOriginationResponse]
    def put_voice_connector_origination(params = {}, options = {})
      request = build_request(:put_voice_connector_origination, params)
      request.send_request(options)
    end

    # <p>Puts the specified proxy configuration to the specified Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::PutVoiceConnectorProxyRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Integer] :default_session_expiry_minutes
    #   <p>The default number of minutes allowed for proxy session.</p>
    # @option params [Array<String>] :phone_number_pool_countries
    #   <p>The countries for proxy phone numbers to be selected from.</p>
    # @option params [String] :fall_back_phone_number
    #   <p>The phone number to route calls to after a proxy session expires.</p>
    # @option params [Boolean] :disabled
    #   <p>When true, stops proxy sessions from being created on the specified Amazon Chime SDK Voice Connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     default_session_expiry_minutes: 1, # required
    #     phone_number_pool_countries: ["Country"], # required
    #     fall_back_phone_number: "E164PhoneNumber",
    #     disabled: false
    #   }
    #   options = {}
    #   response = client.put_voice_connector_proxy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proxy: {
    #       default_session_expiry_minutes: 1,
    #       disabled: false,
    #       fall_back_phone_number: "E164PhoneNumber",
    #       phone_number_countries: ["String"]
    #     }
    #   }
    # @return [Types::PutVoiceConnectorProxyResponse]
    def put_voice_connector_proxy(params = {}, options = {})
      request = build_request(:put_voice_connector_proxy, params)
      request.send_request(options)
    end

    # <p>Updates a Voice Connector's streaming configuration settings.</p>
    # @param [Hash, Types::PutVoiceConnectorStreamingConfigurationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Types::StreamingConfiguration] :streaming_configuration
    #   <p>The streaming settings being updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     streaming_configuration: { # required
    #       data_retention_in_hours: 1, # required
    #       disabled: false, # required
    #       streaming_notification_targets: [
    #         {
    #           notification_target: "EventBridge" # One of: ["EventBridge", "SNS", "SQS"]
    #         }
    #       ],
    #       media_insights_configuration: {
    #         disabled: false,
    #         configuration_arn: "Arn"
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.put_voice_connector_streaming_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     streaming_configuration: {
    #       data_retention_in_hours: 1, # required
    #       disabled: false, # required
    #       streaming_notification_targets: [
    #         {
    #           notification_target: "EventBridge" # One of: ["EventBridge", "SNS", "SQS"]
    #         }
    #       ],
    #       media_insights_configuration: {
    #         disabled: false,
    #         configuration_arn: "Arn"
    #       }
    #     }
    #   }
    # @return [Types::PutVoiceConnectorStreamingConfigurationResponse]
    def put_voice_connector_streaming_configuration(params = {}, options = {})
      request = build_request(:put_voice_connector_streaming_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a Voice Connector's termination settings.</p>
    # @param [Hash, Types::PutVoiceConnectorTerminationRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Types::Termination] :termination
    #   <p>The termination settings to be updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     termination: { # required
    #       cps_limit: 1,
    #       default_phone_number: "E164PhoneNumber",
    #       calling_regions: ["CallingRegion"],
    #       cidr_allowed_list: ["String"],
    #       disabled: false
    #     }
    #   }
    #   options = {}
    #   response = client.put_voice_connector_termination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     termination: {
    #       cps_limit: 1,
    #       default_phone_number: "E164PhoneNumber",
    #       calling_regions: ["CallingRegion"],
    #       cidr_allowed_list: ["String"],
    #       disabled: false
    #     }
    #   }
    # @return [Types::PutVoiceConnectorTerminationResponse]
    def put_voice_connector_termination(params = {}, options = {})
      request = build_request(:put_voice_connector_termination, params)
      request.send_request(options)
    end

    # <p>Updates a Voice Connector's termination credentials.</p>
    # @param [Hash, Types::PutVoiceConnectorTerminationCredentialsRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [Array<Types::Credential>] :credentials
    #   <p>The termination credentials being updated.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     credentials: [
    #       {
    #         username: "SensitiveString",
    #         password: "SensitiveString"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_voice_connector_termination_credentials(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def put_voice_connector_termination_credentials(params = {}, options = {})
      request = build_request(:put_voice_connector_termination_credentials, params)
      request.send_request(options)
    end

    # <p>Restores a deleted phone number.</p>
    # @param [Hash, Types::RestorePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The ID of the phone number being restored.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "SensitiveNonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.restore_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number: {
    #       phone_number_id: "SensitiveNonEmptyString",
    #       e164_phone_number: "E164PhoneNumber",
    #       country: "Alpha2CountryCode",
    #       type: "Local" # One of: ["Local", "TollFree"],
    #       product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "Cancelled" # One of: ["Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
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
    #           name: "VoiceConnectorId" # One of: ["VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #           associated_timestamp: Time.now
    #         }
    #       ],
    #       calling_name: "CallingName",
    #       calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       deletion_timestamp: Time.now,
    #       order_id: "GuidString",
    #       name: "PhoneNumberName"
    #     }
    #   }
    # @return [Types::RestorePhoneNumberResponse]
    def restore_phone_number(params = {}, options = {})
      request = build_request(:restore_phone_number, params)
      request.send_request(options)
    end

    # <p>Searches the provisioned phone numbers in an organization.</p>
    # @param [Hash, Types::SearchAvailablePhoneNumbersRequest] params
    # @option params [String] :area_code
    #   <p>Confines a search to just the phone numbers associated with the specified area code.</p>
    # @option params [String] :city
    #   <p>Confines a search to just the phone numbers associated with the specified city.</p>
    # @option params [String] :country
    #   <p>Confines a search to just the phone numbers associated with the specified country.</p>
    # @option params [String] :state
    #   <p>Confines a search to just the phone numbers associated with the specified state.</p>
    # @option params [String] :toll_free_prefix
    #   <p>Confines a search to just the phone numbers associated with the specified toll-free prefix.</p>
    # @option params [String] :phone_number_type
    #   <p>Confines a search to just the phone numbers associated with the specified phone number type, either <b>local</b> or <b>toll-free</b>.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    # @option params [String] :next_token
    #   <p>The token used to return the next page of results.</p>
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

    # <p>Starts a speaker search task.</p>
    #          <important>
    #             <p>Before starting any speaker search tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the  
    #          <a href="https://aws.amazon.com/service-terms/">AWS service terms</a> for the Amazon Chime SDK.</p>
    #          </important>
    # @param [Hash, Types::StartSpeakerSearchTaskRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :transaction_id
    #   <p>The transaction ID of the call being analyzed.</p>
    # @option params [String] :voice_profile_domain_id
    #   <p>The ID of the voice profile domain that will store the voice profile.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different speaker search tasks.</p>
    # @option params [String] :call_leg
    #   <p>Specifies which call leg to stream for speaker search.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     transaction_id: "NonEmptyString256", # required
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #     client_request_token: "ClientRequestId",
    #     call_leg: "Caller" # One of: ["Caller", "Callee"]
    #   }
    #   options = {}
    #   response = client.start_speaker_search_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     speaker_search_task: {
    #       speaker_search_task_id: "NonEmptyString256",
    #       speaker_search_task_status: "NonEmptyString",
    #       call_details: {
    #         voice_connector_id: "NonEmptyString128",
    #         transaction_id: "NonEmptyString256",
    #         is_caller: false
    #       },
    #       speaker_search_details: {
    #         results: [
    #           {
    #             confidence_score: 1.0,
    #             voice_profile_id: "NonEmptyString256"
    #           }
    #         ],
    #         voiceprint_generation_status: "NonEmptyString256"
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       started_timestamp: Time.now,
    #       status_message: "String"
    #     }
    #   }
    # @return [Types::StartSpeakerSearchTaskResponse]
    def start_speaker_search_task(params = {}, options = {})
      request = build_request(:start_speaker_search_task, params)
      request.send_request(options)
    end

    # <p>Starts a voice tone analysis task. For more information about voice tone analysis, see 
    #          <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html">Using Amazon Chime SDK voice analytics</a> 
    #          in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    #          <important>
    #             <p>Before starting any voice tone analysis tasks, you must provide all notices and obtain all consents from the speaker as required under applicable privacy and biometrics laws, and as required under the 
    #          <a href="https://aws.amazon.com/service-terms/">AWS service terms</a> for the Amazon Chime SDK.</p>
    #          </important>
    # @param [Hash, Types::StartVoiceToneAnalysisTaskRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :transaction_id
    #   <p>The transaction ID.</p>
    # @option params [String] :language_code
    #   <p>The language code.</p>
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different voice tone analysis 
    #            tasks.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     transaction_id: "NonEmptyString256", # required
    #     language_code: "en-US" # One of: ["en-US"], # required
    #     client_request_token: "ClientRequestId"
    #   }
    #   options = {}
    #   response = client.start_voice_tone_analysis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_tone_analysis_task: {
    #       voice_tone_analysis_task_id: "NonEmptyString256",
    #       voice_tone_analysis_task_status: "NonEmptyString",
    #       call_details: {
    #         voice_connector_id: "NonEmptyString128",
    #         transaction_id: "NonEmptyString256",
    #         is_caller: false
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       started_timestamp: Time.now,
    #       status_message: "String"
    #     }
    #   }
    # @return [Types::StartVoiceToneAnalysisTaskResponse]
    def start_voice_tone_analysis_task(params = {}, options = {})
      request = build_request(:start_voice_tone_analysis_task, params)
      request.send_request(options)
    end

    # <p>Stops a speaker search task.</p>
    # @param [Hash, Types::StopSpeakerSearchTaskRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :speaker_search_task_id
    #   <p>The speaker search task ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.stop_speaker_search_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_speaker_search_task(params = {}, options = {})
      request = build_request(:stop_speaker_search_task, params)
      request.send_request(options)
    end

    # <p>Stops a voice tone analysis task.</p>
    # @param [Hash, Types::StopVoiceToneAnalysisTaskRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :voice_tone_analysis_task_id
    #   <p>The ID of the voice tone analysis task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     voice_tone_analysis_task_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.stop_voice_tone_analysis_task(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_voice_tone_analysis_task(params = {}, options = {})
      request = build_request(:stop_voice_tone_analysis_task, params)
      request.send_request(options)
    end

    # <p>Adds a tag to the specified resource.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource being tagged. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of the tags being added to the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "Arn", # required
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
    # @return [Smithy::Schema::EmptyStructure]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from a resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource having its tags removed.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags being removed from the resource.</p>
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
    # @return [Smithy::Schema::EmptyStructure]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates global settings for the Amazon Chime SDK Voice Connectors in an AWS account.</p>
    # @param [Hash, Types::UpdateGlobalSettingsRequest] params
    # @option params [Types::VoiceConnectorSettings] :voice_connector
    #   <p>The Voice Connector settings.</p>
    # @example Request syntax with placeholder values
    #   params = {
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

    # <p>Updates phone number details, such as product type, calling name, or phone number name for the 
    #          specified phone number ID. You can update one phone number detail at a time. For 
    #          example, you can update either the product type, calling name, or phone number name in one action.</p>
    #          <p>For numbers outside the U.S., you must use the Amazon Chime SDK SIP Media 
    #          Application Dial-In product type.</p>
    #          <p>Updates to outbound calling names can take 72 hours to complete. Pending 
    #          updates to outbound calling names must be complete before you can request another 
    #          update.</p>
    # @param [Hash, Types::UpdatePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The phone number ID.</p>
    # @option params [String] :product_type
    #   <p>The product type.</p>
    # @option params [String] :calling_name
    #   <p>The outbound calling name associated with the phone number.</p>
    # @option params [String] :name
    #   <p>Specifies the updated name assigned to one or more phone numbers.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "SensitiveNonEmptyString", # required
    #     product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #     calling_name: "CallingName",
    #     name: "PhoneNumberName"
    #   }
    #   options = {}
    #   response = client.update_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number: {
    #       phone_number_id: "SensitiveNonEmptyString",
    #       e164_phone_number: "E164PhoneNumber",
    #       country: "Alpha2CountryCode",
    #       type: "Local" # One of: ["Local", "TollFree"],
    #       product_type: "VoiceConnector" # One of: ["VoiceConnector", "SipMediaApplicationDialIn"],
    #       status: "Cancelled" # One of: ["Cancelled", "PortinCancelRequested", "PortinInProgress", "AcquireInProgress", "AcquireFailed", "Unassigned", "Assigned", "ReleaseInProgress", "DeleteInProgress", "ReleaseFailed", "DeleteFailed"],
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
    #           name: "VoiceConnectorId" # One of: ["VoiceConnectorId", "VoiceConnectorGroupId", "SipRuleId"],
    #           associated_timestamp: Time.now
    #         }
    #       ],
    #       calling_name: "CallingName",
    #       calling_name_status: "Unassigned" # One of: ["Unassigned", "UpdateInProgress", "UpdateSucceeded", "UpdateFailed"],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       deletion_timestamp: Time.now,
    #       order_id: "GuidString",
    #       name: "PhoneNumberName"
    #     }
    #   }
    # @return [Types::UpdatePhoneNumberResponse]
    def update_phone_number(params = {}, options = {})
      request = build_request(:update_phone_number, params)
      request.send_request(options)
    end

    # <p>Updates the phone number settings for the administrator's AWS account, such 
    #          as the default outbound calling name. You can update the default outbound calling 
    #          name once every seven days. Outbound calling names can take up to 72 hours to 
    #          update.</p>
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

    # <p>Updates the specified proxy session details, such as voice or SMS capabilities.</p>
    # @param [Hash, Types::UpdateProxySessionRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :proxy_session_id
    #   <p>The proxy session ID.</p>
    # @option params [Array<String>] :capabilities
    #   <p>The proxy session capabilities.</p>
    # @option params [Integer] :expiry_minutes
    #   <p>The number of minutes allowed for the proxy session.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString128", # required
    #     proxy_session_id: "NonEmptyString128", # required
    #     capabilities: ["Voice" # One of: ["Voice", "SMS"]], # required
    #     expiry_minutes: 1
    #   }
    #   options = {}
    #   response = client.update_proxy_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     proxy_session: {
    #       voice_connector_id: "NonEmptyString128",
    #       proxy_session_id: "NonEmptyString128",
    #       name: "String128",
    #       status: "Open" # One of: ["Open", "InProgress", "Closed"],
    #       expiry_minutes: 1,
    #       capabilities: ["Voice" # One of: ["Voice", "SMS"]],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       ended_timestamp: Time.now,
    #       participants: [
    #         {
    #           phone_number: "E164PhoneNumber",
    #           proxy_phone_number: "E164PhoneNumber"
    #         }
    #       ],
    #       number_selection_behavior: "PreferSticky" # One of: ["PreferSticky", "AvoidSticky"],
    #       geo_match_level: "Country" # One of: ["Country", "AreaCode"],
    #       geo_match_params: {
    #         country: "Country", # required
    #         area_code: "AreaCode", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateProxySessionResponse]
    def update_proxy_session(params = {}, options = {})
      request = build_request(:update_proxy_session, params)
      request.send_request(options)
    end

    # <p>Updates the details of the specified SIP media application.</p>
    # @param [Hash, Types::UpdateSipMediaApplicationRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The SIP media application ID.</p>
    # @option params [String] :name
    #   <p>The new name for the specified SIP media application.</p>
    # @option params [Array<Types::SipMediaApplicationEndpoint>] :endpoints
    #   <p>The new set of endpoints for the specified SIP media application.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #     name: "SipMediaApplicationName",
    #     endpoints: [
    #       {
    #         lambda_arn: "FunctionArn"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_sip_media_application(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application: {
    #       sip_media_application_id: "NonEmptyString",
    #       aws_region: "String",
    #       name: "SipMediaApplicationName",
    #       endpoints: [
    #         {
    #           lambda_arn: "FunctionArn"
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       sip_media_application_arn: "NonEmptyString"
    #     }
    #   }
    # @return [Types::UpdateSipMediaApplicationResponse]
    def update_sip_media_application(params = {}, options = {})
      request = build_request(:update_sip_media_application, params)
      request.send_request(options)
    end

    # <p>Invokes the AWS Lambda function associated with the SIP media application and 
    #          transaction ID in an update request. The Lambda function can then return a new set 
    #          of actions.</p>
    # @param [Hash, Types::UpdateSipMediaApplicationCallRequest] params
    # @option params [String] :sip_media_application_id
    #   <p>The ID of the SIP media application handling the call.</p>
    # @option params [String] :transaction_id
    #   <p>The ID of the call transaction.</p>
    # @option params [Hash<String, String>] :arguments
    #   <p>Arguments made available to the Lambda function as part of the 
    #            <code>CALL_UPDATE_REQUESTED</code> event. Can contain 0-20 key-value pairs.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_media_application_id: "NonEmptyString", # required
    #     transaction_id: "NonEmptyString", # required
    #     arguments: { # required
    #       "SensitiveString" => "SensitiveString"
    #     }
    #   }
    #   options = {}
    #   response = client.update_sip_media_application_call(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_media_application_call: {
    #       transaction_id: "GuidString"
    #     }
    #   }
    # @return [Types::UpdateSipMediaApplicationCallResponse]
    def update_sip_media_application_call(params = {}, options = {})
      request = build_request(:update_sip_media_application_call, params)
      request.send_request(options)
    end

    # <p>Updates the details of the specified SIP rule.</p>
    # @param [Hash, Types::UpdateSipRuleRequest] params
    # @option params [String] :sip_rule_id
    #   <p>The SIP rule ID.</p>
    # @option params [String] :name
    #   <p>The new name for the specified SIP rule.</p>
    # @option params [Boolean] :disabled
    #   <p>The new value that indicates whether the rule is disabled.</p>
    # @option params [Array<Types::SipRuleTargetApplication>] :target_applications
    #   <p>The new list of target applications.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sip_rule_id: "NonEmptyString", # required
    #     name: "SipRuleName", # required
    #     disabled: false,
    #     target_applications: [
    #       {
    #         sip_media_application_id: "NonEmptyString",
    #         priority: 1,
    #         aws_region: "String"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_sip_rule(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sip_rule: {
    #       sip_rule_id: "NonEmptyString",
    #       name: "SipRuleName",
    #       disabled: false,
    #       trigger_type: "ToPhoneNumber" # One of: ["ToPhoneNumber", "RequestUriHostname"],
    #       trigger_value: "NonEmptyString",
    #       target_applications: [
    #         {
    #           sip_media_application_id: "NonEmptyString",
    #           priority: 1,
    #           aws_region: "String"
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdateSipRuleResponse]
    def update_sip_rule(params = {}, options = {})
      request = build_request(:update_sip_rule, params)
      request.send_request(options)
    end

    # <p>Updates the details for the specified Amazon Chime SDK Voice Connector.</p>
    # @param [Hash, Types::UpdateVoiceConnectorRequest] params
    # @option params [String] :voice_connector_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :name
    #   <p>The name of the Voice Connector.</p>
    # @option params [Boolean] :require_encryption
    #   <p>When enabled, requires encryption for the Voice Connector.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_id: "NonEmptyString", # required
    #     name: "VoiceConnectorName", # required
    #     require_encryption: false, # required
    #   }
    #   options = {}
    #   response = client.update_voice_connector(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector: {
    #       voice_connector_id: "NonEmptyString",
    #       aws_region: "us-east-1" # One of: ["us-east-1", "us-west-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "ap-northeast-2", "ap-northeast-1", "ap-southeast-1", "ap-southeast-2"],
    #       name: "VoiceConnectorName",
    #       outbound_host_name: "String",
    #       require_encryption: false,
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       voice_connector_arn: "NonEmptyString",
    #       integration_type: "CONNECT_CALL_TRANSFER_CONNECTOR" # One of: ["CONNECT_CALL_TRANSFER_CONNECTOR", "CONNECT_ANALYTICS_CONNECTOR"]
    #     }
    #   }
    # @return [Types::UpdateVoiceConnectorResponse]
    def update_voice_connector(params = {}, options = {})
      request = build_request(:update_voice_connector, params)
      request.send_request(options)
    end

    # <p>Updates the settings for the specified Amazon Chime SDK Voice Connector group.</p>
    # @param [Hash, Types::UpdateVoiceConnectorGroupRequest] params
    # @option params [String] :voice_connector_group_id
    #   <p>The Voice Connector ID.</p>
    # @option params [String] :name
    #   <p>The name of the Voice Connector group.</p>
    # @option params [Array<Types::VoiceConnectorItem>] :voice_connector_items
    #   <p>The <code>VoiceConnectorItems</code> to associate with the Voice Connector 
    #            group.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_connector_group_id: "NonEmptyString", # required
    #     name: "VoiceConnectorGroupName", # required
    #     voice_connector_items: [ # required
    #       {
    #         voice_connector_id: "NonEmptyString", # required
    #         priority: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.update_voice_connector_group(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_connector_group: {
    #       voice_connector_group_id: "NonEmptyString",
    #       name: "VoiceConnectorGroupName",
    #       voice_connector_items: [
    #         {
    #           voice_connector_id: "NonEmptyString", # required
    #           priority: 1, # required
    #         }
    #       ],
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       voice_connector_group_arn: "NonEmptyString"
    #     }
    #   }
    # @return [Types::UpdateVoiceConnectorGroupResponse]
    def update_voice_connector_group(params = {}, options = {})
      request = build_request(:update_voice_connector_group, params)
      request.send_request(options)
    end

    # <p>Updates the specified voice profile’s voice print and refreshes its expiration timestamp.</p>
    #          <important>
    #             <p>As a condition of using this feature, you acknowledge that the collection, use, storage, and retention of 
    #             your caller’s biometric identifiers and biometric information (“biometric data”) in the form of a digital voiceprint 
    #             requires the caller’s informed consent via a written release. Such consent is required under various state laws, 
    #             including biometrics laws in Illinois, Texas, Washington and other state privacy laws.</p>
    #             <p>You must provide a written release to each caller through a process that clearly reflects each caller’s informed 
    #             consent before using Amazon Chime SDK Voice Insights service, as required under the terms of your agreement 
    #             with AWS governing your use of the service.</p>
    #          </important>
    # @param [Hash, Types::UpdateVoiceProfileRequest] params
    # @option params [String] :voice_profile_id
    #   <p>The profile ID.</p>
    # @option params [String] :speaker_search_task_id
    #   <p>The ID of the speaker search task.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_profile_id: "NonEmptyString256", # required
    #     speaker_search_task_id: "NonEmptyString256", # required
    #   }
    #   options = {}
    #   response = client.update_voice_profile(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profile: {
    #       voice_profile_id: "NonEmptyString256",
    #       voice_profile_arn: "Arn",
    #       voice_profile_domain_id: "NonEmptyString256",
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now,
    #       expiration_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdateVoiceProfileResponse]
    def update_voice_profile(params = {}, options = {})
      request = build_request(:update_voice_profile, params)
      request.send_request(options)
    end

    # <p>Updates the settings for the specified voice profile domain.</p>
    # @param [Hash, Types::UpdateVoiceProfileDomainRequest] params
    # @option params [String] :voice_profile_domain_id
    #   <p>The domain ID.</p>
    # @option params [String] :name
    #   <p>The name of the voice profile domain.</p>
    # @option params [String] :description
    #   <p>The description of the voice profile domain.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     voice_profile_domain_id: "NonEmptyString256", # required
    #     name: "VoiceProfileDomainName",
    #     description: "VoiceProfileDomainDescription"
    #   }
    #   options = {}
    #   response = client.update_voice_profile_domain(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     voice_profile_domain: {
    #       voice_profile_domain_id: "NonEmptyString256",
    #       voice_profile_domain_arn: "Arn",
    #       name: "VoiceProfileDomainName",
    #       description: "VoiceProfileDomainDescription",
    #       server_side_encryption_configuration: {
    #         kms_key_arn: "Arn", # required
    #       },
    #       created_timestamp: Time.now,
    #       updated_timestamp: Time.now
    #     }
    #   }
    # @return [Types::UpdateVoiceProfileDomainResponse]
    def update_voice_profile_domain(params = {}, options = {})
      request = build_request(:update_voice_profile_domain, params)
      request.send_request(options)
    end

    # <p>Validates an address to be used for 911 calls made with Amazon Chime SDK Voice 
    #          Connectors. You can use validated addresses in a Presence Information Data Format 
    #          Location Object file that you include in SIP requests. That helps ensure that addresses 
    #          are routed to the appropriate Public Safety Answering Point.</p>
    # @param [Hash, Types::ValidateE911AddressRequest] params
    # @option params [String] :aws_account_id
    #   <p>The AWS account ID.</p>
    # @option params [String] :street_number
    #   <p>The address street number, such as <code>200</code> or <code>2121</code>.</p>
    # @option params [String] :street_info
    #   <p>The address street information, such as <code>8th Avenue</code>.</p>
    # @option params [String] :city
    #   <p>The address city, such as <code>Portland</code>.</p>
    # @option params [String] :state
    #   <p>The address state, such as <code>ME</code>.</p>
    # @option params [String] :country
    #   <p>The country in the address being validated as two-letter country code in ISO 3166-1
    #            alpha-2 format, such as <code>US</code>. For more information, see <a href="https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2">ISO 3166-1 alpha-2</a> in
    #            Wikipedia.</p>
    # @option params [String] :postal_code
    #   <p>The dress postal code, such <code>04352</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     aws_account_id: "NonEmptyString", # required
    #     street_number: "SensitiveNonEmptyString", # required
    #     street_info: "SensitiveNonEmptyString", # required
    #     city: "SensitiveNonEmptyString", # required
    #     state: "SensitiveNonEmptyString", # required
    #     country: "SensitiveNonEmptyString", # required
    #     postal_code: "SensitiveNonEmptyString", # required
    #   }
    #   options = {}
    #   response = client.validate_e911_address(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     validation_result: 1,
    #     address_external_id: "String",
    #     address: {
    #       street_name: "SensitiveNonEmptyString",
    #       street_suffix: "SensitiveNonEmptyString",
    #       post_directional: "SensitiveNonEmptyString",
    #       pre_directional: "SensitiveNonEmptyString",
    #       street_number: "SensitiveNonEmptyString",
    #       city: "SensitiveNonEmptyString",
    #       state: "SensitiveNonEmptyString",
    #       postal_code: "SensitiveNonEmptyString",
    #       postal_code_plus4: "SensitiveNonEmptyString",
    #       country: "SensitiveNonEmptyString"
    #     },
    #     candidate_address_list: [
    #       {
    #         street_info: "SensitiveNonEmptyString",
    #         street_number: "SensitiveNonEmptyString",
    #         city: "SensitiveNonEmptyString",
    #         state: "SensitiveNonEmptyString",
    #         postal_code: "SensitiveNonEmptyString",
    #         postal_code_plus4: "SensitiveNonEmptyString",
    #         country: "SensitiveNonEmptyString"
    #       }
    #     ]
    #   }
    # @return [Types::ValidateE911AddressResponse]
    def validate_e911_address(params = {}, options = {})
      request = build_request(:validate_e911_address, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkvoice'
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
