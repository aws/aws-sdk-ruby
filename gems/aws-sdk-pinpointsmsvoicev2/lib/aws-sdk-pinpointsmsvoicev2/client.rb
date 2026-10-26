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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:pinpointsmsvoicev2)

module Aws::PinpointSMSVoiceV2
  # An API client for Aws::PinpointSMSVoiceV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::PinpointSMSVoiceV2
    @identifier = :pinpointsmsvoicev2

    add_plugin(::Aws::PinpointSMSVoiceV2::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::PinpointSMSVoiceV2::EndpointProvider)
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

    # <p>Associates the specified origination identity with a pool.</p> <p>If the origination identity is a phone number and is already associated with another pool, an error is returned. A sender ID can be associated with multiple pools.</p> <p>If the origination identity configuration doesn't match the pool's configuration, an error is returned.</p>
    # @param [Hash, Types::AssociateOriginationIdentityRequest] params
    # @option params [String] :pool_id
    #   <p>The pool to update with the new Identity. This value can be either the PoolId or PoolArn, and you can find these values using <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribePools.html">DescribePools</a>.</p> <important> <p>If you are using a shared End User Messaging SMS; resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :origination_identity
    #   <p>The origination identity to use, such as PhoneNumberId, PhoneNumberArn, SenderId, or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn, while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the origination identity. This field is optional and is not required for origination identity types that are not country-specific, such as RCS agents.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "PoolIdOrArn", # required
    #     origination_identity: "PhoneOrSenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.associate_origination_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "String",
    #     pool_id: "String",
    #     origination_identity_arn: "String",
    #     origination_identity: "String",
    #     iso_country_code: "IsoCountryCode"
    #   }
    # @return [Types::AssociateOriginationIdentityResult]
    def associate_origination_identity(params = {}, options = {})
      request = build_request(:associate_origination_identity, params)
      request.send_request(options)
    end

    # <p>Associate a protect configuration with a configuration set. This replaces the configuration sets current protect configuration. A configuration set can only be associated with one protect configuration at a time. A protect configuration can be associated with multiple configuration sets.</p>
    # @param [Hash, Types::AssociateProtectConfigurationRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.associate_protect_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String", # required
    #     configuration_set_name: "ConfigurationSetName", # required
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #   }
    # @return [Types::AssociateProtectConfigurationResult]
    def associate_protect_configuration(params = {}, options = {})
      request = build_request(:associate_protect_configuration, params)
      request.send_request(options)
    end

    # <p>Returns information about a destination phone number, including whether the number type and whether it is valid, the carrier, and more.</p>
    # @param [Hash, Types::CarrierLookupRequest] params
    # @option params [String] :phone_number
    #   <p>The phone number that you want to retrieve information about. You can provide the phone number in various formats including special characters such as parentheses, brackets, spaces, hyphens, periods, and commas. The service automatically converts the input to E164 format for processing.</p>
    # @option params [Boolean] :enable_cleansing
    #   <p>Specifies whether the service cleanses the phone number that you provide. When set to <code>true</code>, the service normalizes the phone number according to the destination country's national numbering plan and dialing rules. The service returns the cleansed number in E.164 format in the <code>E164PhoneNumber</code> field and returns the number that you provided in the <code>OriginalPhoneNumber</code> field.</p>
    # @example Use CarrierLookup
    #   # Call the CarrierLookup operation to get information about a customer provided phone number, including if the number is valid. The service accepts phone numbers with various formatting characters and returns the number in E164 format.
    #   params = {
    #     phone_number: "+1 (555) 555-5333"
    #   }
    #   options = {}
    #   response = client.carrier_lookup(params, options)
    #   response.to_h #=>
    #   {
    #     e164_phone_number: "+15555555333",
    #     dialing_country_code: "1",
    #     iso_country_code: "US",
    #     country: "United States",
    #     mcc: "310",
    #     mnc: "260",
    #     carrier: "ExampleCorp Mobile",
    #     phone_number_type: "MOBILE"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number: "CarrierLookupInputPhoneNumberType", # required
    #     enable_cleansing: false
    #   }
    #   options = {}
    #   response = client.carrier_lookup(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     e164_phone_number: "E164PhoneNumberType", # required
    #     dialing_country_code: "DialingCountryCodeType",
    #     iso_country_code: "IsoCountryCode",
    #     country: "String",
    #     mcc: "MCCType",
    #     mnc: "MNCType",
    #     carrier: "String",
    #     phone_number_type: "PhoneNumberType", # required
    #     original_phone_number: "CarrierLookupInputPhoneNumberType"
    #   }
    # @return [Types::CarrierLookupResult]
    def carrier_lookup(params = {}, options = {})
      request = build_request(:carrier_lookup, params)
      request.send_request(options)
    end

    # <p>Creates a new configuration set. After you create the configuration set, you can add one or more event destinations to it.</p> <p>A configuration set is a set of rules that you apply to the SMS and voice messages that you send.</p> <p>When you send a message, you can optionally specify a single configuration set.</p>
    # @param [Hash, Types::CreateConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name to use for the new configuration set.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key and value pair tags that's associated with the new configuration set. </p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_configuration_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now
    #   }
    # @return [Types::CreateConfigurationSetResult]
    def create_configuration_set(params = {}, options = {})
      request = build_request(:create_configuration_set, params)
      request.send_request(options)
    end

    # <p>Creates a new event destination in a configuration set.</p> <p>An event destination is a location where you send message events. The event options are Amazon CloudWatch, Amazon Data Firehose, or Amazon SNS. For example, when a message is delivered successfully, you can send information about that event to an event destination, or send notifications to endpoints that are subscribed to an Amazon SNS topic. </p> <p>You can only create one event destination at a time. You must provide a value for a single event destination using either <code>CloudWatchLogsDestination</code>, <code>KinesisFirehoseDestination</code> or <code>SnsDestination</code>. If an event destination isn't provided then an exception is returned.</p> <p>Each configuration set can contain between 0 and 5 event destinations. Each event destination can contain a reference to a single destination, such as a CloudWatch or Firehose destination.</p>
    # @param [Hash, Types::CreateEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>Either the name of the configuration set or the configuration set ARN to apply event logging to. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    # @option params [String] :event_destination_name
    #   <p>The name that identifies the event destination.</p>
    # @option params [Array<String>] :matching_event_types
    #   <p>An array of event types that determine which events to log. If "ALL" is used, then End User Messaging SMS logs every event type.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    # @option params [Types::CloudWatchLogsDestination] :cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination for logging to Amazon CloudWatch Logs.</p>
    # @option params [Types::KinesisFirehoseDestination] :kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Amazon Data Firehose.</p>
    # @option params [Types::SnsDestination] :sns_destination
    #   <p>An object that contains information about an event destination for logging to Amazon SNS.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     event_destination_name: "EventDestinationName", # required
    #     matching_event_types: ["EventType"], # required
    #     cloud_watch_logs_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       log_group_arn: "LogGroupArn", # required
    #     },
    #     kinesis_firehose_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       delivery_stream_arn: "DeliveryStreamArn", # required
    #     },
    #     sns_destination: {
    #       topic_arn: "SnsTopicArn", # required
    #     },
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_event_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     event_destination: {
    #       event_destination_name: "EventDestinationName", # required
    #       enabled: false, # required
    #       matching_event_types: ["EventType"], # required
    #       cloud_watch_logs_destination: {
    #         iam_role_arn: "IamRoleArn", # required
    #         log_group_arn: "LogGroupArn", # required
    #       },
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "IamRoleArn", # required
    #         delivery_stream_arn: "DeliveryStreamArn", # required
    #       },
    #       sns_destination: {
    #         topic_arn: "SnsTopicArn", # required
    #       }
    #     }
    #   }
    # @return [Types::CreateEventDestinationResult]
    def create_event_destination(params = {}, options = {})
      request = build_request(:create_event_destination, params)
      request.send_request(options)
    end

    # <p>Creates a new notify configuration for managed messaging. A notify configuration defines the settings for sending templated messages, including the display name, use case, enabled channels, and enabled countries.</p>
    # @param [Hash, Types::CreateNotifyConfigurationRequest] params
    # @option params [String] :display_name
    #   <p>The display name to associate with the notify configuration.</p>
    # @option params [String] :use_case
    #   <p>The use case for the notify configuration.</p>
    # @option params [String] :default_template_id
    #   <p>The default template identifier to associate with the notify configuration. If specified, this template is used when sending messages without an explicit template identifier.</p>
    # @option params [String] :pool_id
    #   <p>The identifier of the pool to associate with the notify configuration.</p>
    # @option params [Array<String>] :enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    # @option params [Array<String>] :enabled_channels
    #   <p>An array of channels to enable for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the notify configuration can't be deleted. You can change this value using the <a>UpdateNotifyConfiguration</a> action.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) associated with the notify configuration.</p>
    # @example CreateNotifyConfiguration
    #   # Create a notify configuration for OTP code verification over SMS.
    #   params = {
    #     display_name: "MyOTPConfig",
    #     use_case: "CODE_VERIFICATION",
    #     enabled_channels: [
    #       "SMS"
    #     ],
    #     enabled_countries: [
    #       "US",
    #       "CA"
    #     ],
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "Environment",
    #         value: "Production"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_notify_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     notify_configuration_arn: "arn:aws:sms-voice:us-east-1:111122223333:notify-configuration/nc-1234567890abcdef0",
    #     notify_configuration_id: "nc-1234567890abcdef0",
    #     display_name: "MyOTPConfig",
    #     use_case: "CODE_VERIFICATION",
    #     enabled_channels: [
    #       "SMS"
    #     ],
    #     enabled_countries: [
    #       "US",
    #       "CA"
    #     ],
    #     tier: "BASIC",
    #     tier_upgrade_status: "BASIC",
    #     status: "ACTIVE",
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "Environment",
    #         value: "Production"
    #       }
    #     ],
    #     created_timestamp: Time.parse(1704067200)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     display_name: "NotifyConfigurationDisplayName", # required
    #     use_case: "NotifyConfigurationUseCase", # required
    #     default_template_id: "NotifyTemplateId",
    #     pool_id: "PoolIdOrArn",
    #     enabled_countries: ["IsoCountryCode"],
    #     enabled_channels: ["NumberCapability"], # required
    #     deletion_protection_enabled: false,
    #     client_token: "ClientToken",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_notify_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_configuration_arn: "NotifyConfigurationArn", # required
    #     notify_configuration_id: "NotifyConfigurationId", # required
    #     display_name: "NotifyConfigurationDisplayName", # required
    #     use_case: "NotifyConfigurationUseCase", # required
    #     default_template_id: "NotifyTemplateId",
    #     pool_id: "String",
    #     enabled_countries: ["IsoCountryCode"],
    #     enabled_channels: ["NumberCapability"], # required
    #     tier: "NotifyConfigurationTier", # required
    #     tier_upgrade_status: "TierUpgradeStatus", # required
    #     status: "NotifyConfigurationStatus", # required
    #     rejection_reason: "String",
    #     deletion_protection_enabled: false, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::CreateNotifyConfigurationResult]
    def create_notify_configuration(params = {}, options = {})
      request = build_request(:create_notify_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new opt-out list.</p> <p>If the opt-out list name already exists, an error is returned.</p> <p>An opt-out list is a list of phone numbers that are opted out, meaning you can't send SMS or voice messages to them. If end user replies with the keyword "STOP," an entry for the phone number is added to the opt-out list. In addition to STOP, your recipients can use any supported opt-out keyword, such as CANCEL or OPTOUT. For a list of supported opt-out keywords, see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-manage.html#channels-sms-manage-optout"> SMS opt out </a> in the End User Messaging SMS User Guide.</p>
    # @param [Hash, Types::CreateOptOutListRequest] params
    # @option params [String] :opt_out_list_name
    #   <p>The name of the new OptOutList.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) to associate with the new OptOutList.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     opt_out_list_name: "OptOutListName", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_opt_out_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     opt_out_list_arn: "String",
    #     opt_out_list_name: "OptOutListName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now
    #   }
    # @return [Types::CreateOptOutListResult]
    def create_opt_out_list(params = {}, options = {})
      request = build_request(:create_opt_out_list, params)
      request.send_request(options)
    end

    # <p>Creates a new pool and associates the specified origination identity to the pool. A pool can include one or more phone numbers and SenderIds that are associated with your Amazon Web Services account.</p> <p>The new pool inherits its configuration from the specified origination identity. This includes keywords, message type, opt-out list, two-way configuration, and self-managed opt-out configuration. Deletion protection isn't inherited from the origination identity and defaults to false.</p> <p>If the origination identity is a phone number and is already associated with another pool, an error is returned. A sender ID can be associated with multiple pools.</p>
    # @param [Hash, Types::CreatePoolRequest] params
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribePhoneNumbers.html">DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn, and use <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_DescribeSenderIds.html">DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <p>After the pool is created you can add more origination identities to the pool by using <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_AssociateOriginationIdentity.html">AssociateOriginationIdentity</a>.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :iso_country_code
    #   <p>The new two-character code, in ISO 3166-1 alpha-2 format, for the country or region of the new pool. This field is optional and is not required for origination identity types that are not country-specific, such as RCS agents.</p>
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive. After the pool is created the MessageType can't be changed.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the pool can't be deleted. You can change this value using the <a href="https://docs.aws.amazon.com/pinpoint/latest/apireference_smsvoicev2/API_UpdatePool.html">UpdatePool</a> action.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) associated with the pool.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_identity: "PhoneOrSenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode",
    #     message_type: "MessageType", # required
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "String",
    #     pool_id: "String",
    #     status: "PoolStatus",
    #     message_type: "MessageType",
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListName",
    #     shared_routes_enabled: false,
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now
    #   }
    # @return [Types::CreatePoolResult]
    def create_pool(params = {}, options = {})
      request = build_request(:create_pool, params)
      request.send_request(options)
    end

    # <p>Create a new protect configuration. By default all country rule sets for each capability are set to <code>ALLOW</code>. Update the country rule sets using <code>UpdateProtectConfigurationCountryRuleSet</code>. A protect configurations name is stored as a Tag with the key set to <code>Name</code> and value as the name of the protect configuration.</p>
    # @param [Hash, Types::CreateProtectConfigurationRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.create_protect_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     created_timestamp: Time.now, # required
    #     account_default: false, # required
    #     deletion_protection_enabled: false, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateProtectConfigurationResult]
    def create_protect_configuration(params = {}, options = {})
      request = build_request(:create_protect_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a new RCS agent for sending rich messages through the RCS channel. The RCS agent serves as an origination identity for sending RCS messages to your recipients.</p>
    # @param [Hash, Types::CreateRcsAgentRequest] params
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the RCS agent can't be deleted. You can change this value using the <a>UpdateRcsAgent</a> action.</p>
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutList to associate with the RCS agent. Valid values are either OptOutListName or OptOutListArn.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) associated with the RCS agent.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     deletion_protection_enabled: false,
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_rcs_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rcs_agent_arn: "String", # required
    #     rcs_agent_id: "String", # required
    #     status: "RcsAgentStatus", # required
    #     deletion_protection_enabled: false, # required
    #     opt_out_list_name: "OptOutListName",
    #     created_timestamp: Time.now, # required
    #     self_managed_opt_outs_enabled: false, # required
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     two_way_enabled: false, # required
    #     two_way_media_s3_bucket_name: "TwoWayMediaS3BucketName",
    #     two_way_media_s3_key_prefix: "TwoWayMediaS3KeyPrefix",
    #     two_way_media_s3_role: "IamRoleArn",
    #     two_way_rcs_events_enabled: ["RcsEventType"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateRcsAgentResult]
    def create_rcs_agent(params = {}, options = {})
      request = build_request(:create_rcs_agent, params)
      request.send_request(options)
    end

    # <p>Creates a new registration based on the <b>RegistrationType</b> field. </p>
    # @param [Hash, Types::CreateRegistrationRequest] params
    # @option params [String] :registration_type
    #   <p>The type of registration form to create. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) to associate with the registration.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_type: "RegistrationType", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     registration_type: "RegistrationType", # required
    #     registration_status: "RegistrationStatus", # required
    #     current_version_number: 1, # required
    #     additional_attributes: {
    #       "String" => "String"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::CreateRegistrationResult]
    def create_registration(params = {}, options = {})
      request = build_request(:create_registration, params)
      request.send_request(options)
    end

    # <p>Associate the registration with an origination identity such as a phone number or sender ID.</p>
    # @param [Hash, Types::CreateRegistrationAssociationRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @option params [String] :resource_id
    #   <p>The unique identifier for the origination identity. For example this could be a <b>PhoneNumberId</b> or <b>SenderId</b>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     resource_id: "ResourceIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.create_registration_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     registration_type: "RegistrationType", # required
    #     resource_arn: "String", # required
    #     resource_id: "String", # required
    #     resource_type: "String", # required
    #     iso_country_code: "IsoCountryCode",
    #     phone_number: "PhoneNumber"
    #   }
    # @return [Types::CreateRegistrationAssociationResult]
    def create_registration_association(params = {}, options = {})
      request = build_request(:create_registration_association, params)
      request.send_request(options)
    end

    # <p>Create a new registration attachment to use for uploading a file or a URL to a file. The maximum file size is 5MB and valid file extensions are PDF, JPEG and PNG. For example, many sender ID registrations require a signed “letter of authorization” (LOA) to be submitted.</p> <p>Use either <code>AttachmentUrl</code> or <code>AttachmentBody</code> to upload your attachment. If both are specified then an exception is returned.</p>
    # @param [Hash, Types::CreateRegistrationAttachmentRequest] params
    # @option params [String] :attachment_body
    #   <p>The registration file to upload. The maximum file size is 5MB and valid file extensions are PDF, JPEG and PNG.</p>
    # @option params [String] :attachment_url
    #   <p>Registration files have to be stored in an Amazon S3 bucket. The URI to use when sending is in the format <code>s3://BucketName/FileName</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) to associate with the registration attachment.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_body: "data",
    #     attachment_url: "AttachmentUrl",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_registration_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_attachment_arn: "String", # required
    #     registration_attachment_id: "String", # required
    #     attachment_status: "AttachmentStatus", # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::CreateRegistrationAttachmentResult]
    def create_registration_attachment(params = {}, options = {})
      request = build_request(:create_registration_attachment, params)
      request.send_request(options)
    end

    # <p>Create a new version of the registration and increase the <b>VersionNumber</b>. The previous version of the registration becomes read-only.</p>
    # @param [Hash, Types::CreateRegistrationVersionRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.create_registration_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     version_number: 1, # required
    #     registration_version_status: "RegistrationVersionStatus", # required
    #     registration_version_status_history: { # required
    #       draft_timestamp: Time.now, # required
    #       submitted_timestamp: Time.now,
    #       aws_reviewing_timestamp: Time.now,
    #       reviewing_timestamp: Time.now,
    #       requires_authentication_timestamp: Time.now,
    #       approved_timestamp: Time.now,
    #       discarded_timestamp: Time.now,
    #       denied_timestamp: Time.now,
    #       revoked_timestamp: Time.now,
    #       archived_timestamp: Time.now
    #     }
    #   }
    # @return [Types::CreateRegistrationVersionResult]
    def create_registration_version(params = {}, options = {})
      request = build_request(:create_registration_version, params)
      request.send_request(options)
    end

    # <p>You can only send messages to verified destination numbers when your account is in the sandbox. You can add up to 10 verified destination numbers.</p>
    # @param [Hash, Types::CreateVerifiedDestinationNumberRequest] params
    # @option params [String] :destination_phone_number
    #   <p>The verified destination phone number, in E.164 format.</p>
    # @option params [String] :rcs_agent_id
    #   <p>The unique identifier of the RCS agent to associate with the verified destination number. You can use either the RcsAgentId or RcsAgentArn.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) to associate with the destination number.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_phone_number: "PhoneNumber", # required
    #     rcs_agent_id: "RcsAgentIdOrArn",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.create_verified_destination_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verified_destination_number_arn: "String", # required
    #     verified_destination_number_id: "String", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     status: "VerificationStatus", # required
    #     rcs_agent_id: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::CreateVerifiedDestinationNumberResult]
    def create_verified_destination_number(params = {}, options = {})
      request = build_request(:create_verified_destination_number, params)
      request.send_request(options)
    end

    # <p>Removes the current account default protect configuration.</p>
    # @param [Hash, Types::DeleteAccountDefaultProtectConfigurationRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_account_default_protect_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     default_protect_configuration_arn: "ProtectConfigurationArn", # required
    #     default_protect_configuration_id: "ProtectConfigurationId", # required
    #   }
    # @return [Types::DeleteAccountDefaultProtectConfigurationResult]
    def delete_account_default_protect_configuration(params = {}, options = {})
      request = build_request(:delete_account_default_protect_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an existing configuration set.</p> <p>A configuration set is a set of rules that you apply to voice and SMS messages that you send. In a configuration set, you can specify a destination for specific types of events related to voice and SMS messages. </p>
    # @param [Hash, Types::DeleteConfigurationSetRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set ARN that you want to delete. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_configuration_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     event_destinations: [
    #       {
    #         event_destination_name: "EventDestinationName", # required
    #         enabled: false, # required
    #         matching_event_types: ["EventType"], # required
    #         cloud_watch_logs_destination: {
    #           iam_role_arn: "IamRoleArn", # required
    #           log_group_arn: "LogGroupArn", # required
    #         },
    #         kinesis_firehose_destination: {
    #           iam_role_arn: "IamRoleArn", # required
    #           delivery_stream_arn: "DeliveryStreamArn", # required
    #         },
    #         sns_destination: {
    #           topic_arn: "SnsTopicArn", # required
    #         }
    #       }
    #     ],
    #     default_message_type: "MessageType",
    #     default_sender_id: "SenderId",
    #     default_message_feedback_enabled: false,
    #     created_timestamp: Time.now
    #   }
    # @return [Types::DeleteConfigurationSetResult]
    def delete_configuration_set(params = {}, options = {})
      request = build_request(:delete_configuration_set, params)
      request.send_request(options)
    end

    # <p>Deletes an existing default message type on a configuration set.</p> <p> A message type is a type of messages that you plan to send. If you send account-related messages or time-sensitive messages such as one-time passcodes, choose <b>Transactional</b>. If you plan to send messages that contain marketing material or other promotional content, choose <b>Promotional</b>. This setting applies to your entire Amazon Web Services account. </p>
    # @param [Hash, Types::DeleteDefaultMessageTypeRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default message type from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_default_message_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     message_type: "MessageType"
    #   }
    # @return [Types::DeleteDefaultMessageTypeResult]
    def delete_default_message_type(params = {}, options = {})
      request = build_request(:delete_default_message_type, params)
      request.send_request(options)
    end

    # <p>Deletes an existing default sender ID on a configuration set.</p> <p>A default sender ID is the identity that appears on recipients' devices when they receive SMS messages. Support for sender ID capabilities varies by country or region.</p>
    # @param [Hash, Types::DeleteDefaultSenderIdRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set Amazon Resource Name (ARN) to delete the default sender ID from. The ConfigurationSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_default_sender_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     sender_id: "SenderId"
    #   }
    # @return [Types::DeleteDefaultSenderIdResult]
    def delete_default_sender_id(params = {}, options = {})
      request = build_request(:delete_default_sender_id, params)
      request.send_request(options)
    end

    # <p>Deletes an existing event destination.</p> <p>An event destination is a location where you send response information about the messages that you send. For example, when a message is delivered successfully, you can send information about that event to an Amazon CloudWatch destination, or send notifications to endpoints that are subscribed to an Amazon SNS topic.</p>
    # @param [Hash, Types::DeleteEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set or the configuration set's Amazon Resource Name (ARN) to remove the event destination from. The ConfigurateSetName and ConfigurationSetArn can be found using the <a>DescribeConfigurationSets</a> action.</p>
    # @option params [String] :event_destination_name
    #   <p>The name of the event destination to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     event_destination_name: "EventDestinationName", # required
    #   }
    #   options = {}
    #   response = client.delete_event_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     event_destination: {
    #       event_destination_name: "EventDestinationName", # required
    #       enabled: false, # required
    #       matching_event_types: ["EventType"], # required
    #       cloud_watch_logs_destination: {
    #         iam_role_arn: "IamRoleArn", # required
    #         log_group_arn: "LogGroupArn", # required
    #       },
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "IamRoleArn", # required
    #         delivery_stream_arn: "DeliveryStreamArn", # required
    #       },
    #       sns_destination: {
    #         topic_arn: "SnsTopicArn", # required
    #       }
    #     }
    #   }
    # @return [Types::DeleteEventDestinationResult]
    def delete_event_destination(params = {}, options = {})
      request = build_request(:delete_event_destination, params)
      request.send_request(options)
    end

    # <p>Deletes an existing keyword from an origination phone number or pool.</p> <p>A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, End User Messaging SMS responds with a customizable message.</p> <p>Keywords "HELP" and "STOP" can't be deleted or modified.</p>
    # @param [Hash, Types::DeleteKeywordRequest] params
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, PoolId or PoolArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn and <a>DescribePools</a> to find the values of PoolId and PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :keyword
    #   <p>The keyword to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_identity: "PhoneOrPoolIdOrArn", # required
    #     keyword: "Keyword", # required
    #   }
    #   options = {}
    #   response = client.delete_keyword(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origination_identity_arn: "String",
    #     origination_identity: "String",
    #     keyword: "Keyword",
    #     keyword_message: "KeywordMessage",
    #     keyword_action: "KeywordAction"
    #   }
    # @return [Types::DeleteKeywordResult]
    def delete_keyword(params = {}, options = {})
      request = build_request(:delete_keyword, params)
      request.send_request(options)
    end

    # <p>Deletes an account-level monthly spending limit override for sending multimedia messages (MMS). Deleting a spend limit override will set the <code>EnforcedLimit</code> to equal the <code>MaxLimit</code>, which is controlled by Amazon Web Services. For more information on spend limits (quotas) see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html">Quotas for Server Migration Service</a> in the <i>Server Migration Service User Guide</i>.</p>
    # @param [Hash, Types::DeleteMediaMessageSpendLimitOverrideRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_media_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::DeleteMediaMessageSpendLimitOverrideResult]
    def delete_media_message_spend_limit_override(params = {}, options = {})
      request = build_request(:delete_media_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Deletes an existing notify configuration.</p> <p>If deletion protection is enabled, an error is returned.</p>
    # @param [Hash, Types::DeleteNotifyConfigurationRequest] params
    # @option params [String] :notify_configuration_id
    #   <p>The identifier of the notify configuration to delete. The NotifyConfigurationId can be found using the <a>DescribeNotifyConfigurations</a> operation.</p>
    # @example DeleteNotifyConfiguration
    #   # Delete an existing notify configuration.
    #   params = {
    #     notify_configuration_id: "nc-1234567890abcdef0"
    #   }
    #   options = {}
    #   response = client.delete_notify_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     notify_configuration_arn: "arn:aws:sms-voice:us-east-1:111122223333:notify-configuration/nc-1234567890abcdef0",
    #     notify_configuration_id: "nc-1234567890abcdef0",
    #     display_name: "MyOTPConfig",
    #     use_case: "CODE_VERIFICATION",
    #     enabled_channels: [
    #       "SMS"
    #     ],
    #     enabled_countries: [
    #       "US",
    #       "CA"
    #     ],
    #     tier: "BASIC",
    #     tier_upgrade_status: "BASIC",
    #     status: "ACTIVE",
    #     deletion_protection_enabled: false,
    #     created_timestamp: Time.parse(1704067200)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_configuration_id: "NotifyConfigurationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_notify_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_configuration_arn: "NotifyConfigurationArn", # required
    #     notify_configuration_id: "NotifyConfigurationId", # required
    #     display_name: "NotifyConfigurationDisplayName", # required
    #     use_case: "NotifyConfigurationUseCase", # required
    #     default_template_id: "NotifyTemplateId",
    #     pool_id: "String",
    #     enabled_countries: ["IsoCountryCode"],
    #     enabled_channels: ["NumberCapability"], # required
    #     tier: "NotifyConfigurationTier", # required
    #     tier_upgrade_status: "TierUpgradeStatus", # required
    #     status: "NotifyConfigurationStatus", # required
    #     rejection_reason: "String",
    #     deletion_protection_enabled: false, # required
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::DeleteNotifyConfigurationResult]
    def delete_notify_configuration(params = {}, options = {})
      request = build_request(:delete_notify_configuration, params)
      request.send_request(options)
    end

    # <p>Deletes an account-level monthly spending limit override for sending notify messages. Deleting a spend limit override will set the <code>EnforcedLimit</code> to equal the <code>MaxLimit</code>, which is controlled by Amazon Web Services. For more information on spend limits (quotas) see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html">Quotas </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::DeleteNotifyMessageSpendLimitOverrideRequest] params
    # @example DeleteNotifyMessageSpendLimitOverride
    #   # Delete the monthly spend limit override for notify messages, reverting to the default limit.
    #   params = {}
    #   options = {}
    #   response = client.delete_notify_message_spend_limit_override(params, options)
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1000
    #   }
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_notify_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::DeleteNotifyMessageSpendLimitOverrideResult]
    def delete_notify_message_spend_limit_override(params = {}, options = {})
      request = build_request(:delete_notify_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Deletes an existing opt-out list. All opted out phone numbers in the opt-out list are deleted.</p> <p>If the specified opt-out list name doesn't exist or is in-use by an origination phone number or pool, an error is returned.</p>
    # @param [Hash, Types::DeleteOptOutListRequest] params
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList to delete. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_opt_out_list(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     opt_out_list_arn: "String",
    #     opt_out_list_name: "OptOutListName",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::DeleteOptOutListResult]
    def delete_opt_out_list(params = {}, options = {})
      request = build_request(:delete_opt_out_list, params)
      request.send_request(options)
    end

    # <p>Deletes an existing opted out destination phone number from the specified opt-out list.</p> <p>Each destination phone number can only be deleted once every 30 days.</p> <p>If the specified destination phone number doesn't exist or if the opt-out list doesn't exist, an error is returned.</p>
    # @param [Hash, Types::DeleteOptedOutNumberRequest] params
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to remove the phone number from.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :opted_out_number
    #   <p>The phone number, in E.164 format, to remove from the OptOutList.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #     opted_out_number: "PhoneNumber", # required
    #   }
    #   options = {}
    #   response = client.delete_opted_out_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     opt_out_list_arn: "String",
    #     opt_out_list_name: "OptOutListName",
    #     opted_out_number: "PhoneNumber",
    #     opted_out_timestamp: Time.now,
    #     end_user_opted_out: false
    #   }
    # @return [Types::DeleteOptedOutNumberResult]
    def delete_opted_out_number(params = {}, options = {})
      request = build_request(:delete_opted_out_number, params)
      request.send_request(options)
    end

    # <p>Deletes an existing pool. Deleting a pool disassociates all origination identities from that pool.</p> <p>If the pool status isn't active or if deletion protection is enabled, an error is returned.</p> <p>A pool is a collection of phone numbers and SenderIds. A pool can include one or more phone numbers and SenderIds that are associated with your Amazon Web Services account.</p>
    # @param [Hash, Types::DeletePoolRequest] params
    # @option params [String] :pool_id
    #   <p>The PoolId or PoolArn of the pool to delete. You can use <a>DescribePools</a> to find the values for PoolId and PoolArn .</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "PoolIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "String",
    #     pool_id: "String",
    #     status: "PoolStatus",
    #     message_type: "MessageType",
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListName",
    #     shared_routes_enabled: false,
    #     created_timestamp: Time.now
    #   }
    # @return [Types::DeletePoolResult]
    def delete_pool(params = {}, options = {})
      request = build_request(:delete_pool, params)
      request.send_request(options)
    end

    # <p>Permanently delete the protect configuration. The protect configuration must have deletion protection disabled and must not be associated as the account default protect configuration or associated with a configuration set.</p>
    # @param [Hash, Types::DeleteProtectConfigurationRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_protect_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     created_timestamp: Time.now, # required
    #     account_default: false, # required
    #     deletion_protection_enabled: false, # required
    #   }
    # @return [Types::DeleteProtectConfigurationResult]
    def delete_protect_configuration(params = {}, options = {})
      request = build_request(:delete_protect_configuration, params)
      request.send_request(options)
    end

    # <p>Permanently delete the protect configuration rule set number override.</p>
    # @param [Hash, Types::DeleteProtectConfigurationRuleSetNumberOverrideRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     destination_phone_number: "PhoneNumber", # required
    #   }
    #   options = {}
    #   response = client.delete_protect_configuration_rule_set_number_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     created_timestamp: Time.now, # required
    #     action: "ProtectConfigurationRuleOverrideAction", # required
    #     iso_country_code: "IsoCountryCode",
    #     expiration_timestamp: Time.now
    #   }
    # @return [Types::DeleteProtectConfigurationRuleSetNumberOverrideResult]
    def delete_protect_configuration_rule_set_number_override(params = {}, options = {})
      request = build_request(:delete_protect_configuration_rule_set_number_override, params)
      request.send_request(options)
    end

    # <p>Deletes an existing RCS agent. If deletion protection is enabled, an error is returned.</p>
    # @param [Hash, Types::DeleteRcsAgentRequest] params
    # @option params [String] :rcs_agent_id
    #   <p>The unique identifier of the RCS agent to delete. You can use either the RcsAgentId or RcsAgentArn.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rcs_agent_id: "RcsAgentIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_rcs_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rcs_agent_arn: "String", # required
    #     rcs_agent_id: "String", # required
    #     status: "RcsAgentStatus", # required
    #     created_timestamp: Time.now, # required
    #     deletion_protection_enabled: false, # required
    #     opt_out_list_name: "OptOutListName",
    #     self_managed_opt_outs_enabled: false, # required
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     two_way_enabled: false, # required
    #     two_way_rcs_events_enabled: ["RcsEventType"]
    #   }
    # @return [Types::DeleteRcsAgentResult]
    def delete_rcs_agent(params = {}, options = {})
      request = build_request(:delete_rcs_agent, params)
      request.send_request(options)
    end

    # <p>Deletes an account-level monthly spending limit override for sending RCS messages. Deleting a spend limit override sets the <code>EnforcedLimit</code> to equal the <code>MaxLimit</code>, which is set by Amazon Web Services.</p>
    # @param [Hash, Types::DeleteRcsMessageSpendLimitOverrideRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_rcs_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::DeleteRcsMessageSpendLimitOverrideResult]
    def delete_rcs_message_spend_limit_override(params = {}, options = {})
      request = build_request(:delete_rcs_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Permanently delete an existing registration from your account.</p>
    # @param [Hash, Types::DeleteRegistrationRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_registration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     registration_type: "RegistrationType", # required
    #     registration_status: "RegistrationStatus", # required
    #     current_version_number: 1, # required
    #     approved_version_number: 1,
    #     latest_denied_version_number: 1,
    #     additional_attributes: {
    #       "String" => "String"
    #     },
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::DeleteRegistrationResult]
    def delete_registration(params = {}, options = {})
      request = build_request(:delete_registration, params)
      request.send_request(options)
    end

    # <p>Permanently delete the specified registration attachment.</p>
    # @param [Hash, Types::DeleteRegistrationAttachmentRequest] params
    # @option params [String] :registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_attachment_id: "RegistrationAttachmentIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_registration_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_attachment_arn: "String", # required
    #     registration_attachment_id: "String", # required
    #     attachment_status: "AttachmentStatus", # required
    #     attachment_upload_error_reason: "AttachmentUploadErrorReason",
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::DeleteRegistrationAttachmentResult]
    def delete_registration_attachment(params = {}, options = {})
      request = build_request(:delete_registration_attachment, params)
      request.send_request(options)
    end

    # <p>Delete the value in a registration form field.</p>
    # @param [Hash, Types::DeleteRegistrationFieldValueRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @option params [String] :field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     field_path: "FieldPath", # required
    #   }
    #   options = {}
    #   response = client.delete_registration_field_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     version_number: 1, # required
    #     field_path: "FieldPath", # required
    #     select_choices: ["SelectChoice"],
    #     text_value: "TextValue",
    #     registration_attachment_id: "String"
    #   }
    # @return [Types::DeleteRegistrationFieldValueResult]
    def delete_registration_field_value(params = {}, options = {})
      request = build_request(:delete_registration_field_value, params)
      request.send_request(options)
    end

    # <p>Deletes the resource-based policy document attached to the End User Messaging SMS resource. A shared resource can be a Pool, Opt-out list, Sender Id, or Phone number.</p>
    # @param [Hash, Types::DeleteResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource you're deleting the resource-based policy from.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.delete_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "AmazonResourceName",
    #     policy: "ResourcePolicy",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::DeleteResourcePolicyResult]
    def delete_resource_policy(params = {}, options = {})
      request = build_request(:delete_resource_policy, params)
      request.send_request(options)
    end

    # <p>Deletes an account-level monthly spending limit override for sending text messages. Deleting a spend limit override will set the <code>EnforcedLimit</code> to equal the <code>MaxLimit</code>, which is controlled by Amazon Web Services. For more information on spend limits (quotas) see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html">Quotas </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::DeleteTextMessageSpendLimitOverrideRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_text_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::DeleteTextMessageSpendLimitOverrideResult]
    def delete_text_message_spend_limit_override(params = {}, options = {})
      request = build_request(:delete_text_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Delete a verified destination phone number.</p>
    # @param [Hash, Types::DeleteVerifiedDestinationNumberRequest] params
    # @option params [String] :verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     verified_destination_number_id: "VerifiedDestinationNumberIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.delete_verified_destination_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verified_destination_number_arn: "String", # required
    #     verified_destination_number_id: "String", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::DeleteVerifiedDestinationNumberResult]
    def delete_verified_destination_number(params = {}, options = {})
      request = build_request(:delete_verified_destination_number, params)
      request.send_request(options)
    end

    # <p>Deletes an account level monthly spend limit override for sending voice messages. Deleting a spend limit override sets the <code>EnforcedLimit</code> equal to the <code>MaxLimit</code>, which is controlled by Amazon Web Services. For more information on spending limits (quotas) see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html">Quotas </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::DeleteVoiceMessageSpendLimitOverrideRequest] params
    # @example Request syntax with placeholder values
    #   params = {}
    #   options = {}
    #   response = client.delete_voice_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::DeleteVoiceMessageSpendLimitOverrideResult]
    def delete_voice_message_spend_limit_override(params = {}, options = {})
      request = build_request(:delete_voice_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Describes attributes of your Amazon Web Services account. The supported account attributes include account tier, which indicates whether your account is in the sandbox or production environment. When you're ready to move your account out of the sandbox, create an Amazon Web Services Support case for a service limit increase request.</p> <p>New accounts are placed into an SMS or voice sandbox. The sandbox protects both Amazon Web Services end recipients and SMS or voice recipients from fraud and abuse. </p>
    # @param [Hash, Types::DescribeAccountAttributesRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_account_attributes(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_attributes: [
    #       {
    #         name: "AccountAttributeName", # required
    #         value: "String", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAccountAttributesResult]
    def describe_account_attributes(params = {}, options = {})
      request = build_request(:describe_account_attributes, params)
      request.send_request(options)
    end

    # <p>Describes the current End User Messaging SMS SMS Voice V2 resource quotas for your account. The description for a quota includes the quota name, current usage toward that quota, and the quota's maximum value.</p> <p>When you establish an Amazon Web Services account, the account has initial quotas on the maximum number of configuration sets, opt-out lists, phone numbers, and pools that you can create in a given Region. For more information see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/quotas.html">Quotas </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::DescribeAccountLimitsRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_account_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     account_limits: [
    #       {
    #         name: "AccountLimitName", # required
    #         used: 1, # required
    #         max: 1, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeAccountLimitsResult]
    def describe_account_limits(params = {}, options = {})
      request = build_request(:describe_account_limits, params)
      request.send_request(options)
    end

    # <p>Describes the specified configuration sets or all in your account.</p> <p>If you specify configuration set names, the output includes information for only the specified configuration sets. If you specify filters, the output includes information for only those configuration sets that meet the filter criteria. If you don't specify configuration set names or filters, the output includes information for all configuration sets.</p> <p>If you specify a configuration set name that isn't valid, an error is returned.</p>
    # @param [Hash, Types::DescribeConfigurationSetsRequest] params
    # @option params [Array<String>] :configuration_set_names
    #   <p>An array of strings. Each element can be either a ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [Array<Types::ConfigurationSetFilter>] :filters
    #   <p>An array of filters to apply to the results that are returned.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_names: ["ConfigurationSetNameOrArn"],
    #     filters: [
    #       {
    #         name: "ConfigurationSetFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_configuration_sets(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_sets: [
    #       {
    #         configuration_set_arn: "String", # required
    #         configuration_set_name: "ConfigurationSetName", # required
    #         event_destinations: [ # required
    #           {
    #             event_destination_name: "EventDestinationName", # required
    #             enabled: false, # required
    #             matching_event_types: ["EventType"], # required
    #             cloud_watch_logs_destination: {
    #               iam_role_arn: "IamRoleArn", # required
    #               log_group_arn: "LogGroupArn", # required
    #             },
    #             kinesis_firehose_destination: {
    #               iam_role_arn: "IamRoleArn", # required
    #               delivery_stream_arn: "DeliveryStreamArn", # required
    #             },
    #             sns_destination: {
    #               topic_arn: "SnsTopicArn", # required
    #             }
    #           }
    #         ],
    #         default_message_type: "MessageType",
    #         default_sender_id: "SenderId",
    #         default_message_feedback_enabled: false,
    #         created_timestamp: Time.now, # required
    #         protect_configuration_id: "ProtectConfigurationIdOrArn"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeConfigurationSetsResult]
    def describe_configuration_sets(params = {}, options = {})
      request = build_request(:describe_configuration_sets, params)
      request.send_request(options)
    end

    # <p>Describes the specified keywords or all keywords on your origination phone number or pool.</p> <p>A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, End User Messaging SMS responds with a customizable message.</p> <p>If you specify a keyword that isn't valid, an error is returned.</p>
    # @param [Hash, Types::DescribeKeywordsRequest] params
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> to find the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Array<String>] :keywords
    #   <p>An array of keywords to search for.</p>
    # @option params [Array<Types::KeywordFilter>] :filters
    #   <p>An array of keyword filters to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_identity: "PhoneOrPoolIdOrArn", # required
    #     keywords: ["Keyword"],
    #     filters: [
    #       {
    #         name: "KeywordFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_keywords(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origination_identity_arn: "String",
    #     origination_identity: "String",
    #     keywords: [
    #       {
    #         keyword: "Keyword", # required
    #         keyword_message: "KeywordMessage", # required
    #         keyword_action: "KeywordAction", # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeKeywordsResult]
    def describe_keywords(params = {}, options = {})
      request = build_request(:describe_keywords, params)
      request.send_request(options)
    end

    # <p>Describes the specified notify configurations or all notify configurations in your account.</p> <p>If you specify notify configuration IDs, the output includes information for only the specified notify configurations. If you specify filters, the output includes information for only those notify configurations that meet the filter criteria. If you don't specify notify configuration IDs or filters, the output includes information for all notify configurations.</p> <p>If you specify a notify configuration ID that isn't valid, an error is returned.</p>
    # @param [Hash, Types::DescribeNotifyConfigurationsRequest] params
    # @option params [Array<String>] :notify_configuration_ids
    #   <p>An array of notify configuration IDs to describe.</p>
    # @option params [Array<Types::NotifyConfigurationFilter>] :filters
    #   <p>An array of NotifyConfigurationFilter objects to filter the results on.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example DescribeNotifyConfigurations
    #   # Describe notify configurations filtered by status.
    #   params = {
    #     filters: [
    #       {
    #         name: "status",
    #         values: [
    #           "ACTIVE"
    #         ]
    #       }
    #     ],
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.describe_notify_configurations(params, options)
    #   response.to_h #=>
    #   {
    #     notify_configurations: [
    #       {
    #         notify_configuration_arn: "arn:aws:sms-voice:us-east-1:111122223333:notify-configuration/nc-1234567890abcdef0",
    #         notify_configuration_id: "nc-1234567890abcdef0",
    #         display_name: "MyOTPConfig",
    #         use_case: "CODE_VERIFICATION",
    #         enabled_channels: [
    #           "SMS"
    #         ],
    #         enabled_countries: [
    #           "US",
    #           "CA"
    #         ],
    #         tier: "BASIC",
    #         tier_upgrade_status: "BASIC",
    #         status: "ACTIVE",
    #         deletion_protection_enabled: false,
    #         created_timestamp: Time.parse(1704067200)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_configuration_ids: ["NotifyConfigurationIdOrArn"],
    #     filters: [
    #       {
    #         name: "NotifyConfigurationFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_notify_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_configurations: [
    #       {
    #         notify_configuration_arn: "NotifyConfigurationArn", # required
    #         notify_configuration_id: "NotifyConfigurationId", # required
    #         display_name: "NotifyConfigurationDisplayName", # required
    #         use_case: "NotifyConfigurationUseCase", # required
    #         default_template_id: "NotifyTemplateId",
    #         pool_id: "String",
    #         enabled_countries: ["IsoCountryCode"],
    #         enabled_channels: ["NumberCapability"], # required
    #         tier: "NotifyConfigurationTier", # required
    #         tier_upgrade_status: "TierUpgradeStatus", # required
    #         status: "NotifyConfigurationStatus", # required
    #         rejection_reason: "String",
    #         deletion_protection_enabled: false, # required
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeNotifyConfigurationsResult]
    def describe_notify_configurations(params = {}, options = {})
      request = build_request(:describe_notify_configurations, params)
      request.send_request(options)
    end

    # <p>Describes the specified notify templates or all notify templates in your account.</p> <p>If you specify template IDs, the output includes information for only the specified notify templates. If you specify filters, the output includes information for only those notify templates that meet the filter criteria. If you don't specify template IDs or filters, the output includes information for all notify templates.</p> <p>If you specify a template ID that isn't valid, an error is returned.</p>
    # @param [Hash, Types::DescribeNotifyTemplatesRequest] params
    # @option params [Array<String>] :template_ids
    #   <p>An array of template IDs to describe.</p>
    # @option params [Array<Types::NotifyTemplateFilter>] :filters
    #   <p>An array of NotifyTemplateFilter objects to filter the results on.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example DescribeNotifyTemplates
    #   # Describe available notify templates for OTP verification over SMS.
    #   params = {
    #     filters: [
    #       {
    #         name: "template-type",
    #         values: [
    #           "OTP_VERIFICATION"
    #         ]
    #       },
    #       {
    #         name: "channels",
    #         values: [
    #           "SMS"
    #         ]
    #       }
    #     ],
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.describe_notify_templates(params, options)
    #   response.to_h #=>
    #   {
    #     notify_templates: [
    #       {
    #         template_id: "nt-1234567890abcdef0",
    #         version: 1,
    #         template_type: "OTP_VERIFICATION",
    #         channels: [
    #           "SMS"
    #         ],
    #         tier_access: [
    #           "BASIC",
    #           "ADVANCED"
    #         ],
    #         status: "ACTIVE",
    #         supported_countries: [
    #           "US",
    #           "CA",
    #           "GB"
    #         ],
    #         language_code: "en",
    #         content: "Your verification code is {{code}}. It expires in {{expiry}} minutes.",
    #         variables: {
    #           "code" => {
    #             type: "STRING",
    #             required: true,
    #             description: "The verification code",
    #             max_length: 10,
    #             source: "CUSTOMER",
    #             sample: "123456"
    #           },
    #           "expiry" => {
    #             type: "INTEGER",
    #             required: false,
    #             description: "Expiry time in minutes",
    #             min_value: 1,
    #             max_value: 60,
    #             default_value: "10",
    #             source: "CUSTOMER",
    #             sample: "10"
    #           }
    #         },
    #         created_timestamp: Time.parse(1704067200)
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     template_ids: ["NotifyTemplateId"],
    #     filters: [
    #       {
    #         name: "NotifyTemplateFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_notify_templates(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_templates: [
    #       {
    #         template_id: "NotifyTemplateId", # required
    #         version: 1, # required
    #         template_type: "NotifyTemplateType", # required
    #         channels: ["NumberCapability"], # required
    #         tier_access: ["NotifyConfigurationTier"],
    #         status: "NotifyTemplateStatus",
    #         supported_countries: ["IsoCountryCode"],
    #         language_code: "NotifyLanguageCode",
    #         content: "TemplateContent",
    #         variables: {
    #           "String" => {
    #             type: "TemplateVariableType", # required
    #             required: false, # required
    #             description: "String",
    #             max_length: 1,
    #             min_value: 1,
    #             max_value: 1,
    #             default_value: "String",
    #             pattern: "String",
    #             sample: "String",
    #             source: "TemplateVariableSource"
    #           }
    #         },
    #         supported_voice_ids: ["VoiceId"],
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeNotifyTemplatesResult]
    def describe_notify_templates(params = {}, options = {})
      request = build_request(:describe_notify_templates, params)
      request.send_request(options)
    end

    # <p>Describes the specified opt-out list or all opt-out lists in your account.</p> <p>If you specify opt-out list names, the output includes information for only the specified opt-out lists. Opt-out lists include only those that meet the filter criteria. If you don't specify opt-out list names or filters, the output includes information for all opt-out lists.</p> <p>If you specify an opt-out list name that isn't valid, an error is returned.</p>
    # @param [Hash, Types::DescribeOptOutListsRequest] params
    # @option params [Array<String>] :opt_out_list_names
    #   <p>The OptOutLists to show the details of. This is an array of strings that can be either the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @option params [String] :owner
    #   <p>Use <code>SELF</code> to filter the list of Opt-Out List to ones your account owns or use <code>SHARED</code> to filter on Opt-Out List shared with your account. The <code>Owner</code> and <code>OptOutListNames</code> parameters can't be used at the same time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     opt_out_list_names: ["OptOutListNameOrArn"],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "Owner"
    #   }
    #   options = {}
    #   response = client.describe_opt_out_lists(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     opt_out_lists: [
    #       {
    #         opt_out_list_arn: "String", # required
    #         opt_out_list_name: "OptOutListName", # required
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeOptOutListsResult]
    def describe_opt_out_lists(params = {}, options = {})
      request = build_request(:describe_opt_out_lists, params)
      request.send_request(options)
    end

    # <p>Describes the specified opted out destination numbers or all opted out destination numbers in an opt-out list.</p> <p>If you specify opted out numbers, the output includes information for only the specified opted out numbers. If you specify filters, the output includes information for only those opted out numbers that meet the filter criteria. If you don't specify opted out numbers or filters, the output includes information for all opted out destination numbers in your opt-out list.</p> <p>If you specify an opted out number that isn't valid, an exception is returned.</p>
    # @param [Hash, Types::DescribeOptedOutNumbersRequest] params
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn of the OptOutList. You can use <a>DescribeOptOutLists</a> to find the values for OptOutListName and OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Array<String>] :opted_out_numbers
    #   <p>An array of phone numbers to search for in the OptOutList.</p> <p>If you specify an opted out number that isn't valid, an exception is returned.</p>
    # @option params [Array<Types::OptedOutFilter>] :filters
    #   <p>An array of OptedOutFilter objects to filter the results on.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #     opted_out_numbers: ["PhoneNumber"],
    #     filters: [
    #       {
    #         name: "OptedOutFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_opted_out_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     opt_out_list_arn: "String",
    #     opt_out_list_name: "OptOutListName",
    #     opted_out_numbers: [
    #       {
    #         opted_out_number: "PhoneNumber", # required
    #         opted_out_timestamp: Time.now, # required
    #         end_user_opted_out: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeOptedOutNumbersResult]
    def describe_opted_out_numbers(params = {}, options = {})
      request = build_request(:describe_opted_out_numbers, params)
      request.send_request(options)
    end

    # <p>Describes the specified origination phone number, or all the phone numbers in your account.</p> <p>If you specify phone number IDs, the output includes information for only the specified phone numbers. If you specify filters, the output includes information for only those phone numbers that meet the filter criteria. If you don't specify phone number IDs or filters, the output includes information for all phone numbers.</p> <p>If you specify a phone number ID that isn't valid, an error is returned.</p>
    # @param [Hash, Types::DescribePhoneNumbersRequest] params
    # @option params [Array<String>] :phone_number_ids
    #   <p>The unique identifier of phone numbers to find information about. This is an array of strings that can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Array<Types::PhoneNumberFilter>] :filters
    #   <p>An array of PhoneNumberFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @option params [String] :owner
    #   <p>Use <code>SELF</code> to filter the list of phone numbers to ones your account owns or use <code>SHARED</code> to filter on phone numbers shared with your account. The <code>Owner</code> and <code>PhoneNumberIds</code> parameters can't be used at the same time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_ids: ["PhoneNumberIdOrArn"],
    #     filters: [
    #       {
    #         name: "PhoneNumberFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "Owner"
    #   }
    #   options = {}
    #   response = client.describe_phone_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_numbers: [
    #       {
    #         phone_number_arn: "String", # required
    #         phone_number_id: "String",
    #         phone_number: "PhoneNumber", # required
    #         status: "NumberStatus", # required
    #         iso_country_code: "IsoCountryCode", # required
    #         message_type: "MessageType", # required
    #         number_capabilities: ["NumberCapability"], # required
    #         number_type: "NumberType", # required
    #         monthly_leasing_price: "String", # required
    #         two_way_enabled: false, # required
    #         two_way_channel_arn: "TwoWayChannelArn",
    #         two_way_channel_role: "IamRoleArn",
    #         self_managed_opt_outs_enabled: false, # required
    #         opt_out_list_name: "OptOutListName", # required
    #         international_sending_enabled: false,
    #         deletion_protection_enabled: false, # required
    #         pool_id: "String",
    #         registration_id: "String",
    #         messaging_limits: {
    #           rate_limits: {
    #             "String" => 1
    #           },
    #           daily_message_caps: {
    #             "String" => 1
    #           }
    #         },
    #         pricing_tier: "String",
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribePhoneNumbersResult]
    def describe_phone_numbers(params = {}, options = {})
      request = build_request(:describe_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified pools or all pools associated with your Amazon Web Services account.</p> <p>If you specify pool IDs, the output includes information for only the specified pools. If you specify filters, the output includes information for only those pools that meet the filter criteria. If you don't specify pool IDs or filters, the output includes information for all pools.</p> <p>If you specify a pool ID that isn't valid, an error is returned.</p> <p>A pool is a collection of phone numbers and SenderIds. A pool can include one or more phone numbers and SenderIds that are associated with your Amazon Web Services account.</p>
    # @param [Hash, Types::DescribePoolsRequest] params
    # @option params [Array<String>] :pool_ids
    #   <p>The unique identifier of pools to find. This is an array of strings that can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Array<Types::PoolFilter>] :filters
    #   <p>An array of PoolFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @option params [String] :owner
    #   <p>Use <code>SELF</code> to filter the list of Pools to ones your account owns or use <code>SHARED</code> to filter on Pools shared with your account. The <code>Owner</code> and <code>PoolIds</code> parameters can't be used at the same time.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_ids: ["PoolIdOrArn"],
    #     filters: [
    #       {
    #         name: "PoolFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "Owner"
    #   }
    #   options = {}
    #   response = client.describe_pools(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pools: [
    #       {
    #         pool_arn: "String", # required
    #         pool_id: "String", # required
    #         status: "PoolStatus", # required
    #         message_type: "MessageType", # required
    #         two_way_enabled: false, # required
    #         two_way_channel_arn: "TwoWayChannelArn",
    #         two_way_channel_role: "IamRoleArn",
    #         self_managed_opt_outs_enabled: false, # required
    #         opt_out_list_name: "OptOutListName", # required
    #         shared_routes_enabled: false, # required
    #         deletion_protection_enabled: false, # required
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribePoolsResult]
    def describe_pools(params = {}, options = {})
      request = build_request(:describe_pools, params)
      request.send_request(options)
    end

    # <p>Retrieves the protect configurations that match any of filters. If a filter isn’t provided then all protect configurations are returned.</p>
    # @param [Hash, Types::DescribeProtectConfigurationsRequest] params
    # @option params [Array<String>] :protect_configuration_ids
    #   <p>An array of protect configuration identifiers to search for.</p>
    # @option params [Array<Types::ProtectConfigurationFilter>] :filters
    #   <p>An array of ProtectConfigurationFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_ids: ["ProtectConfigurationIdOrArn"],
    #     filters: [
    #       {
    #         name: "ProtectConfigurationFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_protect_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configurations: [
    #       {
    #         protect_configuration_arn: "ProtectConfigurationArn", # required
    #         protect_configuration_id: "ProtectConfigurationId", # required
    #         created_timestamp: Time.now, # required
    #         account_default: false, # required
    #         deletion_protection_enabled: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeProtectConfigurationsResult]
    def describe_protect_configurations(params = {}, options = {})
      request = build_request(:describe_protect_configurations, params)
      request.send_request(options)
    end

    # <p>Retrieves the per-country launch status of an RCS agent, including carrier-level details for each country.</p>
    # @param [Hash, Types::DescribeRcsAgentCountryLaunchStatusRequest] params
    # @option params [String] :rcs_agent_id
    #   <p>The unique identifier of the RCS agent. You can use either the RcsAgentId or RcsAgentArn.</p>
    # @option params [Array<String>] :iso_country_codes
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, to filter the results.</p>
    # @option params [Array<Types::CountryLaunchStatusFilter>] :filters
    #   <p>An array of CountryLaunchStatusFilter objects to filter the results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rcs_agent_id: "RcsAgentIdOrArn", # required
    #     iso_country_codes: ["IsoCountryCode"],
    #     filters: [
    #       {
    #         name: "CountryLaunchStatusFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.describe_rcs_agent_country_launch_status(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rcs_agent_id: "String", # required
    #     rcs_agent_arn: "String", # required
    #     country_launch_status: [
    #       {
    #         iso_country_code: "IsoCountryCode", # required
    #         status: "CountryLaunchStatus", # required
    #         rcs_platform_id: "String",
    #         registration_id: "String", # required
    #         carrier_status: [ # required
    #           {
    #             carrier_name: "String", # required
    #             status: "CarrierStatus", # required
    #           }
    #         ]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRcsAgentCountryLaunchStatusResult]
    def describe_rcs_agent_country_launch_status(params = {}, options = {})
      request = build_request(:describe_rcs_agent_country_launch_status, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified RCS agents or all RCS agents associated with your Amazon Web Services account.</p> <p>If you specify RCS agent IDs, the output includes information for only the specified RCS agents. If you specify filters, the output includes information for only those RCS agents that meet the filter criteria. If you don't specify RCS agent IDs or filters, the output includes information for all RCS agents.</p>
    # @param [Hash, Types::DescribeRcsAgentsRequest] params
    # @option params [Array<String>] :rcs_agent_ids
    #   <p>An array of unique identifiers for the RCS agents. This is an array of strings that can be either the RcsAgentId or RcsAgentArn.</p>
    # @option params [String] :owner
    #   <p>Use <code>SELF</code> to filter the list of RCS agents to ones your account owns or use <code>SHARED</code> to filter on RCS agents shared with your account. The <code>Owner</code> and <code>RcsAgentIds</code> parameters can't be used at the same time.</p>
    # @option params [Array<Types::RcsAgentFilter>] :filters
    #   <p>An array of RcsAgentFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rcs_agent_ids: ["RcsAgentIdOrArn"],
    #     owner: "Owner",
    #     filters: [
    #       {
    #         name: "RcsAgentFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_rcs_agents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rcs_agents: [
    #       {
    #         rcs_agent_arn: "String", # required
    #         rcs_agent_id: "String", # required
    #         status: "RcsAgentStatus", # required
    #         created_timestamp: Time.now, # required
    #         deletion_protection_enabled: false, # required
    #         opt_out_list_name: "OptOutListName",
    #         self_managed_opt_outs_enabled: false, # required
    #         two_way_channel_arn: "TwoWayChannelArn",
    #         two_way_channel_role: "IamRoleArn",
    #         two_way_enabled: false, # required
    #         pool_id: "String",
    #         two_way_media_s3_bucket_name: "TwoWayMediaS3BucketName",
    #         two_way_media_s3_key_prefix: "TwoWayMediaS3KeyPrefix",
    #         two_way_media_s3_role: "IamRoleArn",
    #         two_way_rcs_events_enabled: ["RcsEventType"],
    #         testing_agent: {
    #           status: "TestingAgentStatus", # required
    #           testing_agent_id: "String",
    #           registration_id: "String", # required
    #         },
    #         messaging_limits: {
    #           rate_limits: {
    #             "String" => 1
    #           },
    #           daily_message_caps: {
    #             "String" => 1
    #           }
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRcsAgentsResult]
    def describe_rcs_agents(params = {}, options = {})
      request = build_request(:describe_rcs_agents, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified registration attachments or all registration attachments associated with your Amazon Web Services account.</p>
    # @param [Hash, Types::DescribeRegistrationAttachmentsRequest] params
    # @option params [Array<String>] :registration_attachment_ids
    #   <p>The unique identifier of registration attachments to find. This is an array of <b>RegistrationAttachmentId</b>.</p>
    # @option params [Array<Types::RegistrationAttachmentFilter>] :filters
    #   <p>An array of RegistrationAttachmentFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_attachment_ids: ["RegistrationIdOrArn"],
    #     filters: [
    #       {
    #         name: "RegistrationAttachmentFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registration_attachments(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_attachments: [ # required
    #       {
    #         registration_attachment_arn: "String", # required
    #         registration_attachment_id: "String", # required
    #         attachment_status: "AttachmentStatus", # required
    #         attachment_upload_error_reason: "AttachmentUploadErrorReason",
    #         created_timestamp: Time.now, # required
    #         attachment_url: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistrationAttachmentsResult]
    def describe_registration_attachments(params = {}, options = {})
      request = build_request(:describe_registration_attachments, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified registration type field definitions. You can use DescribeRegistrationFieldDefinitions to view the requirements for creating, filling out, and submitting each registration type.</p>
    # @param [Hash, Types::DescribeRegistrationFieldDefinitionsRequest] params
    # @option params [String] :registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    # @option params [String] :section_path
    #   <p>The path to the section of the registration.</p>
    # @option params [Array<String>] :field_paths
    #   <p>An array of paths to the registration form field.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_type: "RegistrationType", # required
    #     section_path: "SectionPath",
    #     field_paths: ["FieldPath"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registration_field_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_type: "RegistrationType", # required
    #     registration_field_definitions: [ # required
    #       {
    #         section_path: "SectionPath", # required
    #         field_path: "FieldPath", # required
    #         field_type: "FieldType", # required
    #         field_requirement: "FieldRequirement", # required
    #         select_validation: {
    #           min_choices: 1, # required
    #           max_choices: 1, # required
    #           options: ["String"], # required
    #         },
    #         text_validation: {
    #           min_length: 1, # required
    #           max_length: 1, # required
    #           pattern: "String", # required
    #         },
    #         display_hints: { # required
    #           title: "String", # required
    #           short_description: "String", # required
    #           long_description: "String",
    #           documentation_title: "String",
    #           documentation_link: "String",
    #           select_option_descriptions: [
    #             {
    #               option: "String", # required
    #               title: "String",
    #               description: "String"
    #             }
    #           ],
    #           text_validation_description: "String",
    #           example_text_value: "String"
    #         },
    #         conditional_behavior: {
    #           rules: [ # required
    #             {
    #               conditions: [ # required
    #                 {
    #                   depends_on_field_path: "FieldPath", # required
    #                   operator: "ConditionOperator", # required
    #                   values: ["ConditionValue"]
    #                 }
    #               ],
    #               rule_behavior: "ConditionalFieldBehavior", # required
    #               conditional_validation: {
    #                 min_length: 1,
    #                 max_length: 1,
    #                 pattern: "String",
    #                 allowed_values: ["SelectChoice"]
    #               }
    #             }
    #           ],
    #           default_behavior: "ConditionalFieldBehavior", # required
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistrationFieldDefinitionsResult]
    def describe_registration_field_definitions(params = {}, options = {})
      request = build_request(:describe_registration_field_definitions, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified registration field values.</p>
    # @param [Hash, Types::DescribeRegistrationFieldValuesRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @option params [Integer] :version_number
    #   <p>The version number of the registration.</p>
    # @option params [String] :section_path
    #   <p>The path to the section of the registration.</p>
    # @option params [Array<String>] :field_paths
    #   <p>An array of paths to the registration form field.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     version_number: 1,
    #     section_path: "SectionPath",
    #     field_paths: ["FieldPath"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registration_field_values(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     version_number: 1, # required
    #     registration_field_values: [ # required
    #       {
    #         field_path: "FieldPath", # required
    #         select_choices: ["SelectChoice"],
    #         text_value: "TextValue",
    #         registration_attachment_id: "RegistrationAttachmentIdOrArn",
    #         denied_reason: "String",
    #         feedback: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistrationFieldValuesResult]
    def describe_registration_field_values(params = {}, options = {})
      request = build_request(:describe_registration_field_values, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified registration section definitions. You can use DescribeRegistrationSectionDefinitions to view the requirements for creating, filling out, and submitting each registration type.</p>
    # @param [Hash, Types::DescribeRegistrationSectionDefinitionsRequest] params
    # @option params [String] :registration_type
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    # @option params [Array<String>] :section_paths
    #   <p>An array of paths for the registration form section.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_type: "RegistrationType", # required
    #     section_paths: ["SectionPath"],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registration_section_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_type: "RegistrationType", # required
    #     registration_section_definitions: [ # required
    #       {
    #         section_path: "SectionPath", # required
    #         display_hints: { # required
    #           title: "String", # required
    #           short_description: "String", # required
    #           long_description: "String",
    #           documentation_title: "String",
    #           documentation_link: "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistrationSectionDefinitionsResult]
    def describe_registration_section_definitions(params = {}, options = {})
      request = build_request(:describe_registration_section_definitions, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified registration type definitions. You can use DescribeRegistrationTypeDefinitions to view the requirements for creating, filling out, and submitting each registration type.</p>
    # @param [Hash, Types::DescribeRegistrationTypeDefinitionsRequest] params
    # @option params [Array<String>] :registration_types
    #   <p>The type of registration form. The list of <b>RegistrationTypes</b> can be found using the <a>DescribeRegistrationTypeDefinitions</a> action.</p>
    # @option params [Array<Types::RegistrationTypeFilter>] :filters
    #   <p>An array of RegistrationFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_types: ["RegistrationType"],
    #     filters: [
    #       {
    #         name: "RegistrationTypeFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registration_type_definitions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_type_definitions: [ # required
    #       {
    #         registration_type: "RegistrationType", # required
    #         supported_associations: [
    #           {
    #             resource_type: "String", # required
    #             iso_country_code: "IsoCountryCode",
    #             association_behavior: "RegistrationAssociationBehavior", # required
    #             disassociation_behavior: "RegistrationDisassociationBehavior", # required
    #           }
    #         ],
    #         display_hints: { # required
    #           title: "String", # required
    #           short_description: "String",
    #           long_description: "String",
    #           documentation_title: "String",
    #           documentation_link: "String"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistrationTypeDefinitionsResult]
    def describe_registration_type_definitions(params = {}, options = {})
      request = build_request(:describe_registration_type_definitions, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified registration version.</p>
    # @param [Hash, Types::DescribeRegistrationVersionsRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @option params [Array<Integer>] :version_numbers
    #   <p>An array of registration version numbers.</p>
    # @option params [Array<Types::RegistrationVersionFilter>] :filters
    #   <p>An array of RegistrationVersionFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     version_numbers: [1],
    #     filters: [
    #       {
    #         name: "RegistrationVersionFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registration_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     registration_versions: [ # required
    #       {
    #         version_number: 1, # required
    #         registration_version_status: "RegistrationVersionStatus", # required
    #         registration_version_status_history: { # required
    #           draft_timestamp: Time.now, # required
    #           submitted_timestamp: Time.now,
    #           aws_reviewing_timestamp: Time.now,
    #           reviewing_timestamp: Time.now,
    #           requires_authentication_timestamp: Time.now,
    #           approved_timestamp: Time.now,
    #           discarded_timestamp: Time.now,
    #           denied_timestamp: Time.now,
    #           revoked_timestamp: Time.now,
    #           archived_timestamp: Time.now
    #         },
    #         denied_reasons: [
    #           {
    #             reason: "String", # required
    #             short_description: "String", # required
    #             long_description: "String",
    #             documentation_title: "String",
    #             documentation_link: "String"
    #           }
    #         ],
    #         feedback: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistrationVersionsResult]
    def describe_registration_versions(params = {}, options = {})
      request = build_request(:describe_registration_versions, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified registrations.</p>
    # @param [Hash, Types::DescribeRegistrationsRequest] params
    # @option params [Array<String>] :registration_ids
    #   <p>An array of unique identifiers for each registration.</p>
    # @option params [Array<Types::RegistrationFilter>] :filters
    #   <p>An array of RegistrationFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_ids: ["RegistrationIdOrArn"],
    #     filters: [
    #       {
    #         name: "RegistrationFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_registrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registrations: [ # required
    #       {
    #         registration_arn: "String", # required
    #         registration_id: "String", # required
    #         registration_type: "RegistrationType", # required
    #         registration_status: "RegistrationStatus", # required
    #         current_version_number: 1, # required
    #         approved_version_number: 1,
    #         latest_denied_version_number: 1,
    #         additional_attributes: {
    #           "String" => "String"
    #         },
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeRegistrationsResult]
    def describe_registrations(params = {}, options = {})
      request = build_request(:describe_registrations, params)
      request.send_request(options)
    end

    # <p>Describes the specified SenderIds or all SenderIds associated with your Amazon Web Services account.</p> <p>If you specify SenderIds, the output includes information for only the specified SenderIds. If you specify filters, the output includes information for only those SenderIds that meet the filter criteria. If you don't specify SenderIds or filters, the output includes information for all SenderIds.</p> <p>f you specify a sender ID that isn't valid, an error is returned.</p>
    # @param [Hash, Types::DescribeSenderIdsRequest] params
    # @option params [Array<Types::SenderIdAndCountry>] :sender_ids
    #   <p>An array of SenderIdAndCountry objects to search for.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Array<Types::SenderIdFilter>] :filters
    #   <p>An array of SenderIdFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @option params [String] :owner
    #   <p>Use <code>SELF</code> to filter the list of Sender Ids to ones your account owns or use <code>SHARED</code> to filter on Sender Ids shared with your account. The <code>Owner</code> and <code>SenderIds</code> parameters can't be used at the same time. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sender_ids: [
    #       {
    #         sender_id: "SenderIdOrArn", # required
    #         iso_country_code: "IsoCountryCode", # required
    #       }
    #     ],
    #     filters: [
    #       {
    #         name: "SenderIdFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1,
    #     owner: "Owner"
    #   }
    #   options = {}
    #   response = client.describe_sender_ids(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sender_ids: [
    #       {
    #         sender_id_arn: "String", # required
    #         sender_id: "SenderId", # required
    #         iso_country_code: "IsoCountryCode", # required
    #         message_types: ["MessageType"], # required
    #         monthly_leasing_price: "String", # required
    #         deletion_protection_enabled: false, # required
    #         registered: false, # required
    #         registration_id: "String",
    #         messaging_limits: {
    #           rate_limits: {
    #             "String" => 1
    #           },
    #           daily_message_caps: {
    #             "String" => 1
    #           }
    #         },
    #         pricing_tier: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSenderIdsResult]
    def describe_sender_ids(params = {}, options = {})
      request = build_request(:describe_sender_ids, params)
      request.send_request(options)
    end

    # <p>Describes the current monthly spend limits for sending voice and text messages.</p> <p>When you establish an Amazon Web Services account, the account has initial monthly spend limit in a given Region. For more information on increasing your monthly spend limit, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/awssupport-spend-threshold.html"> Requesting increases to your monthly SMS, MMS, or Voice spending quota </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::DescribeSpendLimitsRequest] params
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_spend_limits(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     spend_limits: [
    #       {
    #         name: "SpendLimitName", # required
    #         enforced_limit: 1, # required
    #         max_limit: 1, # required
    #         overridden: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeSpendLimitsResult]
    def describe_spend_limits(params = {}, options = {})
      request = build_request(:describe_spend_limits, params)
      request.send_request(options)
    end

    # <p>Retrieves the specified verified destination numbers.</p>
    # @param [Hash, Types::DescribeVerifiedDestinationNumbersRequest] params
    # @option params [Array<String>] :verified_destination_number_ids
    #   <p>An array of VerifiedDestinationNumberid to retrieve.</p>
    # @option params [Array<String>] :destination_phone_numbers
    #   <p>An array of verified destination phone number, in E.164 format.</p>
    # @option params [Array<Types::VerifiedDestinationNumberFilter>] :filters
    #   <p>An array of VerifiedDestinationNumberFilter objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     verified_destination_number_ids: ["VerifiedDestinationNumberIdOrArn"],
    #     destination_phone_numbers: ["PhoneNumber"],
    #     filters: [
    #       {
    #         name: "VerifiedDestinationNumberFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.describe_verified_destination_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verified_destination_numbers: [ # required
    #       {
    #         verified_destination_number_arn: "String", # required
    #         verified_destination_number_id: "String", # required
    #         destination_phone_number: "PhoneNumber", # required
    #         status: "VerificationStatus", # required
    #         rcs_agent_id: "String",
    #         created_timestamp: Time.now, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::DescribeVerifiedDestinationNumbersResult]
    def describe_verified_destination_numbers(params = {}, options = {})
      request = build_request(:describe_verified_destination_numbers, params)
      request.send_request(options)
    end

    # <p>Removes the specified origination identity from an existing pool.</p> <p>If the origination identity isn't associated with the specified pool, an error is returned.</p>
    # @param [Hash, Types::DisassociateOriginationIdentityRequest] params
    # @option params [String] :pool_id
    #   <p>The unique identifier for the pool to disassociate with the origination identity. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> find the values for PhoneNumberId and PhoneNumberArn, or use <a>DescribeSenderIds</a> to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. This field is optional and is not required for origination identity types that are not country-specific, such as RCS agents.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "PoolIdOrArn", # required
    #     origination_identity: "PhoneOrSenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode",
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.disassociate_origination_identity(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "String",
    #     pool_id: "String",
    #     origination_identity_arn: "String",
    #     origination_identity: "String",
    #     iso_country_code: "IsoCountryCode"
    #   }
    # @return [Types::DisassociateOriginationIdentityResult]
    def disassociate_origination_identity(params = {}, options = {})
      request = build_request(:disassociate_origination_identity, params)
      request.send_request(options)
    end

    # <p>Disassociate a protect configuration from a configuration set.</p>
    # @param [Hash, Types::DisassociateProtectConfigurationRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the ConfigurationSet.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #   }
    #   options = {}
    #   response = client.disassociate_protect_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String", # required
    #     configuration_set_name: "ConfigurationSetName", # required
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #   }
    # @return [Types::DisassociateProtectConfigurationResult]
    def disassociate_protect_configuration(params = {}, options = {})
      request = build_request(:disassociate_protect_configuration, params)
      request.send_request(options)
    end

    # <p>Discard the current version of the registration.</p>
    # @param [Hash, Types::DiscardRegistrationVersionRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.discard_registration_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     version_number: 1, # required
    #     registration_version_status: "RegistrationVersionStatus", # required
    #     registration_version_status_history: { # required
    #       draft_timestamp: Time.now, # required
    #       submitted_timestamp: Time.now,
    #       aws_reviewing_timestamp: Time.now,
    #       reviewing_timestamp: Time.now,
    #       requires_authentication_timestamp: Time.now,
    #       approved_timestamp: Time.now,
    #       discarded_timestamp: Time.now,
    #       denied_timestamp: Time.now,
    #       revoked_timestamp: Time.now,
    #       archived_timestamp: Time.now
    #     }
    #   }
    # @return [Types::DiscardRegistrationVersionResult]
    def discard_registration_version(params = {}, options = {})
      request = build_request(:discard_registration_version, params)
      request.send_request(options)
    end

    # <p>Retrieve the CountryRuleSet for the specified NumberCapability from a protect configuration.</p>
    # @param [Hash, Types::GetProtectConfigurationCountryRuleSetRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [String] :number_capability
    #   <p>The capability type to return the CountryRuleSet for. Valid values are <code>SMS</code>, <code>VOICE</code>, or <code>MMS</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     number_capability: "NumberCapability", # required
    #   }
    #   options = {}
    #   response = client.get_protect_configuration_country_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     number_capability: "NumberCapability", # required
    #     country_rule_set: { # required
    #       "IsoCountryCode" => {
    #         protect_status: "ProtectStatus", # required
    #       }
    #     }
    #   }
    # @return [Types::GetProtectConfigurationCountryRuleSetResult]
    def get_protect_configuration_country_rule_set(params = {}, options = {})
      request = build_request(:get_protect_configuration_country_rule_set, params)
      request.send_request(options)
    end

    # <p>Retrieves the JSON text of the resource-based policy document attached to the End User Messaging SMS resource. A shared resource can be a Pool, Opt-out list, Sender Id, or Phone number.</p>
    # @param [Hash, Types::GetResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource attached to the resource-based policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.get_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "AmazonResourceName",
    #     policy: "ResourcePolicy",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::GetResourcePolicyResult]
    def get_resource_policy(params = {}, options = {})
      request = build_request(:get_resource_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of phone numbers that are available to request, based on the country, capabilities, and number type that you specify. You can optionally provide a number preference to return only numbers that match a specific digit pattern.</p> <p>If no numbers match your search, this operation returns an empty list rather than an error. This operation currently supports only <code>TEN_DLC</code> number types in the <code>US</code>.</p>
    # @param [Hash, Types::ListAvailablePhoneNumbersRequest] params
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region in which to search for available phone numbers. This operation currently supports only <code>US</code>.</p>
    # @option params [Array<String>] :number_capabilities
    #   <p>The capabilities to filter by, such as SMS. Only phone numbers that support all of the specified capabilities are returned.</p>
    # @option params [String] :number_type
    #   <p>The type of phone number to search for.</p>
    # @option params [String] :registration_id
    #   <p>The registration associated with the request. A registration is required for regulated number types. You can specify either:</p> <ul> <li> <p>The unique identifier of the registration.</p> </li> <li> <p>The Amazon Resource Name (ARN) of the registration.</p> </li> </ul>
    # @option params [Array<Types::NumberPreferenceItem>] :number_preference
    #   <p>An optional selection preference used to return only phone numbers that match a specific digit pattern, such as numbers that start with, end with, or contain a particular sequence. You can specify at most one preference. Number preferences apply only to <code>TEN_DLC</code> numbers in the <code>US</code>.</p>
    # @option params [String] :next_token
    #   <p>The token returned from a previous request to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per page. If you don't specify a value, the default is 10.</p>
    # @example ListAvailablePhoneNumbers
    #   # Search for available TEN_DLC phone numbers in the US that start with a specific area code.
    #   params = {
    #     iso_country_code: "US",
    #     number_capabilities: [
    #       "SMS"
    #     ],
    #     number_type: "TEN_DLC",
    #     registration_id: "reg-1234567890abcdef0",
    #     number_preference: [
    #       {
    #         preference_type: [
    #           "StartsWith"
    #         ],
    #         filter: [
    #           "+1206"
    #         ]
    #       }
    #     ],
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_available_phone_numbers(params, options)
    #   response.to_h #=>
    #   {
    #     available_phone_numbers: [
    #       "+12065550100",
    #       "+12065550142",
    #       "+12065550187"
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     iso_country_code: "IsoCountryCode", # required
    #     number_capabilities: ["NumberCapability"], # required
    #     number_type: "SearchableNumberType", # required
    #     registration_id: "RegistrationIdOrArn",
    #     number_preference: [
    #       {
    #         preference_type: ["PreferenceType"], # required
    #         filter: ["NumberFilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_available_phone_numbers(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     available_phone_numbers: ["PhoneNumber"], # required
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListAvailablePhoneNumbersResult]
    def list_available_phone_numbers(params = {}, options = {})
      request = build_request(:list_available_phone_numbers, params)
      request.send_request(options)
    end

    # <p>Lists countries that support notify messaging. You can optionally filter by channel, use case, or tier.</p>
    # @param [Hash, Types::ListNotifyCountriesRequest] params
    # @option params [Array<String>] :channels
    #   <p>An array of channels to filter the results by.</p>
    # @option params [Array<String>] :use_cases
    #   <p>An array of use cases to filter the results by.</p>
    # @option params [String] :tier
    #   <p>The tier to filter the results by.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example ListNotifyCountries
    #   # List countries that support notify messaging over SMS.
    #   params = {
    #     channels: [
    #       "SMS"
    #     ],
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.list_notify_countries(params, options)
    #   response.to_h #=>
    #   {
    #     notify_countries: [
    #       {
    #         iso_country_code: "US",
    #         country_name: "United States",
    #         supported_channels: [
    #           "SMS",
    #           "VOICE"
    #         ],
    #         supported_use_cases: [
    #           "CODE_VERIFICATION"
    #         ],
    #         supported_tiers: [
    #           "BASIC",
    #           "ADVANCED"
    #         ],
    #         customer_owned_identity_required: false
    #       },
    #       {
    #         iso_country_code: "CA",
    #         country_name: "Canada",
    #         supported_channels: [
    #           "SMS"
    #         ],
    #         supported_use_cases: [
    #           "CODE_VERIFICATION"
    #         ],
    #         supported_tiers: [
    #           "BASIC"
    #         ],
    #         customer_owned_identity_required: false
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     channels: ["NumberCapability"],
    #     use_cases: ["NotifyConfigurationUseCase"],
    #     tier: "NotifyConfigurationTier",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_notify_countries(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_countries: [
    #       {
    #         iso_country_code: "IsoCountryCode", # required
    #         country_name: "String", # required
    #         supported_channels: ["NumberCapability"], # required
    #         supported_use_cases: ["NotifyConfigurationUseCase"], # required
    #         supported_tiers: ["NotifyConfigurationTier"], # required
    #         customer_owned_identity_required: false, # required
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListNotifyCountriesResult]
    def list_notify_countries(params = {}, options = {})
      request = build_request(:list_notify_countries, params)
      request.send_request(options)
    end

    # <p>Lists all associated origination identities in your pool.</p> <p>If you specify filters, the output includes information for only those origination identities that meet the filter criteria.</p>
    # @param [Hash, Types::ListPoolOriginationIdentitiesRequest] params
    # @option params [String] :pool_id
    #   <p>The unique identifier for the pool. This value can be either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Array<Types::PoolOriginationIdentitiesFilter>] :filters
    #   <p>An array of PoolOriginationIdentitiesFilter objects to filter the results..</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "PoolIdOrArn", # required
    #     filters: [
    #       {
    #         name: "PoolOriginationIdentitiesFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pool_origination_identities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "String",
    #     pool_id: "String",
    #     origination_identities: [
    #       {
    #         origination_identity_arn: "String", # required
    #         origination_identity: "String", # required
    #         iso_country_code: "IsoCountryCode", # required
    #         number_capabilities: ["NumberCapability"], # required
    #         phone_number: "PhoneNumber"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListPoolOriginationIdentitiesResult]
    def list_pool_origination_identities(params = {}, options = {})
      request = build_request(:list_pool_origination_identities, params)
      request.send_request(options)
    end

    # <p>Retrieve all of the protect configuration rule set number overrides that match the filters.</p>
    # @param [Hash, Types::ListProtectConfigurationRuleSetNumberOverridesRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [Array<Types::ProtectConfigurationRuleSetNumberOverrideFilterItem>] :filters
    #   <p>An array of ProtectConfigurationRuleSetNumberOverrideFilterItem objects to filter the results.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     filters: [
    #       {
    #         name: "ProtectConfigurationRuleSetNumberOverrideFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_protect_configuration_rule_set_number_overrides(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     rule_set_number_overrides: [
    #       {
    #         destination_phone_number: "PhoneNumber", # required
    #         created_timestamp: Time.now, # required
    #         action: "ProtectConfigurationRuleOverrideAction", # required
    #         iso_country_code: "IsoCountryCode",
    #         expiration_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListProtectConfigurationRuleSetNumberOverridesResult]
    def list_protect_configuration_rule_set_number_overrides(params = {}, options = {})
      request = build_request(:list_protect_configuration_rule_set_number_overrides, params)
      request.send_request(options)
    end

    # <p>Retrieve all of the origination identities that are associated with a registration.</p>
    # @param [Hash, Types::ListRegistrationAssociationsRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @option params [Array<Types::RegistrationAssociationFilter>] :filters
    #   <p>An array of RegistrationAssociationFilter to apply to the results that are returned.</p>
    # @option params [String] :next_token
    #   <p>The token to be used for the next set of paginated results. You don't need to supply a value for this field in the initial request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return per each request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     filters: [
    #       {
    #         name: "RegistrationAssociationFilterName", # required
    #         values: ["FilterValue"], # required
    #       }
    #     ],
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_registration_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     registration_type: "RegistrationType", # required
    #     registration_associations: [ # required
    #       {
    #         resource_arn: "String", # required
    #         resource_id: "String", # required
    #         resource_type: "String", # required
    #         iso_country_code: "IsoCountryCode",
    #         phone_number: "PhoneNumber"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::ListRegistrationAssociationsResult]
    def list_registration_associations(params = {}, options = {})
      request = build_request(:list_registration_associations, params)
      request.send_request(options)
    end

    # <p>List all tags associated with a resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to query for.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "AmazonResourceName",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Creates or updates a keyword configuration on an origination phone number or pool.</p> <p> A keyword is a word that you can search for on a particular phone number or pool. It is also a specific word or phrase that an end user can send to your number to elicit a response, such as an informational message or a special offer. When your number receives a message that begins with a keyword, End User Messaging SMS responds with a customizable message.</p> <p>If you specify a keyword that isn't valid, an error is returned.</p>
    # @param [Hash, Types::PutKeywordRequest] params
    # @option params [String] :origination_identity
    #   <p>The origination identity to use such as a PhoneNumberId, PhoneNumberArn, SenderId or SenderIdArn. You can use <a>DescribePhoneNumbers</a> get the values for PhoneNumberId and PhoneNumberArn while <a>DescribeSenderIds</a> can be used to get the values for SenderId and SenderIdArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :keyword
    #   <p>The new keyword to add.</p>
    # @option params [String] :keyword_message
    #   <p>The message associated with the keyword.</p>
    # @option params [String] :keyword_action
    #   <p>The action to perform for the new keyword when it is received.</p> <ul> <li> <p>AUTOMATIC_RESPONSE: A message is sent to the recipient.</p> </li> <li> <p>OPT_OUT: Keeps the recipient from receiving future messages.</p> </li> <li> <p>OPT_IN: The recipient wants to receive future messages.</p> </li> </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     origination_identity: "PhoneOrPoolIdOrArn", # required
    #     keyword: "Keyword", # required
    #     keyword_message: "KeywordMessage", # required
    #     keyword_action: "KeywordAction"
    #   }
    #   options = {}
    #   response = client.put_keyword(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     origination_identity_arn: "String",
    #     origination_identity: "String",
    #     keyword: "Keyword",
    #     keyword_message: "KeywordMessage",
    #     keyword_action: "KeywordAction"
    #   }
    # @return [Types::PutKeywordResult]
    def put_keyword(params = {}, options = {})
      request = build_request(:put_keyword, params)
      request.send_request(options)
    end

    # <p>Set the MessageFeedbackStatus as <code>RECEIVED</code> or <code>FAILED</code> for the passed in MessageId. </p> <p>If you use message feedback then you must update message feedback record. When you receive a signal that a user has received the message you must use <code>PutMessageFeedback</code> to set the message feedback record as <code>RECEIVED</code>; Otherwise, an hour after the message feedback record is set to <code>FAILED</code>.</p>
    # @param [Hash, Types::PutMessageFeedbackRequest] params
    # @option params [String] :message_id
    #   <p>The unique identifier for the message.</p>
    # @option params [String] :message_feedback_status
    #   <p>Set the message feedback to be either <code>RECEIVED</code> or <code>FAILED</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     message_id: "MessageId", # required
    #     message_feedback_status: "MessageFeedbackStatus", # required
    #   }
    #   options = {}
    #   response = client.put_message_feedback(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "MessageId", # required
    #     message_feedback_status: "MessageFeedbackStatus", # required
    #   }
    # @return [Types::PutMessageFeedbackResult]
    def put_message_feedback(params = {}, options = {})
      request = build_request(:put_message_feedback, params)
      request.send_request(options)
    end

    # <p>Creates an opted out destination phone number in the opt-out list.</p> <p>If the destination phone number isn't valid or if the specified opt-out list doesn't exist, an error is returned.</p>
    # @param [Hash, Types::PutOptedOutNumberRequest] params
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutListName or OptOutListArn to add the phone number to.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :opted_out_number
    #   <p>The phone number to add to the OptOutList in E.164 format.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     opt_out_list_name: "OptOutListNameOrArn", # required
    #     opted_out_number: "PhoneNumber", # required
    #   }
    #   options = {}
    #   response = client.put_opted_out_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     opt_out_list_arn: "String",
    #     opt_out_list_name: "OptOutListName",
    #     opted_out_number: "PhoneNumber",
    #     opted_out_timestamp: Time.now,
    #     end_user_opted_out: false
    #   }
    # @return [Types::PutOptedOutNumberResult]
    def put_opted_out_number(params = {}, options = {})
      request = build_request(:put_opted_out_number, params)
      request.send_request(options)
    end

    # <p>Create or update a phone number rule override and associate it with a protect configuration.</p>
    # @param [Hash, Types::PutProtectConfigurationRuleSetNumberOverrideRequest] params
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @option params [String] :action
    #   <p>The action for the rule to either block or allow messages to the destination phone number.</p>
    # @option params [Time] :expiration_timestamp
    #   <p>The time the rule will expire at. If <code>ExpirationTimestamp</code> is not set then the rule does not expire.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     action: "ProtectConfigurationRuleOverrideAction", # required
    #     expiration_timestamp: Time.now
    #   }
    #   options = {}
    #   response = client.put_protect_configuration_rule_set_number_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     created_timestamp: Time.now, # required
    #     action: "ProtectConfigurationRuleOverrideAction", # required
    #     iso_country_code: "IsoCountryCode",
    #     expiration_timestamp: Time.now
    #   }
    # @return [Types::PutProtectConfigurationRuleSetNumberOverrideResult]
    def put_protect_configuration_rule_set_number_override(params = {}, options = {})
      request = build_request(:put_protect_configuration_rule_set_number_override, params)
      request.send_request(options)
    end

    # <p>Creates or updates a field value for a registration.</p>
    # @param [Hash, Types::PutRegistrationFieldValueRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @option params [String] :field_path
    #   <p>The path to the registration form field. You can use <a>DescribeRegistrationFieldDefinitions</a> for a list of <b>FieldPaths</b>.</p>
    # @option params [Array<String>] :select_choices
    #   <p>An array of values for the form field.</p>
    # @option params [String] :text_value
    #   <p>The text data for a free form field.</p>
    # @option params [String] :registration_attachment_id
    #   <p>The unique identifier for the registration attachment.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     field_path: "FieldPath", # required
    #     select_choices: ["SelectChoice"],
    #     text_value: "TextValue",
    #     registration_attachment_id: "RegistrationAttachmentIdOrArn"
    #   }
    #   options = {}
    #   response = client.put_registration_field_value(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     version_number: 1, # required
    #     field_path: "FieldPath", # required
    #     select_choices: ["SelectChoice"],
    #     text_value: "TextValue",
    #     registration_attachment_id: "String"
    #   }
    # @return [Types::PutRegistrationFieldValueResult]
    def put_registration_field_value(params = {}, options = {})
      request = build_request(:put_registration_field_value, params)
      request.send_request(options)
    end

    # <p>Attaches a resource-based policy to a End User Messaging SMS resource(phone number, sender Id, phone poll, or opt-out list) that is used for sharing the resource. A shared resource can be a Pool, Opt-out list, Sender Id, or Phone number. For more information about resource-based policies, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/shared-resources.html">Working with shared resources</a> in the <i>End User Messaging SMS User Guide</i>. </p>
    # @param [Hash, Types::PutResourcePolicyRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the End User Messaging SMS resource to attach the resource-based policy to.</p>
    # @option params [String] :policy
    #   <p>The JSON formatted resource-based policy to attach.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     policy: "ResourcePolicy", # required
    #   }
    #   options = {}
    #   response = client.put_resource_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     resource_arn: "AmazonResourceName",
    #     policy: "ResourcePolicy",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::PutResourcePolicyResult]
    def put_resource_policy(params = {}, options = {})
      request = build_request(:put_resource_policy, params)
      request.send_request(options)
    end

    # <p>Releases an existing origination phone number in your account. Once released, a phone number is no longer available for sending messages.</p> <p>If the origination phone number has deletion protection enabled or is associated with a pool, an error is returned.</p>
    # @param [Hash, Types::ReleasePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The PhoneNumberId or PhoneNumberArn of the phone number to release. You can use <a>DescribePhoneNumbers</a> to get the values for PhoneNumberId and PhoneNumberArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.release_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_arn: "String",
    #     phone_number_id: "String",
    #     phone_number: "PhoneNumber",
    #     status: "NumberStatus",
    #     iso_country_code: "IsoCountryCode",
    #     message_type: "MessageType",
    #     number_capabilities: ["NumberCapability"],
    #     number_type: "NumberType",
    #     monthly_leasing_price: "String",
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListName",
    #     registration_id: "String",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::ReleasePhoneNumberResult]
    def release_phone_number(params = {}, options = {})
      request = build_request(:release_phone_number, params)
      request.send_request(options)
    end

    # <p>Releases an existing sender ID in your account.</p>
    # @param [Hash, Types::ReleaseSenderIdRequest] params
    # @option params [String] :sender_id
    #   <p>The sender ID to release.</p>
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sender_id: "SenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode", # required
    #   }
    #   options = {}
    #   response = client.release_sender_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sender_id_arn: "String", # required
    #     sender_id: "SenderId", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     message_types: ["MessageType"], # required
    #     monthly_leasing_price: "String", # required
    #     registered: false, # required
    #     registration_id: "String"
    #   }
    # @return [Types::ReleaseSenderIdResult]
    def release_sender_id(params = {}, options = {})
      request = build_request(:release_sender_id, params)
      request.send_request(options)
    end

    # <p>Request an origination phone number for use in your account. For more information on phone number request see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-request.html">Request a phone number</a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::RequestPhoneNumberRequest] params
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region. </p>
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are <code>TRANSACTIONAL</code> for messages that are critical or time-sensitive and <code>PROMOTIONAL</code> for messages that aren't critical or time-sensitive.</p>
    # @option params [Array<String>] :number_capabilities
    #   <p>Indicates if the phone number will be used for text messages, voice messages, or both. </p>
    # @option params [String] :number_type
    #   <p>The type of phone number to request.</p> <p>When you request a <code>SIMULATOR</code> phone number, you must set <b>MessageType</b> as <code>TRANSACTIONAL</code>. </p>
    # @option params [String] :opt_out_list_name
    #   <p>The name of the OptOutList to associate with the phone number. You can use the OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :pool_id
    #   <p>The pool to associated with the phone number. You can use the PoolId or PoolArn. </p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :registration_id
    #   <p>Use this field to attach your phone number for an external registration process.</p>
    # @option params [Array<Types::NumberPreferenceItem>] :number_preference
    #   <p>An optional selection preference used to request a specific phone number, such as a number that starts with, ends with, or contains a particular digit pattern. You can specify at most one preference. Number preferences apply only to <code>TEN_DLC</code> requests in the <code>US</code>.</p>
    # @option params [Boolean] :international_sending_enabled
    #   <p>By default this is set to false. When set to true the international sending of phone number is Enabled. </p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) to associate with the requested phone number. </p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     iso_country_code: "IsoCountryCode", # required
    #     message_type: "MessageType", # required
    #     number_capabilities: ["NumberCapability"], # required
    #     number_type: "RequestableNumberType", # required
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     pool_id: "PoolIdOrArn",
    #     registration_id: "RegistrationIdOrArn",
    #     number_preference: [
    #       {
    #         preference_type: ["PreferenceType"], # required
    #         filter: ["NumberFilterValue"], # required
    #       }
    #     ],
    #     international_sending_enabled: false,
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.request_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_arn: "String",
    #     phone_number_id: "String",
    #     phone_number: "PhoneNumber",
    #     status: "NumberStatus",
    #     iso_country_code: "IsoCountryCode",
    #     message_type: "MessageType",
    #     number_capabilities: ["NumberCapability"],
    #     number_type: "RequestableNumberType",
    #     monthly_leasing_price: "String",
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListName",
    #     international_sending_enabled: false,
    #     deletion_protection_enabled: false,
    #     pool_id: "String",
    #     registration_id: "String",
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_timestamp: Time.now
    #   }
    # @return [Types::RequestPhoneNumberResult]
    def request_phone_number(params = {}, options = {})
      request = build_request(:request_phone_number, params)
      request.send_request(options)
    end

    # <p>Request a new sender ID that doesn't require registration. </p>
    # @param [Hash, Types::RequestSenderIdRequest] params
    # @option params [String] :sender_id
    #   <p>The sender ID string to request. The sender ID can be 1-11 alphanumeric characters including letters (A-Z, a-z), numbers (0-9), or hyphens (-). The sender ID must contain at least one letter and cannot start or end with a hyphen.</p>
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    # @option params [Array<String>] :message_types
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of tags (key and value pairs) to associate with the sender ID.</p>
    # @option params [String] :client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request. If you don't specify a client token, a randomly generated token is used for the request to ensure idempotency.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sender_id: "SenderId", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     message_types: ["MessageType"],
    #     deletion_protection_enabled: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     client_token: "ClientToken"
    #   }
    #   options = {}
    #   response = client.request_sender_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sender_id_arn: "String", # required
    #     sender_id: "SenderId", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     message_types: ["MessageType"], # required
    #     monthly_leasing_price: "String", # required
    #     deletion_protection_enabled: false, # required
    #     registered: false, # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::RequestSenderIdResult]
    def request_sender_id(params = {}, options = {})
      request = build_request(:request_sender_id, params)
      request.send_request(options)
    end

    # <p>Before you can send test messages to a verified destination phone number you need to opt-in the verified destination phone number. Creates a new text message with a verification code and send it to a verified destination phone number. Once you have the verification code use <a>VerifyDestinationNumber</a> to opt-in the verified destination phone number to receive messages.</p>
    # @param [Hash, Types::SendDestinationNumberVerificationCodeRequest] params
    # @option params [String] :verified_destination_number_id
    #   <p>The unique identifier for the verified destination phone number.</p>
    # @option params [String] :verification_channel
    #   <p>Choose to send the verification code as an SMS or voice message.</p>
    # @option params [String] :language_code
    #   <p>Choose the language to use for the message.</p>
    # @option params [String] :origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    # @option params [Hash<String, String>] :destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     verified_destination_number_id: "VerifiedDestinationNumberIdOrArn", # required
    #     verification_channel: "VerificationChannel", # required
    #     language_code: "LanguageCode",
    #     origination_identity: "VerificationMessageOriginationIdentity",
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     destination_country_parameters: {
    #       "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #     }
    #   }
    #   options = {}
    #   response = client.send_destination_number_verification_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String", # required
    #   }
    # @return [Types::SendDestinationNumberVerificationCodeResult]
    def send_destination_number_verification_code(params = {}, options = {})
      request = build_request(:send_destination_number_verification_code, params)
      request.send_request(options)
    end

    # <p>Creates a new multimedia message (MMS) and sends it to a recipient's phone number. </p>
    # @param [Hash, Types::SendMediaMessageRequest] params
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @option params [String] :origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :message_body
    #   <p>The text body of the message.</p>
    # @option params [Array<String>] :media_urls
    #   <p>An array of URLs to each media file to send. </p> <p>The media files have to be stored in an S3 bucket. Supported media file formats are listed in <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/mms-limitations-character.html">MMS file types, size and character limits</a>. For more information on creating an S3 bucket and managing objects, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html">Creating a bucket</a>, <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/upload-objects.html">Uploading objects</a> in the <i>Amazon S3 User Guide</i>, and <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/send-mms-message.html#send-mms-message-bucket">Setting up an Amazon S3 bucket for MMS files</a> in the <i>Amazon Web Services End User Messaging SMS User Guide</i>.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [String] :max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each MMS message.</p>
    # @option params [Integer] :time_to_live
    #   <p>How long the media message is valid for. By default this is 72 hours.</p>
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier of the protect configuration to use.</p>
    # @option params [Boolean] :message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_phone_number: "PhoneNumber", # required
    #     origination_identity: "MediaMessageOriginationIdentity", # required
    #     message_body: "TextMessageBody",
    #     media_urls: ["MediaUrlValue"],
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     max_price: "MaxPrice",
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     dry_run: false,
    #     protect_configuration_id: "ProtectConfigurationIdOrArn",
    #     message_feedback_enabled: false
    #   }
    #   options = {}
    #   response = client.send_media_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String"
    #   }
    # @return [Types::SendMediaMessageResult]
    def send_media_message(params = {}, options = {})
      request = build_request(:send_media_message, params)
      request.send_request(options)
    end

    # <p>Sends a templated text message through a notify configuration to a recipient's phone number.</p>
    # @param [Hash, Types::SendNotifyTextMessageRequest] params
    # @option params [String] :notify_configuration_id
    #   <p>The unique identifier of the notify configuration to use for sending the message. This can be either the NotifyConfigurationId or NotifyConfigurationArn.</p>
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @option params [String] :template_id
    #   <p>The unique identifier of the template to use for the message.</p>
    # @option params [Hash<String, String>] :template_variables
    #   <p>A map of template variable names and their values. All variable values are passed as strings regardless of the declared variable type. For example, pass <code>INTEGER</code> values as <code>"42"</code> and <code>BOOLEAN</code> values as <code>"true"</code> or <code>"false"</code>.</p>
    # @option params [Integer] :time_to_live
    #   <p>How long the text message is valid for, in seconds. By default this is 72 hours.</p>
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    # @option params [Boolean] :message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    # @example SendNotifyTextMessage
    #   # Send an OTP verification code via SMS using a notify configuration.
    #   params = {
    #     notify_configuration_id: "nc-1234567890abcdef0",
    #     destination_phone_number: "+12065550100",
    #     template_variables: {
    #       "code" => "123456",
    #       "expiry" => "10"
    #     }
    #   }
    #   options = {}
    #   response = client.send_notify_text_message(params, options)
    #   response.to_h #=>
    #   {
    #     message_id: "msg-1234567890abcdef0",
    #     template_id: "nt-1234567890abcdef0",
    #     resolved_message_body: "Your verification code is 123456. It expires in 10 minutes."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_configuration_id: "NotifyConfigurationIdOrArn", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     template_id: "NotifyTemplateId",
    #     template_variables: { # required
    #       "TemplateVariableName" => "TemplateVariableValue"
    #     },
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     dry_run: false,
    #     message_feedback_enabled: false
    #   }
    #   options = {}
    #   response = client.send_notify_text_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String",
    #     template_id: "NotifyTemplateId",
    #     resolved_message_body: "String"
    #   }
    # @return [Types::SendNotifyTextMessageResult]
    def send_notify_text_message(params = {}, options = {})
      request = build_request(:send_notify_text_message, params)
      request.send_request(options)
    end

    # <p>Sends a templated voice message through a notify configuration to a recipient's phone number.</p>
    # @param [Hash, Types::SendNotifyVoiceMessageRequest] params
    # @option params [String] :notify_configuration_id
    #   <p>The unique identifier of the notify configuration to use for sending the message. This can be either the NotifyConfigurationId or NotifyConfigurationArn.</p>
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @option params [String] :template_id
    #   <p>The unique identifier of the template to use for the message.</p>
    # @option params [Hash<String, String>] :template_variables
    #   <p>A map of template variable names and their values. All variable values are passed as strings regardless of the declared variable type. For example, pass <code>INTEGER</code> values as <code>"42"</code> and <code>BOOLEAN</code> values as <code>"true"</code> or <code>"false"</code>.</p>
    # @option params [String] :voice_id
    #   <p>The voice ID to use for the voice message.</p>
    # @option params [Integer] :time_to_live
    #   <p>How long the voice message is valid for, in seconds. By default this is 72 hours.</p>
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    # @option params [Boolean] :message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    # @example SendNotifyVoiceMessage
    #   # Send an OTP verification code via voice call using a notify configuration.
    #   params = {
    #     notify_configuration_id: "nc-1234567890abcdef0",
    #     destination_phone_number: "+12065550100",
    #     template_variables: {
    #       "code" => "123456",
    #       "expiry" => "10"
    #     },
    #     voice_id: "JOANNA"
    #   }
    #   options = {}
    #   response = client.send_notify_voice_message(params, options)
    #   response.to_h #=>
    #   {
    #     message_id: "msg-0987654321fedcba0",
    #     template_id: "nt-1234567890abcdef0",
    #     resolved_message_body: "Your verification code is 123456. It expires in 10 minutes."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_configuration_id: "NotifyConfigurationIdOrArn", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     template_id: "NotifyTemplateId",
    #     template_variables: { # required
    #       "TemplateVariableName" => "TemplateVariableValue"
    #     },
    #     voice_id: "VoiceId",
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     dry_run: false,
    #     message_feedback_enabled: false
    #   }
    #   options = {}
    #   response = client.send_notify_voice_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String",
    #     template_id: "NotifyTemplateId",
    #     resolved_message_body: "String"
    #   }
    # @return [Types::SendNotifyVoiceMessageResult]
    def send_notify_voice_message(params = {}, options = {})
      request = build_request(:send_notify_voice_message, params)
      request.send_request(options)
    end

    # <p>Creates a new RCS message and sends it to a recipient's phone number. RCS messages support rich content including text, files, rich cards, and carousels with interactive suggested actions.</p>
    # @param [Hash, Types::SendRcsMessageRequest] params
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @option params [String] :origination_identity
    #   <p>The origination identity of the message. This can be either the RcsAgentId, RcsAgentArn, PoolId, or PoolArn.</p>
    # @option params [Types::RcsMessageContent] :rcs_message_content
    #   <p>The content of the RCS message. Contains the message content (text, file, rich card, or carousel) and optional message-level suggested actions.</p>
    # @option params [Integer] :time_to_live
    #   <p>The duration in seconds that the RCS message is valid for delivery. If the message cannot be delivered within this duration, it is considered expired. Valid values are 1 to 172800 (48 hours). If a FallbackConfiguration is provided, the fallback is triggered when the duration expires without delivery confirmation.</p>
    # @option params [String] :message_traffic_type
    #   <p>The traffic type of the RCS message. Valid values are AUTHENTICATION, TRANSACTION, PROMOTION, SERVICE_REQUEST, and ACKNOWLEDGEMENT. This field is reserved for future use.</p>
    # @option params [Types::RcsFallbackConfiguration] :fallback_configuration
    #   <p>Configuration for SMS or MMS fallback when RCS delivery fails. If provided, the service sends a fallback message via the specified channel when the RCS message fails or the TimeToLive expires.</p>
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier of the protect configuration to use.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [String] :max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each RCS message.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    # @option params [Boolean] :message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_phone_number: "PhoneNumber", # required
    #     origination_identity: "RcsMessageOriginationIdentity", # required
    #     rcs_message_content: {
    #       content: { # required
    #         # One of:
    #         text_message: {
    #           body: "RcsTextBody", # required
    #         },
    #         file_message: {
    #           file_url: "RcsMediaUrl", # required
    #           thumbnail_url: "RcsMediaUrl"
    #         },
    #         rich_card: {
    #           card_orientation: "String", # required
    #           thumbnail_image_alignment: "String",
    #           card_content: { # required
    #             title: "RcsCardTitle",
    #             description: "RcsCardDescription",
    #             media: {
    #               file_url: "RcsMediaUrl", # required
    #               thumbnail_url: "RcsMediaUrl",
    #               height: "String"
    #             },
    #             suggestions: [{
    #               # One of:
    #               reply: {
    #                 text: "RcsSuggestedActionText", # required
    #                 postback_data: "RcsPostbackData", # required
    #               },
    #               open_url: {
    #                 text: "RcsSuggestedActionText", # required
    #                 postback_data: "RcsPostbackData", # required
    #                 url: "RcsOpenUrlValue", # required
    #                 application: "String",
    #                 webview_view_mode: "String"
    #               },
    #               dial_phone: {
    #                 text: "RcsSuggestedActionText", # required
    #                 postback_data: "RcsPostbackData", # required
    #                 phone_number: "PhoneNumber", # required
    #               },
    #               show_location: {
    #                 text: "RcsSuggestedActionText", # required
    #                 postback_data: "RcsPostbackData", # required
    #                 latitude: 1.0, # required
    #                 longitude: 1.0, # required
    #                 label: "RcsLocationLabel"
    #               },
    #               request_location: {
    #                 text: "RcsSuggestedActionText", # required
    #                 postback_data: "RcsPostbackData", # required
    #               },
    #               create_calendar_event: {
    #                 text: "RcsSuggestedActionText", # required
    #                 postback_data: "RcsPostbackData", # required
    #                 title: "RcsCalendarEventTitle", # required
    #                 start_time: Time.now, # required
    #                 end_time: Time.now, # required
    #                 description: "RcsCalendarEventDescription"
    #               }
    #             }]
    #           }
    #         },
    #         carousel: {
    #           card_width: "String", # required
    #           card_contents: [ # required
    #             {
    #               title: "RcsCardTitle",
    #               description: "RcsCardDescription",
    #               media: {
    #                 file_url: "RcsMediaUrl", # required
    #                 thumbnail_url: "RcsMediaUrl",
    #                 height: "String"
    #               },
    #               suggestions: [{
    #                 # One of:
    #                 reply: {
    #                   text: "RcsSuggestedActionText", # required
    #                   postback_data: "RcsPostbackData", # required
    #                 },
    #                 open_url: {
    #                   text: "RcsSuggestedActionText", # required
    #                   postback_data: "RcsPostbackData", # required
    #                   url: "RcsOpenUrlValue", # required
    #                   application: "String",
    #                   webview_view_mode: "String"
    #                 },
    #                 dial_phone: {
    #                   text: "RcsSuggestedActionText", # required
    #                   postback_data: "RcsPostbackData", # required
    #                   phone_number: "PhoneNumber", # required
    #                 },
    #                 show_location: {
    #                   text: "RcsSuggestedActionText", # required
    #                   postback_data: "RcsPostbackData", # required
    #                   latitude: 1.0, # required
    #                   longitude: 1.0, # required
    #                   label: "RcsLocationLabel"
    #                 },
    #                 request_location: {
    #                   text: "RcsSuggestedActionText", # required
    #                   postback_data: "RcsPostbackData", # required
    #                 },
    #                 create_calendar_event: {
    #                   text: "RcsSuggestedActionText", # required
    #                   postback_data: "RcsPostbackData", # required
    #                   title: "RcsCalendarEventTitle", # required
    #                   start_time: Time.now, # required
    #                   end_time: Time.now, # required
    #                   description: "RcsCalendarEventDescription"
    #                 }
    #               }]
    #             }
    #           ]
    #         }
    #       },
    #       suggestions: [{
    #         # One of:
    #         reply: {
    #           text: "RcsSuggestedActionText", # required
    #           postback_data: "RcsPostbackData", # required
    #         },
    #         open_url: {
    #           text: "RcsSuggestedActionText", # required
    #           postback_data: "RcsPostbackData", # required
    #           url: "RcsOpenUrlValue", # required
    #           application: "String",
    #           webview_view_mode: "String"
    #         },
    #         dial_phone: {
    #           text: "RcsSuggestedActionText", # required
    #           postback_data: "RcsPostbackData", # required
    #           phone_number: "PhoneNumber", # required
    #         },
    #         show_location: {
    #           text: "RcsSuggestedActionText", # required
    #           postback_data: "RcsPostbackData", # required
    #           latitude: 1.0, # required
    #           longitude: 1.0, # required
    #           label: "RcsLocationLabel"
    #         },
    #         request_location: {
    #           text: "RcsSuggestedActionText", # required
    #           postback_data: "RcsPostbackData", # required
    #         },
    #         create_calendar_event: {
    #           text: "RcsSuggestedActionText", # required
    #           postback_data: "RcsPostbackData", # required
    #           title: "RcsCalendarEventTitle", # required
    #           start_time: Time.now, # required
    #           end_time: Time.now, # required
    #           description: "RcsCalendarEventDescription"
    #         }
    #       }]
    #     },
    #     time_to_live: 1,
    #     message_traffic_type: "RcsMessageTrafficType",
    #     fallback_configuration: {
    #       channel: "RcsFallbackChannel", # required
    #       message_body: "RcsFallbackMessageBody",
    #       media_urls: ["MediaUrlValue"],
    #       origination_identity: "RcsFallbackOriginationIdentity"
    #     },
    #     protect_configuration_id: "ProtectConfigurationIdOrArn",
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     max_price: "MaxPrice",
    #     dry_run: false,
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     message_feedback_enabled: false
    #   }
    #   options = {}
    #   response = client.send_rcs_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String"
    #   }
    # @return [Types::SendRcsMessageResult]
    def send_rcs_message(params = {}, options = {})
      request = build_request(:send_rcs_message, params)
      request.send_request(options)
    end

    # <p>Creates a new text message and sends it to a recipient's phone number. SendTextMessage only sends an SMS message to one recipient each time it is invoked.</p> <p>SMS throughput limits are measured in Message Parts per Second (MPS). Your MPS limit depends on the destination country of your messages, as well as the type of phone number (origination number) that you use to send the message. For more information about MPS, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html">Message Parts per Second (MPS) limits</a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::SendTextMessageRequest] params
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @option params [String] :origination_identity
    #   <p>The origination identity of the message. This can be either the PhoneNumber, PhoneNumberId, PhoneNumberArn, RcsAgentId, RcsAgentArn, SenderId, SenderIdArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :message_body
    #   <p>The body of the text message.</p>
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    # @option params [String] :keyword
    #   <p>When you register a short code in the US, you must specify a program name. If you don’t have a US short code, omit this attribute.</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [String] :max_price
    #   <p>The maximum amount that you want to spend, in US dollars, per each text message. If the calculated amount to send the text message is greater than <code>MaxPrice</code>, the message is not sent and an error is returned.</p>
    # @option params [Integer] :time_to_live
    #   <p>How long the text message is valid for, in seconds. By default this is 72 hours. If the messages isn't handed off before the TTL expires we stop attempting to hand off the message and return <code>TTL_EXPIRED</code> event.</p>
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    # @option params [Hash<String, String>] :destination_country_parameters
    #   <p>This field is used for any country-specific registration requirements. Currently, this setting is only used when you send messages to recipients in India using a sender ID. For more information see <a href="https://docs.aws.amazon.com/pinpoint/latest/userguide/channels-sms-senderid-india.html">Special requirements for sending SMS messages to recipients in India</a>. </p> <ul> <li> <p> <code>IN_ENTITY_ID</code> The entity ID or Principal Entity (PE) ID that you received after completing the sender ID registration process.</p> </li> <li> <p> <code>IN_TEMPLATE_ID</code> The template ID that you received after completing the sender ID registration process.</p> <important> <p>Make sure that the Template ID that you specify matches your message template exactly. If your message doesn't match the template that you provided during the registration process, the mobile carriers might reject your message.</p> </important> </li> </ul>
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient. You are not charged for using <code>DryRun</code>.</p> <p>The Message Parts per Second (MPS) limit when using <code>DryRun</code> is five. If your origination identity has a lower MPS limit then the lower MPS limit is used. For more information about MPS limits, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/sms-limitations-mps.html">Message Parts per Second (MPS) limits</a> in the <i>End User Messaging SMS User Guide</i>..</p>
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [Boolean] :message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_phone_number: "PhoneNumber", # required
    #     origination_identity: "TextMessageOriginationIdentity",
    #     message_body: "TextMessageBody",
    #     message_type: "MessageType",
    #     keyword: "Keyword",
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     max_price: "MaxPrice",
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     destination_country_parameters: {
    #       "DestinationCountryParameterKey" => "DestinationCountryParameterValue"
    #     },
    #     dry_run: false,
    #     protect_configuration_id: "ProtectConfigurationIdOrArn",
    #     message_feedback_enabled: false
    #   }
    #   options = {}
    #   response = client.send_text_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String"
    #   }
    # @return [Types::SendTextMessageResult]
    def send_text_message(params = {}, options = {})
      request = build_request(:send_text_message, params)
      request.send_request(options)
    end

    # <p>Allows you to send a request that sends a voice message. This operation uses <a href="http://aws.amazon.com/polly/">Amazon Polly</a> to convert a text script into a voice message.</p>
    # @param [Hash, Types::SendVoiceMessageRequest] params
    # @option params [String] :destination_phone_number
    #   <p>The destination phone number in E.164 format.</p>
    # @option params [String] :origination_identity
    #   <p>The origination identity to use for the voice call. This can be the PhoneNumber, PhoneNumberId, PhoneNumberArn, PoolId, or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [String] :message_body
    #   <p>The text to convert to a voice message.</p>
    # @option params [String] :message_body_text_type
    #   <p>Specifies if the MessageBody field contains text or <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">speech synthesis markup language (SSML)</a>.</p> <ul> <li> <p>TEXT: This is the default value. When used the maximum character limit is 3000.</p> </li> <li> <p>SSML: When used the maximum character limit is 6000 including SSML tagging.</p> </li> </ul>
    # @option params [String] :voice_id
    #   <p>The voice for the <a href="https://docs.aws.amazon.com/polly/latest/dg/what-is.html">Amazon Polly</a> service to use. By default this is set to "MATTHEW".</p>
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [String] :max_price_per_minute
    #   <p>The maximum amount to spend per voice message, in US dollars.</p>
    # @option params [Integer] :time_to_live
    #   <p>How long the voice message is valid for. By default this is 72 hours.</p>
    # @option params [Hash<String, String>] :context
    #   <p>You can specify custom data in this field. If you do, that data is logged to the event destination.</p>
    # @option params [Boolean] :dry_run
    #   <p>When set to true, the message is checked and validated, but isn't sent to the end recipient.</p>
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [Boolean] :message_feedback_enabled
    #   <p>Set to true to enable message feedback for the message. When a user receives the message you need to update the message status using <a>PutMessageFeedback</a>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     destination_phone_number: "PhoneNumber", # required
    #     origination_identity: "VoiceMessageOriginationIdentity", # required
    #     message_body: "VoiceMessageBody",
    #     message_body_text_type: "VoiceMessageBodyTextType",
    #     voice_id: "VoiceId",
    #     configuration_set_name: "ConfigurationSetNameOrArn",
    #     max_price_per_minute: "MaxPrice",
    #     time_to_live: 1,
    #     context: {
    #       "ContextKey" => "ContextValue"
    #     },
    #     dry_run: false,
    #     protect_configuration_id: "ProtectConfigurationIdOrArn",
    #     message_feedback_enabled: false
    #   }
    #   options = {}
    #   response = client.send_voice_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     message_id: "String"
    #   }
    # @return [Types::SendVoiceMessageResult]
    def send_voice_message(params = {}, options = {})
      request = build_request(:send_voice_message, params)
      request.send_request(options)
    end

    # <p>Set a protect configuration as your account default. You can only have one account default protect configuration at a time. The current account default protect configuration is replaced with the provided protect configuration.</p>
    # @param [Hash, Types::SetAccountDefaultProtectConfigurationRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #   }
    #   options = {}
    #   response = client.set_account_default_protect_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     default_protect_configuration_arn: "ProtectConfigurationArn", # required
    #     default_protect_configuration_id: "ProtectConfigurationId", # required
    #   }
    # @return [Types::SetAccountDefaultProtectConfigurationResult]
    def set_account_default_protect_configuration(params = {}, options = {})
      request = build_request(:set_account_default_protect_configuration, params)
      request.send_request(options)
    end

    # <p>Sets a configuration set's default for message feedback. </p>
    # @param [Hash, Types::SetDefaultMessageFeedbackEnabledRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The name of the configuration set to use. This can be either the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [Boolean] :message_feedback_enabled
    #   <p>Set to true to enable message feedback.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     message_feedback_enabled: false, # required
    #   }
    #   options = {}
    #   response = client.set_default_message_feedback_enabled(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     message_feedback_enabled: false
    #   }
    # @return [Types::SetDefaultMessageFeedbackEnabledResult]
    def set_default_message_feedback_enabled(params = {}, options = {})
      request = build_request(:set_default_message_feedback_enabled, params)
      request.send_request(options)
    end

    # <p>Sets the default message type on a configuration set.</p> <p>Choose the category of SMS messages that you plan to send from this account. If you send account-related messages or time-sensitive messages such as one-time passcodes, choose <b>Transactional</b>. If you plan to send messages that contain marketing material or other promotional content, choose <b>Promotional</b>. This setting applies to your entire Amazon Web Services account.</p>
    # @param [Hash, Types::SetDefaultMessageTypeRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to update with a new default message type. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>
    # @option params [String] :message_type
    #   <p>The type of message. Valid values are TRANSACTIONAL for messages that are critical or time-sensitive and PROMOTIONAL for messages that aren't critical or time-sensitive.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     message_type: "MessageType", # required
    #   }
    #   options = {}
    #   response = client.set_default_message_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     message_type: "MessageType"
    #   }
    # @return [Types::SetDefaultMessageTypeResult]
    def set_default_message_type(params = {}, options = {})
      request = build_request(:set_default_message_type, params)
      request.send_request(options)
    end

    # <p>Sets default sender ID on a configuration set.</p> <p>When sending a text message to a destination country that supports sender IDs, the default sender ID on the configuration set specified will be used if no dedicated origination phone numbers or registered sender IDs are available in your account.</p>
    # @param [Hash, Types::SetDefaultSenderIdRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to updated with a new default SenderId. This field can be the ConsigurationSetName or ConfigurationSetArn.</p>
    # @option params [String] :sender_id
    #   <p>The current sender ID for the configuration set. When sending a text message to a destination country which supports SenderIds, the default sender ID on the configuration set specified on <a>SendTextMessage</a> will be used if no dedicated origination phone numbers or registered SenderIds are available in your account, instead of a generic sender ID, such as 'NOTICE'.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     sender_id: "SenderId", # required
    #   }
    #   options = {}
    #   response = client.set_default_sender_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     sender_id: "SenderId"
    #   }
    # @return [Types::SetDefaultSenderIdResult]
    def set_default_sender_id(params = {}, options = {})
      request = build_request(:set_default_sender_id, params)
      request.send_request(options)
    end

    # <p>Sets an account level monthly spend limit override for sending MMS messages. The requested spend limit must be less than or equal to the <code>MaxLimit</code>, which is set by Amazon Web Services. </p>
    # @param [Hash, Types::SetMediaMessageSpendLimitOverrideRequest] params
    # @option params [Integer] :monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monthly_limit: 1, # required
    #   }
    #   options = {}
    #   response = client.set_media_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::SetMediaMessageSpendLimitOverrideResult]
    def set_media_message_spend_limit_override(params = {}, options = {})
      request = build_request(:set_media_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Sets an account level monthly spend limit override for sending notify messages. The requested spend limit must be less than or equal to the <code>MaxLimit</code>, which is set by Amazon Web Services. </p>
    # @param [Hash, Types::SetNotifyMessageSpendLimitOverrideRequest] params
    # @option params [Integer] :monthly_limit
    #   <p>The new monthly limit to enforce on notify messages.</p>
    # @example SetNotifyMessageSpendLimitOverride
    #   # Set a monthly spend limit override for notify messages.
    #   params = {
    #     monthly_limit: 1000
    #   }
    #   options = {}
    #   response = client.set_notify_message_spend_limit_override(params, options)
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1000
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     monthly_limit: 1, # required
    #   }
    #   options = {}
    #   response = client.set_notify_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::SetNotifyMessageSpendLimitOverrideResult]
    def set_notify_message_spend_limit_override(params = {}, options = {})
      request = build_request(:set_notify_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Sets an account level monthly spend limit override for sending RCS messages. The requested spend limit must be less than or equal to the <code>MaxLimit</code>, which is set by Amazon Web Services.</p>
    # @param [Hash, Types::SetRcsMessageSpendLimitOverrideRequest] params
    # @option params [Integer] :monthly_limit
    #   <p>The new monthly limit to enforce on RCS message spending.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monthly_limit: 1, # required
    #   }
    #   options = {}
    #   response = client.set_rcs_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::SetRcsMessageSpendLimitOverrideResult]
    def set_rcs_message_spend_limit_override(params = {}, options = {})
      request = build_request(:set_rcs_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Sets an account level monthly spend limit override for sending text messages. The requested spend limit must be less than or equal to the <code>MaxLimit</code>, which is set by Amazon Web Services. </p>
    # @param [Hash, Types::SetTextMessageSpendLimitOverrideRequest] params
    # @option params [Integer] :monthly_limit
    #   <p>The new monthly limit to enforce on text messages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monthly_limit: 1, # required
    #   }
    #   options = {}
    #   response = client.set_text_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::SetTextMessageSpendLimitOverrideResult]
    def set_text_message_spend_limit_override(params = {}, options = {})
      request = build_request(:set_text_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Sets an account level monthly spend limit override for sending voice messages. The requested spend limit must be less than or equal to the <code>MaxLimit</code>, which is set by Amazon Web Services. </p>
    # @param [Hash, Types::SetVoiceMessageSpendLimitOverrideRequest] params
    # @option params [Integer] :monthly_limit
    #   <p>The new monthly limit to enforce on voice messages.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     monthly_limit: 1, # required
    #   }
    #   options = {}
    #   response = client.set_voice_message_spend_limit_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     monthly_limit: 1
    #   }
    # @return [Types::SetVoiceMessageSpendLimitOverrideResult]
    def set_voice_message_spend_limit_override(params = {}, options = {})
      request = build_request(:set_voice_message_spend_limit_override, params)
      request.send_request(options)
    end

    # <p>Submit the specified registration for review and approval.</p>
    # @param [Hash, Types::SubmitRegistrationVersionRequest] params
    # @option params [String] :registration_id
    #   <p>The unique identifier for the registration.</p>
    # @option params [Boolean] :aws_review
    #   <p>Set to true to request AWS review of the registration. When enabled, AWS will perform additional validation and review of the registration submission before processing.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     registration_id: "RegistrationIdOrArn", # required
    #     aws_review: false
    #   }
    #   options = {}
    #   response = client.submit_registration_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     registration_arn: "String", # required
    #     registration_id: "String", # required
    #     version_number: 1, # required
    #     registration_version_status: "RegistrationVersionStatus", # required
    #     registration_version_status_history: { # required
    #       draft_timestamp: Time.now, # required
    #       submitted_timestamp: Time.now,
    #       aws_reviewing_timestamp: Time.now,
    #       reviewing_timestamp: Time.now,
    #       requires_authentication_timestamp: Time.now,
    #       approved_timestamp: Time.now,
    #       discarded_timestamp: Time.now,
    #       denied_timestamp: Time.now,
    #       revoked_timestamp: Time.now,
    #       archived_timestamp: Time.now
    #     },
    #     aws_review: false, # required
    #   }
    # @return [Types::SubmitRegistrationVersionResult]
    def submit_registration_version(params = {}, options = {})
      request = build_request(:submit_registration_version, params)
      request.send_request(options)
    end

    # <p>Adds or overwrites only the specified tags for the specified resource. When you specify an existing tag key, the value is overwritten with the new value. Each tag consists of a key and an optional value. Tag keys must be unique per resource. For more information about tags, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html">Tags </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>An array of key and value pair tags that are associated with the resource.</p>
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
    # @return [Types::TagResourceResult]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes the association of the specified tags from a resource. For more information on tags see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-tags.html">Tags </a> in the <i>End User Messaging SMS User Guide</i>.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>An array of tag key values to unassociate with the resource.</p>
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
    # @return [Types::UntagResourceResult]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates an existing event destination in a configuration set. You can update the IAM role ARN for CloudWatch Logs and Firehose. You can also enable or disable the event destination.</p> <p>You may want to update an event destination to change its matching event types or updating the destination resource ARN. You can't change an event destination's type between CloudWatch Logs, Firehose, and Amazon SNS.</p>
    # @param [Hash, Types::UpdateEventDestinationRequest] params
    # @option params [String] :configuration_set_name
    #   <p>The configuration set to update with the new event destination. Valid values for this can be the ConfigurationSetName or ConfigurationSetArn.</p>
    # @option params [String] :event_destination_name
    #   <p>The name to use for the event destination.</p>
    # @option params [Boolean] :enabled
    #   <p>When set to true logging is enabled.</p>
    # @option params [Array<String>] :matching_event_types
    #   <p>An array of event types that determine which events to log.</p> <note> <p>The <code>TEXT_SENT</code> event type is not supported.</p> </note>
    # @option params [Types::CloudWatchLogsDestination] :cloud_watch_logs_destination
    #   <p>An object that contains information about an event destination that sends data to CloudWatch Logs.</p>
    # @option params [Types::KinesisFirehoseDestination] :kinesis_firehose_destination
    #   <p>An object that contains information about an event destination for logging to Firehose.</p>
    # @option params [Types::SnsDestination] :sns_destination
    #   <p>An object that contains information about an event destination that sends data to Amazon SNS.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     configuration_set_name: "ConfigurationSetNameOrArn", # required
    #     event_destination_name: "EventDestinationName", # required
    #     enabled: false,
    #     matching_event_types: ["EventType"],
    #     cloud_watch_logs_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       log_group_arn: "LogGroupArn", # required
    #     },
    #     kinesis_firehose_destination: {
    #       iam_role_arn: "IamRoleArn", # required
    #       delivery_stream_arn: "DeliveryStreamArn", # required
    #     },
    #     sns_destination: {
    #       topic_arn: "SnsTopicArn", # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_event_destination(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     configuration_set_arn: "String",
    #     configuration_set_name: "ConfigurationSetName",
    #     event_destination: {
    #       event_destination_name: "EventDestinationName", # required
    #       enabled: false, # required
    #       matching_event_types: ["EventType"], # required
    #       cloud_watch_logs_destination: {
    #         iam_role_arn: "IamRoleArn", # required
    #         log_group_arn: "LogGroupArn", # required
    #       },
    #       kinesis_firehose_destination: {
    #         iam_role_arn: "IamRoleArn", # required
    #         delivery_stream_arn: "DeliveryStreamArn", # required
    #       },
    #       sns_destination: {
    #         topic_arn: "SnsTopicArn", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateEventDestinationResult]
    def update_event_destination(params = {}, options = {})
      request = build_request(:update_event_destination, params)
      request.send_request(options)
    end

    # <p>Updates an existing notify configuration. You can update the default template, pool association, enabled channels, enabled countries, and deletion protection settings.</p>
    # @param [Hash, Types::UpdateNotifyConfigurationRequest] params
    # @option params [String] :notify_configuration_id
    #   <p>The identifier of the notify configuration to update. The NotifyConfigurationId can be found using the <a>DescribeNotifyConfigurations</a> operation.</p>
    # @option params [String] :default_template_id
    #   <p>The default template identifier to associate with the notify configuration. If specified, this template is used when sending messages without an explicit template identifier. Pass the special value <code>UNSET_DEFAULT_TEMPLATE</code> to clear the current default template from the notify configuration.</p>
    # @option params [String] :pool_id
    #   <p>The pool identifier or Amazon Resource Name (ARN) to associate with the notify configuration. Pass the special value <code>UNSET_DEFAULT_POOL_FOR_NOTIFY</code> to clear the current default pool from the notify configuration.</p>
    # @option params [Array<String>] :enabled_countries
    #   <p>An array of two-character ISO country codes, in ISO 3166-1 alpha-2 format, that are enabled for the notify configuration.</p>
    # @option params [Array<String>] :enabled_channels
    #   <p>An array of channels to enable for the notify configuration. Supported values include <code>SMS</code> and <code>VOICE</code>.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>When set to true the notify configuration can't be deleted.</p>
    # @example UpdateNotifyConfiguration
    #   # Update a notify configuration to add voice channel and additional countries.
    #   params = {
    #     notify_configuration_id: "nc-1234567890abcdef0",
    #     enabled_channels: [
    #       "SMS",
    #       "VOICE"
    #     ],
    #     enabled_countries: [
    #       "US",
    #       "CA",
    #       "GB"
    #     ],
    #     deletion_protection_enabled: true
    #   }
    #   options = {}
    #   response = client.update_notify_configuration(params, options)
    #   response.to_h #=>
    #   {
    #     notify_configuration_arn: "arn:aws:sms-voice:us-east-1:111122223333:notify-configuration/nc-1234567890abcdef0",
    #     notify_configuration_id: "nc-1234567890abcdef0",
    #     display_name: "MyOTPConfig",
    #     use_case: "CODE_VERIFICATION",
    #     enabled_channels: [
    #       "SMS",
    #       "VOICE"
    #     ],
    #     enabled_countries: [
    #       "US",
    #       "CA",
    #       "GB"
    #     ],
    #     tier: "BASIC",
    #     tier_upgrade_status: "BASIC",
    #     status: "ACTIVE",
    #     deletion_protection_enabled: true,
    #     created_timestamp: Time.parse(1704067200)
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     notify_configuration_id: "NotifyConfigurationIdOrArn", # required
    #     default_template_id: "NotifyTemplateId",
    #     pool_id: "NotifyPoolIdOrUnset",
    #     enabled_countries: ["IsoCountryCode"],
    #     enabled_channels: ["NumberCapability"],
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_notify_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     notify_configuration_arn: "NotifyConfigurationArn", # required
    #     notify_configuration_id: "NotifyConfigurationId", # required
    #     display_name: "NotifyConfigurationDisplayName", # required
    #     use_case: "NotifyConfigurationUseCase", # required
    #     default_template_id: "NotifyTemplateId",
    #     pool_id: "String",
    #     enabled_countries: ["IsoCountryCode"],
    #     enabled_channels: ["NumberCapability"], # required
    #     tier: "NotifyConfigurationTier", # required
    #     tier_upgrade_status: "TierUpgradeStatus", # required
    #     status: "NotifyConfigurationStatus", # required
    #     rejection_reason: "String",
    #     deletion_protection_enabled: false, # required
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::UpdateNotifyConfigurationResult]
    def update_notify_configuration(params = {}, options = {})
      request = build_request(:update_notify_configuration, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing origination phone number. You can update the opt-out list, enable or disable two-way messaging, change the TwoWayChannelArn, enable or disable self-managed opt-outs, and enable or disable deletion protection.</p> <p>If the origination phone number is associated with a pool, an error is returned.</p>
    # @param [Hash, Types::UpdatePhoneNumberRequest] params
    # @option params [String] :phone_number_id
    #   <p>The unique identifier of the phone number. Valid values for this field can be either the PhoneNumberId or PhoneNumberArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Boolean] :two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    # @option params [String] :two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    # @option params [String] :two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    # @option params [Boolean] :self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutList to add the phone number to. You can use either the opt out list name or the opt out list ARN.</p>
    # @option params [Boolean] :international_sending_enabled
    #   <p>By default this is set to false. When set to true the international sending of phone number is Enabled. </p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the phone number can't be deleted. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     phone_number_id: "PhoneNumberIdOrArn", # required
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     international_sending_enabled: false,
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_phone_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     phone_number_arn: "String",
    #     phone_number_id: "String",
    #     phone_number: "PhoneNumber",
    #     status: "NumberStatus",
    #     iso_country_code: "IsoCountryCode",
    #     message_type: "MessageType",
    #     number_capabilities: ["NumberCapability"],
    #     number_type: "NumberType",
    #     monthly_leasing_price: "String",
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListName",
    #     international_sending_enabled: false,
    #     deletion_protection_enabled: false,
    #     registration_id: "String",
    #     created_timestamp: Time.now
    #   }
    # @return [Types::UpdatePhoneNumberResult]
    def update_phone_number(params = {}, options = {})
      request = build_request(:update_phone_number, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing pool. You can update the opt-out list, enable or disable two-way messaging, change the <code>TwoWayChannelArn</code>, enable or disable self-managed opt-outs, enable or disable deletion protection, and enable or disable shared routes.</p>
    # @param [Hash, Types::UpdatePoolRequest] params
    # @option params [String] :pool_id
    #   <p>The unique identifier of the pool to update. Valid values are either the PoolId or PoolArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Boolean] :two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    # @option params [String] :two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    # @option params [String] :two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    # @option params [Boolean] :self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to false and an end recipient sends a message that begins with HELP or STOP to one of your dedicated numbers, End User Messaging SMS automatically replies with a customizable message and adds the end recipient to the OptOutList. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutList to associate with the pool. Valid values are either OptOutListName or OptOutListArn.</p> <important> <p>If you are using a shared End User Messaging SMS resource then you must use the full Amazon Resource Name(ARN).</p> </important>
    # @option params [Boolean] :shared_routes_enabled
    #   <p>Indicates whether shared routes are enabled for the pool.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>When set to true the pool can't be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     pool_id: "PoolIdOrArn", # required
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     shared_routes_enabled: false,
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_pool(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     pool_arn: "String",
    #     pool_id: "String",
    #     status: "PoolStatus",
    #     message_type: "MessageType",
    #     two_way_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     self_managed_opt_outs_enabled: false,
    #     opt_out_list_name: "OptOutListName",
    #     shared_routes_enabled: false,
    #     deletion_protection_enabled: false,
    #     created_timestamp: Time.now
    #   }
    # @return [Types::UpdatePoolResult]
    def update_pool(params = {}, options = {})
      request = build_request(:update_pool, params)
      request.send_request(options)
    end

    # <p>Update the setting for an existing protect configuration.</p>
    # @param [Hash, Types::UpdateProtectConfigurationRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>When set to true deletion protection is enabled. By default this is set to false. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_protect_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     created_timestamp: Time.now, # required
    #     account_default: false, # required
    #     deletion_protection_enabled: false, # required
    #   }
    # @return [Types::UpdateProtectConfigurationResult]
    def update_protect_configuration(params = {}, options = {})
      request = build_request(:update_protect_configuration, params)
      request.send_request(options)
    end

    # <p>Update a country rule set to <code>ALLOW</code>, <code>BLOCK</code>, <code>MONITOR</code>, or <code>FILTER</code> messages to be sent to the specified destination counties. You can update one or multiple countries at a time. The updates are only applied to the specified NumberCapability type.</p>
    # @param [Hash, Types::UpdateProtectConfigurationCountryRuleSetRequest] params
    # @option params [String] :protect_configuration_id
    #   <p>The unique identifier for the protect configuration.</p>
    # @option params [String] :number_capability
    #   <p>The number capability to apply the CountryRuleSetUpdates updates to.</p>
    # @option params [Hash<String, Types::ProtectConfigurationCountryRuleSetInformation>] :country_rule_set_updates
    #   <p>A map of ProtectConfigurationCountryRuleSetInformation objects that contain the details for the requested NumberCapability. The Key is the two-letter ISO country code. For a list of supported ISO country codes, see <a href="https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html">Supported countries and regions (SMS channel)</a> in the End User Messaging SMS User Guide.</p> <p>For example, to set the United States as allowed and Canada as blocked, the <code>CountryRuleSetUpdates</code> would be formatted as: <code>"CountryRuleSetUpdates": { "US" : { "ProtectStatus": "ALLOW" } "CA" : { "ProtectStatus": "BLOCK" } }</code> </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     protect_configuration_id: "ProtectConfigurationIdOrArn", # required
    #     number_capability: "NumberCapability", # required
    #     country_rule_set_updates: { # required
    #       "IsoCountryCode" => {
    #         protect_status: "ProtectStatus", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_protect_configuration_country_rule_set(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     protect_configuration_arn: "ProtectConfigurationArn", # required
    #     protect_configuration_id: "ProtectConfigurationId", # required
    #     number_capability: "NumberCapability", # required
    #     country_rule_set: { # required
    #       "IsoCountryCode" => {
    #         protect_status: "ProtectStatus", # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateProtectConfigurationCountryRuleSetResult]
    def update_protect_configuration_country_rule_set(params = {}, options = {})
      request = build_request(:update_protect_configuration_country_rule_set, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing RCS agent. You can update the opt-out list, deletion protection, two-way messaging settings, and self-managed opt-outs configuration.</p>
    # @param [Hash, Types::UpdateRcsAgentRequest] params
    # @option params [String] :rcs_agent_id
    #   <p>The unique identifier of the RCS agent to update. You can use either the RcsAgentId or RcsAgentArn.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the RCS agent can't be deleted.</p>
    # @option params [String] :opt_out_list_name
    #   <p>The OptOutList to associate with the RCS agent. Valid values are either OptOutListName or OptOutListArn.</p>
    # @option params [Boolean] :self_managed_opt_outs_enabled
    #   <p>By default this is set to false. When set to true you're responsible for responding to HELP and STOP requests. You're also responsible for tracking and honoring opt-out requests.</p>
    # @option params [String] :two_way_channel_arn
    #   <p>The Amazon Resource Name (ARN) of the two way channel.</p>
    # @option params [String] :two_way_channel_role
    #   <p>An optional IAM Role Arn for a service to assume, to be able to post inbound SMS messages.</p>
    # @option params [Boolean] :two_way_enabled
    #   <p>By default this is set to false. When set to true you can receive incoming text messages from your end recipients.</p>
    # @option params [String] :two_way_media_s3_bucket_name
    #   <p>The name of the S3 bucket where inbound RCS media files are stored. Two-way messaging must be enabled on the agent. To remove the media configuration, pass the sentinel value <code>UNSET_RCS_MEDIA_CONFIGURATION</code> for both this field and TwoWayMediaS3Role.</p>
    # @option params [String] :two_way_media_s3_key_prefix
    #   <p>The key prefix used for inbound RCS media objects in the S3 bucket.</p>
    # @option params [String] :two_way_media_s3_role
    #   <p>The ARN of the IAM role used to write inbound RCS media files to the S3 bucket. The role must have <code>s3:PutObject</code> permission on the bucket and a trust policy allowing <code>sms-voice.amazonaws.com</code> to assume it. To remove the media configuration, pass the sentinel value <code>UNSET_RCS_MEDIA_CONFIGURATION</code> for both this field and TwoWayMediaS3BucketName.</p>
    # @option params [Array<String>] :two_way_rcs_events_enabled
    #   <p>The list of RCS event types to enable for two-way messaging. Pass an empty list to disable all event types. The special value <code>ALL</code> enables all current and future event types and must be the sole element if used.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rcs_agent_id: "RcsAgentIdOrArn", # required
    #     deletion_protection_enabled: false,
    #     opt_out_list_name: "OptOutListNameOrArn",
    #     self_managed_opt_outs_enabled: false,
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     two_way_enabled: false,
    #     two_way_media_s3_bucket_name: "TwoWayMediaS3BucketNameOrUnset",
    #     two_way_media_s3_key_prefix: "TwoWayMediaS3KeyPrefix",
    #     two_way_media_s3_role: "IamRoleArnOrUnset",
    #     two_way_rcs_events_enabled: ["RcsEventType"]
    #   }
    #   options = {}
    #   response = client.update_rcs_agent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rcs_agent_arn: "String", # required
    #     rcs_agent_id: "String", # required
    #     status: "RcsAgentStatus", # required
    #     created_timestamp: Time.now, # required
    #     deletion_protection_enabled: false, # required
    #     opt_out_list_name: "OptOutListName",
    #     self_managed_opt_outs_enabled: false, # required
    #     two_way_channel_arn: "TwoWayChannelArn",
    #     two_way_channel_role: "IamRoleArn",
    #     two_way_enabled: false, # required
    #     two_way_media_s3_bucket_name: "TwoWayMediaS3BucketName",
    #     two_way_media_s3_key_prefix: "TwoWayMediaS3KeyPrefix",
    #     two_way_media_s3_role: "IamRoleArn",
    #     two_way_rcs_events_enabled: ["RcsEventType"]
    #   }
    # @return [Types::UpdateRcsAgentResult]
    def update_rcs_agent(params = {}, options = {})
      request = build_request(:update_rcs_agent, params)
      request.send_request(options)
    end

    # <p>Updates the configuration of an existing sender ID.</p>
    # @param [Hash, Types::UpdateSenderIdRequest] params
    # @option params [String] :sender_id
    #   <p>The sender ID to update.</p>
    # @option params [String] :iso_country_code
    #   <p>The two-character code, in ISO 3166-1 alpha-2 format, for the country or region.</p>
    # @option params [Boolean] :deletion_protection_enabled
    #   <p>By default this is set to false. When set to true the sender ID can't be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sender_id: "SenderIdOrArn", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     deletion_protection_enabled: false
    #   }
    #   options = {}
    #   response = client.update_sender_id(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     sender_id_arn: "String", # required
    #     sender_id: "SenderId", # required
    #     iso_country_code: "IsoCountryCode", # required
    #     message_types: ["MessageType"], # required
    #     monthly_leasing_price: "String", # required
    #     deletion_protection_enabled: false, # required
    #     registered: false, # required
    #     registration_id: "String"
    #   }
    # @return [Types::UpdateSenderIdResult]
    def update_sender_id(params = {}, options = {})
      request = build_request(:update_sender_id, params)
      request.send_request(options)
    end

    # <p>Use the verification code that was received by the verified destination phone number to opt-in the verified destination phone number to receive more messages.</p>
    # @param [Hash, Types::VerifyDestinationNumberRequest] params
    # @option params [String] :verified_destination_number_id
    #   <p>The unique identifier for the verififed destination phone number.</p>
    # @option params [String] :verification_code
    #   <p>The verification code that was received by the verified destination phone number.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     verified_destination_number_id: "VerifiedDestinationNumberIdOrArn", # required
    #     verification_code: "VerificationCode", # required
    #   }
    #   options = {}
    #   response = client.verify_destination_number(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     verified_destination_number_arn: "String", # required
    #     verified_destination_number_id: "String", # required
    #     destination_phone_number: "PhoneNumber", # required
    #     status: "VerificationStatus", # required
    #     created_timestamp: Time.now, # required
    #   }
    # @return [Types::VerifyDestinationNumberResult]
    def verify_destination_number(params = {}, options = {})
      request = build_request(:verify_destination_number, params)
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
      context[:gem_name] = 'aws-sdk-pinpointsmsvoicev2'
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
