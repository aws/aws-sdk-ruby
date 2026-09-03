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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ssmcontacts)

module Aws::SSMContacts
  # An API client for Aws::SSMContacts.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::SSMContacts
    @identifier = :ssmcontacts

    add_plugin(::Aws::SSMContacts::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::SSMContacts::EndpointProvider)
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

    # <p>Used to acknowledge an engagement to a contact channel during an incident.</p>
    # @param [Hash, Types::AcceptPageRequest] params
    # @option params [String] :page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a contact channel.</p>
    # @option params [String] :contact_channel_id
    #   <p>The ARN of the contact channel.</p>
    # @option params [String] :accept_type
    #   <p>The type indicates if the page was <code>DELIVERED</code> or <code>READ</code>.</p>
    # @option params [String] :note
    #   <p>Information provided by the user when the user acknowledges the page.</p>
    # @option params [String] :accept_code
    #   <p>A 6-digit code used to acknowledge the page.</p>
    # @option params [String] :accept_code_validation
    #   <p>An optional field that Incident Manager uses to <code>ENFORCE</code>
    #               <code>AcceptCode</code> validation when acknowledging an page. Acknowledgement can occur by
    #            replying to a page, or when entering the AcceptCode in the console. Enforcing AcceptCode
    #            validation causes Incident Manager to verify that the code entered by the user matches the
    #            code sent by Incident Manager with the page.</p>
    #            <p>Incident Manager can also <code>IGNORE</code>
    #               <code>AcceptCode</code> validation. Ignoring <code>AcceptCode</code> validation causes
    #            Incident Manager to accept any value entered for the <code>AcceptCode</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_id: "SsmContactsArn", # required
    #     contact_channel_id: "SsmContactsArn",
    #     accept_type: "DELIVERED" # One of: ["DELIVERED", "READ"], # required
    #     note: "ReceiptInfo",
    #     accept_code: "AcceptCode", # required
    #     accept_code_validation: "IGNORE" # One of: ["IGNORE", "ENFORCE"]
    #   }
    #   options = {}
    #   response = client.accept_page(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::AcceptPageResult]
    def accept_page(params = {}, options = {})
      request = build_request(:accept_page, params)
      request.send_request(options)
    end

    # <p>Activates a contact's contact channel. Incident Manager can't engage a contact until the
    #          contact channel has been activated.</p>
    # @param [Hash, Types::ActivateContactChannelRequest] params
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    # @option params [String] :activation_code
    #   <p>The code sent to the contact channel when it was created in the contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_channel_id: "SsmContactsArn", # required
    #     activation_code: "ActivationCode", # required
    #   }
    #   options = {}
    #   response = client.activate_contact_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::ActivateContactChannelResult]
    def activate_contact_channel(params = {}, options = {})
      request = build_request(:activate_contact_channel, params)
      request.send_request(options)
    end

    # <p>Contacts are either the contacts that Incident Manager engages during an incident or the
    #          escalation plans that Incident Manager uses to engage contacts in phases during an
    #          incident.</p>
    # @param [Hash, Types::CreateContactRequest] params
    # @option params [String] :alias
    #   <p>The short name to quickly identify a contact or escalation plan. The contact alias must
    #            be unique and identifiable.</p>
    # @option params [String] :display_name
    #   <p>The full name of the contact or escalation plan.</p>
    # @option params [String] :type
    #   <p>The type of contact to create.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PERSONAL</code>: A single, individual contact.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ESCALATION</code>: An escalation plan.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONCALL_SCHEDULE</code>: An on-call schedule.</p>
    #               </li>
    #            </ul>
    # @option params [Types::Plan] :plan
    #   <p>A list of stages. A contact has an engagement plan with stages that contact specified
    #            contact channels. An escalation plan uses stages that contact specified contacts.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Adds a tag to the target. You can only tag resources created in the first Region of your
    #            replication set.</p>
    # @option params [String] :idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     alias: "ContactAlias", # required
    #     display_name: "ContactName",
    #     type: "PERSONAL" # One of: ["PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"], # required
    #     plan: { # required
    #       stages: [
    #         {
    #           duration_in_minutes: 1, # required
    #           targets: [ # required
    #             {
    #               channel_target_info: {
    #                 contact_channel_id: "SsmContactsArn", # required
    #                 retry_interval_in_minutes: 1
    #               },
    #               contact_target_info: {
    #                 contact_id: "SsmContactsArn",
    #                 is_essential: false, # required
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       rotation_ids: ["SsmContactsArn"]
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_arn: "SsmContactsArn", # required
    #   }
    # @return [Types::CreateContactResult]
    def create_contact(params = {}, options = {})
      request = build_request(:create_contact, params)
      request.send_request(options)
    end

    # <p>A contact channel is the method that Incident Manager uses to engage your contact.</p>
    # @param [Hash, Types::CreateContactChannelRequest] params
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are adding the contact channel
    #            to.</p>
    # @option params [String] :name
    #   <p>The name of the contact channel.</p>
    # @option params [String] :type
    #   <p>Incident Manager supports three types of contact channels:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SMS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOICE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>EMAIL</code>
    #                  </p>
    #               </li>
    #            </ul>
    # @option params [Types::ContactChannelAddress] :delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel. The format
    #            is dependent on the type of the contact channel. The following are the expected
    #            formats:</p>
    #            <ul>
    #               <li>
    #                  <p>SMS - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>VOICE - '+' followed by the country code and phone number</p>
    #               </li>
    #               <li>
    #                  <p>EMAIL - any standard email format</p>
    #               </li>
    #            </ul>
    # @option params [Boolean] :defer_activation
    #   <p>If you want to activate the channel at a later time, you can choose to defer activation.
    #            Incident Manager can't engage your contact channel until it has been activated.</p>
    # @option params [String] :idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "SsmContactsArn", # required
    #     name: "ChannelName", # required
    #     type: "SMS" # One of: ["SMS", "VOICE", "EMAIL"], # required
    #     delivery_address: { # required
    #       simple_address: "SimpleAddress"
    #     },
    #     defer_activation: false,
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_contact_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_channel_arn: "SsmContactsArn", # required
    #   }
    # @return [Types::CreateContactChannelResult]
    def create_contact_channel(params = {}, options = {})
      request = build_request(:create_contact_channel, params)
      request.send_request(options)
    end

    # <p>Creates a rotation in an on-call schedule.</p>
    # @param [Hash, Types::CreateRotationRequest] params
    # @option params [String] :name
    #   <p>The name of the rotation.</p>
    # @option params [Array<String>] :contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts to add to the rotation.</p>
    #            <note>
    #               <p>Only the <code>PERSONAL</code> contact type is supported. The contact types
    #                  <code>ESCALATION</code> and <code>ONCALL_SCHEDULE</code> are not supported for this
    #               operation. </p>
    #            </note>
    #            <p>The order that you list the contacts in is their shift order in the rotation schedule.
    #            To change the order of the contact's shifts, use the <a>UpdateRotation</a>
    #            operation.</p>
    # @option params [Time] :start_time
    #   <p>The date and time that the rotation goes into effect.</p>
    # @option params [String] :time_zone_id
    #   <p>The time zone to base the rotation’s activity on in Internet Assigned Numbers Authority
    #            (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For more
    #            information, see the <a href="https://www.iana.org/time-zones">Time Zone
    #               Database</a> on the IANA website.</p>
    #            <note>
    #               <p>Designators for time zones that don’t support Daylight Savings Time rules, such as
    #               Pacific Standard Time (PST), are not supported.</p>
    #            </note>
    # @option params [Types::RecurrenceSettings] :recurrence
    #   <p>Information about the rule that specifies when a shift's team members rotate.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Optional metadata to assign to the rotation. Tags enable you to categorize a resource in
    #            different ways, such as by purpose, owner, or environment. For more information, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/tagging.html">Tagging
    #               Incident Manager resources</a> in the <i>Incident Manager User
    #               Guide</i>.</p>
    # @option params [String] :idempotency_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #            details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RotationName", # required
    #     contact_ids: ["SsmContactsArn"], # required
    #     start_time: Time.now,
    #     time_zone_id: "TimeZoneId", # required
    #     recurrence: { # required
    #       monthly_settings: [
    #         {
    #           day_of_month: 1, # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       weekly_settings: [
    #         {
    #           day_of_week: "MON" # One of: ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"], # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       daily_settings: [
    #         {
    #           hour_of_day: 1, # required
    #           minute_of_hour: 1, # required
    #         }
    #       ],
    #       number_of_on_calls: 1, # required
    #       shift_coverages: {
    #         "DayOfWeek" => [
    #           {
    #             start: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #             end: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             }
    #           }
    #         ]
    #       },
    #       recurrence_multiplier: 1, # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ],
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_rotation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotation_arn: "SsmContactsArn", # required
    #   }
    # @return [Types::CreateRotationResult]
    def create_rotation(params = {}, options = {})
      request = build_request(:create_rotation, params)
      request.send_request(options)
    end

    # <p>Creates an override for a rotation in an on-call schedule.</p>
    # @param [Hash, Types::CreateRotationOverrideRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to create an override for.</p>
    # @option params [Array<String>] :new_contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts to replace those in the current on-call
    #            rotation with.</p>
    #            <p>If you want to include any current team members in the override shift, you must include
    #            their ARNs in the new contact ID list.</p>
    # @option params [Time] :start_time
    #   <p>The date and time when the override goes into effect.</p>
    # @option params [Time] :end_time
    #   <p>The date and time when the override ends.</p>
    # @option params [String] :idempotency_token
    #   <p>A token that ensures that the operation is called only once with the specified
    #            details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #     new_contact_ids: ["SsmContactsArn"], # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.create_rotation_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotation_override_id: "Uuid", # required
    #   }
    # @return [Types::CreateRotationOverrideResult]
    def create_rotation_override(params = {}, options = {})
      request = build_request(:create_rotation_override, params)
      request.send_request(options)
    end

    # <p>To no longer receive Incident Manager engagements to a contact channel, you can deactivate
    #          the channel.</p>
    # @param [Hash, Types::DeactivateContactChannelRequest] params
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you're deactivating.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_channel_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.deactivate_contact_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeactivateContactChannelResult]
    def deactivate_contact_channel(params = {}, options = {})
      request = build_request(:deactivate_contact_channel, params)
      request.send_request(options)
    end

    # <p>To remove a contact from Incident Manager, you can delete the contact. However, deleting a
    #          contact does not remove it from escalation plans and related response plans. Deleting an
    #          escalation plan also does not remove it from all related response plans. To modify an
    #          escalation plan, we recommend using the <a>UpdateContact</a> action to specify a
    #          different existing contact.</p>
    # @param [Hash, Types::DeleteContactRequest] params
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact that you're deleting.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.delete_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContactResult]
    def delete_contact(params = {}, options = {})
      request = build_request(:delete_contact, params)
      request.send_request(options)
    end

    # <p>To stop receiving engagements on a contact channel, you can delete the channel from a
    #          contact. Deleting the contact channel does not remove it from the contact's engagement
    #          plan, but the stage that includes the channel will be ignored. If you delete the only
    #          contact channel for a contact, you'll no longer be able to engage that contact during an
    #          incident.</p>
    # @param [Hash, Types::DeleteContactChannelRequest] params
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_channel_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.delete_contact_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteContactChannelResult]
    def delete_contact_channel(params = {}, options = {})
      request = build_request(:delete_contact_channel, params)
      request.send_request(options)
    end

    # <p>Deletes a rotation from the system. If a rotation belongs to more than one on-call
    #          schedule, this operation deletes it from all of them.</p>
    # @param [Hash, Types::DeleteRotationRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.delete_rotation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRotationResult]
    def delete_rotation(params = {}, options = {})
      request = build_request(:delete_rotation, params)
      request.send_request(options)
    end

    # <p>Deletes an existing override for an on-call rotation.</p>
    # @param [Hash, Types::DeleteRotationOverrideRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation that was overridden.</p>
    # @option params [String] :rotation_override_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation override to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #     rotation_override_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.delete_rotation_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DeleteRotationOverrideResult]
    def delete_rotation_override(params = {}, options = {})
      request = build_request(:delete_rotation_override, params)
      request.send_request(options)
    end

    # <p>Incident Manager uses engagements to engage contacts and escalation plans during an incident.
    #          Use this command to describe the engagement that occurred during an incident.</p>
    # @param [Hash, Types::DescribeEngagementRequest] params
    # @option params [String] :engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement you want the details of.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engagement_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.describe_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_arn: "SsmContactsArn", # required
    #     engagement_arn: "SsmContactsArn", # required
    #     sender: "Sender", # required
    #     subject: "Subject", # required
    #     content: "Content", # required
    #     public_subject: "PublicSubject",
    #     public_content: "PublicContent",
    #     incident_id: "IncidentId",
    #     start_time: Time.now,
    #     stop_time: Time.now
    #   }
    # @return [Types::DescribeEngagementResult]
    def describe_engagement(params = {}, options = {})
      request = build_request(:describe_engagement, params)
      request.send_request(options)
    end

    # <p>Lists details of the engagement to a contact channel.</p>
    # @param [Hash, Types::DescribePageRequest] params
    # @option params [String] :page_id
    #   <p>The ID of the engagement to a contact channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.describe_page(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     page_arn: "SsmContactsArn", # required
    #     engagement_arn: "SsmContactsArn", # required
    #     contact_arn: "SsmContactsArn", # required
    #     sender: "Sender", # required
    #     subject: "Subject", # required
    #     content: "Content", # required
    #     public_subject: "PublicSubject",
    #     public_content: "PublicContent",
    #     incident_id: "IncidentId",
    #     sent_time: Time.now,
    #     read_time: Time.now,
    #     delivery_time: Time.now
    #   }
    # @return [Types::DescribePageResult]
    def describe_page(params = {}, options = {})
      request = build_request(:describe_page, params)
      request.send_request(options)
    end

    # <p>Retrieves information about the specified contact or escalation plan.</p>
    # @param [Hash, Types::GetContactRequest] params
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.get_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_arn: "SsmContactsArn", # required
    #     alias: "ContactAlias", # required
    #     display_name: "ContactName",
    #     type: "PERSONAL" # One of: ["PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"], # required
    #     plan: { # required
    #       stages: [
    #         {
    #           duration_in_minutes: 1, # required
    #           targets: [ # required
    #             {
    #               channel_target_info: {
    #                 contact_channel_id: "SsmContactsArn", # required
    #                 retry_interval_in_minutes: 1
    #               },
    #               contact_target_info: {
    #                 contact_id: "SsmContactsArn",
    #                 is_essential: false, # required
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       rotation_ids: ["SsmContactsArn"]
    #     }
    #   }
    # @return [Types::GetContactResult]
    def get_contact(params = {}, options = {})
      request = build_request(:get_contact, params)
      request.send_request(options)
    end

    # <p>List details about a specific contact channel.</p>
    # @param [Hash, Types::GetContactChannelRequest] params
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want information about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_channel_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.get_contact_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_arn: "SsmContactsArn", # required
    #     contact_channel_arn: "SsmContactsArn", # required
    #     name: "ChannelName", # required
    #     type: "SMS" # One of: ["SMS", "VOICE", "EMAIL"], # required
    #     delivery_address: { # required
    #       simple_address: "SimpleAddress"
    #     },
    #     activation_status: "ACTIVATED" # One of: ["ACTIVATED", "NOT_ACTIVATED"]
    #   }
    # @return [Types::GetContactChannelResult]
    def get_contact_channel(params = {}, options = {})
      request = build_request(:get_contact_channel, params)
      request.send_request(options)
    end

    # <p>Retrieves the resource policies attached to the specified contact or escalation
    #          plan.</p>
    # @param [Hash, Types::GetContactPolicyRequest] params
    # @option params [String] :contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_arn: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.get_contact_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     contact_arn: "SsmContactsArn",
    #     policy: "Policy"
    #   }
    # @return [Types::GetContactPolicyResult]
    def get_contact_policy(params = {}, options = {})
      request = build_request(:get_contact_policy, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an on-call rotation.</p>
    # @param [Hash, Types::GetRotationRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation to retrieve information
    #            about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.get_rotation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotation_arn: "SsmContactsArn", # required
    #     name: "RotationName", # required
    #     contact_ids: ["SsmContactsArn"], # required
    #     start_time: Time.now, # required
    #     time_zone_id: "TimeZoneId", # required
    #     recurrence: { # required
    #       monthly_settings: [
    #         {
    #           day_of_month: 1, # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       weekly_settings: [
    #         {
    #           day_of_week: "MON" # One of: ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"], # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       daily_settings: [
    #         {
    #           hour_of_day: 1, # required
    #           minute_of_hour: 1, # required
    #         }
    #       ],
    #       number_of_on_calls: 1, # required
    #       shift_coverages: {
    #         "DayOfWeek" => [
    #           {
    #             start: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #             end: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             }
    #           }
    #         ]
    #       },
    #       recurrence_multiplier: 1, # required
    #     }
    #   }
    # @return [Types::GetRotationResult]
    def get_rotation(params = {}, options = {})
      request = build_request(:get_rotation, params)
      request.send_request(options)
    end

    # <p>Retrieves information about an override to an on-call rotation.</p>
    # @param [Hash, Types::GetRotationOverrideRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the overridden rotation to retrieve information
    #            about.</p>
    # @option params [String] :rotation_override_id
    #   <p>The Amazon Resource Name (ARN) of the on-call rotation override to retrieve information
    #            about.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #     rotation_override_id: "Uuid", # required
    #   }
    #   options = {}
    #   response = client.get_rotation_override(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotation_override_id: "Uuid",
    #     rotation_arn: "SsmContactsArn",
    #     new_contact_ids: ["SsmContactsArn"],
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     create_time: Time.now
    #   }
    # @return [Types::GetRotationOverrideResult]
    def get_rotation_override(params = {}, options = {})
      request = build_request(:get_rotation_override, params)
      request.send_request(options)
    end

    # <p>Lists all contact channels for the specified contact.</p>
    # @param [Hash, Types::ListContactChannelsRequest] params
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of contact channels per page.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_contact_channels(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     contact_channels: [ # required
    #       {
    #         contact_channel_arn: "SsmContactsArn", # required
    #         contact_arn: "SsmContactsArn", # required
    #         name: "ChannelName", # required
    #         type: "SMS" # One of: ["SMS", "VOICE", "EMAIL"],
    #         delivery_address: { # required
    #           simple_address: "SimpleAddress"
    #         },
    #         activation_status: "ACTIVATED" # One of: ["ACTIVATED", "NOT_ACTIVATED"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListContactChannelsResult]
    def list_contact_channels(params = {}, options = {})
      request = build_request(:list_contact_channels, params)
      request.send_request(options)
    end

    # <p>Lists all contacts and escalation plans in Incident Manager.</p>
    # @param [Hash, Types::ListContactsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of contacts and escalation plans per page of results.</p>
    # @option params [String] :alias_prefix
    #   <p>Used to list only contacts who's aliases start with the specified prefix.</p>
    # @option params [String] :type
    #   <p>The type of contact.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     alias_prefix: "ContactAlias",
    #     type: "PERSONAL" # One of: ["PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"]
    #   }
    #   options = {}
    #   response = client.list_contacts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     contacts: [
    #       {
    #         contact_arn: "SsmContactsArn", # required
    #         alias: "ContactAlias", # required
    #         display_name: "ContactName",
    #         type: "PERSONAL" # One of: ["PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"], # required
    #       }
    #     ]
    #   }
    # @return [Types::ListContactsResult]
    def list_contacts(params = {}, options = {})
      request = build_request(:list_contacts, params)
      request.send_request(options)
    end

    # <p>Lists all engagements that have happened in an incident.</p>
    # @param [Hash, Types::ListEngagementsRequest] params
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of engagements per page of results.</p>
    # @option params [String] :incident_id
    #   <p>The Amazon Resource Name (ARN) of the incident you're listing engagements for.</p>
    # @option params [Types::TimeRange] :time_range_value
    #   <p>The time range to lists engagements for an incident.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     incident_id: "IncidentId",
    #     time_range_value: {
    #       start_time: Time.now,
    #       end_time: Time.now
    #     }
    #   }
    #   options = {}
    #   response = client.list_engagements(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     engagements: [ # required
    #       {
    #         engagement_arn: "SsmContactsArn", # required
    #         contact_arn: "SsmContactsArn", # required
    #         sender: "Sender", # required
    #         incident_id: "IncidentId",
    #         start_time: Time.now,
    #         stop_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListEngagementsResult]
    def list_engagements(params = {}, options = {})
      request = build_request(:list_engagements, params)
      request.send_request(options)
    end

    # <p>Lists all of the engagements to contact channels that have been acknowledged.</p>
    # @param [Hash, Types::ListPageReceiptsRequest] params
    # @option params [String] :page_id
    #   <p>The Amazon Resource Name (ARN) of the engagement to a specific contact channel.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of acknowledgements per page of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     page_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_page_receipts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     receipts: [
    #       {
    #         contact_channel_arn: "SsmContactsArn",
    #         receipt_type: "DELIVERED" # One of: ["DELIVERED", "ERROR", "READ", "SENT", "STOP"], # required
    #         receipt_info: "ReceiptInfo",
    #         receipt_time: Time.now, # required
    #       }
    #     ]
    #   }
    # @return [Types::ListPageReceiptsResult]
    def list_page_receipts(params = {}, options = {})
      request = build_request(:list_page_receipts, params)
      request.send_request(options)
    end

    # <p>Returns the resolution path of an engagement. For example, the escalation plan engaged
    #          in an incident might target an on-call schedule that includes several contacts in a
    #          rotation, but just one contact on-call when the incident starts. The resolution path
    #          indicates the hierarchy of <i>escalation plan > on-call schedule >
    #             contact</i>.</p>
    # @param [Hash, Types::ListPageResolutionsRequest] params
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @option params [String] :page_id
    #   <p>The Amazon Resource Name (ARN) of the contact engaged for the incident.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     page_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.list_page_resolutions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     page_resolutions: [ # required
    #       {
    #         contact_arn: "SsmContactsArn", # required
    #         type: "PERSONAL" # One of: ["PERSONAL", "ESCALATION", "ONCALL_SCHEDULE"], # required
    #         stage_index: 1
    #       }
    #     ]
    #   }
    # @return [Types::ListPageResolutionsResult]
    def list_page_resolutions(params = {}, options = {})
      request = build_request(:list_page_resolutions, params)
      request.send_request(options)
    end

    # <p>Lists the engagements to a contact's contact channels.</p>
    # @param [Hash, Types::ListPagesByContactRequest] params
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact you are retrieving engagements for.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of engagements to contact channels to list per page of results.
    #         </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pages_by_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     pages: [ # required
    #       {
    #         page_arn: "SsmContactsArn", # required
    #         engagement_arn: "SsmContactsArn", # required
    #         contact_arn: "SsmContactsArn", # required
    #         sender: "Sender", # required
    #         incident_id: "IncidentId",
    #         sent_time: Time.now,
    #         delivery_time: Time.now,
    #         read_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListPagesByContactResult]
    def list_pages_by_contact(params = {}, options = {})
      request = build_request(:list_pages_by_contact, params)
      request.send_request(options)
    end

    # <p>Lists the engagements to contact channels that occurred by engaging a contact.</p>
    # @param [Hash, Types::ListPagesByEngagementRequest] params
    # @option params [String] :engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    # @option params [String] :next_token
    #   <p>The pagination token to continue to the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of engagements to contact channels to list per page of
    #            results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engagement_id: "SsmContactsArn", # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_pages_by_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     pages: [ # required
    #       {
    #         page_arn: "SsmContactsArn", # required
    #         engagement_arn: "SsmContactsArn", # required
    #         contact_arn: "SsmContactsArn", # required
    #         sender: "Sender", # required
    #         incident_id: "IncidentId",
    #         sent_time: Time.now,
    #         delivery_time: Time.now,
    #         read_time: Time.now
    #       }
    #     ]
    #   }
    # @return [Types::ListPagesByEngagementResult]
    def list_pages_by_engagement(params = {}, options = {})
      request = build_request(:list_pages_by_engagement, params)
      request.send_request(options)
    end

    # <p>Returns a list of shifts based on rotation configuration parameters.</p>
    #          <note>
    #             <p>The Incident Manager primarily uses this operation to populate the <b>Preview</b> calendar. It is not typically run by end users.</p>
    #          </note>
    # @param [Hash, Types::ListPreviewRotationShiftsRequest] params
    # @option params [Time] :rotation_start_time
    #   <p>The date and time a rotation would begin. The first shift is calculated from this date
    #            and time.</p>
    # @option params [Time] :start_time
    #   <p>Used to filter the range of calculated shifts before sending the response back to the
    #            user. </p>
    # @option params [Time] :end_time
    #   <p>The date and time a rotation shift would end.</p>
    # @option params [Array<String>] :members
    #   <p>The contacts that would be assigned to a rotation.</p>
    # @option params [String] :time_zone_id
    #   <p>The time zone the rotation’s activity would be based on, in Internet Assigned Numbers
    #            Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul".
    #         </p>
    # @option params [Types::RecurrenceSettings] :recurrence
    #   <p>Information about how long a rotation would last before restarting at the beginning of
    #            the shift order.</p>
    # @option params [Array<Types::PreviewOverride>] :overrides
    #   <p>Information about changes that would be made in a rotation override.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. This token is used to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            can be specified in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_start_time: Time.now,
    #     start_time: Time.now,
    #     end_time: Time.now, # required
    #     members: ["Member"], # required
    #     time_zone_id: "TimeZoneId", # required
    #     recurrence: { # required
    #       monthly_settings: [
    #         {
    #           day_of_month: 1, # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       weekly_settings: [
    #         {
    #           day_of_week: "MON" # One of: ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"], # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       daily_settings: [
    #         {
    #           hour_of_day: 1, # required
    #           minute_of_hour: 1, # required
    #         }
    #       ],
    #       number_of_on_calls: 1, # required
    #       shift_coverages: {
    #         "DayOfWeek" => [
    #           {
    #             start: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #             end: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             }
    #           }
    #         ]
    #       },
    #       recurrence_multiplier: 1, # required
    #     },
    #     overrides: [
    #       {
    #         new_members: ["Member"],
    #         start_time: Time.now,
    #         end_time: Time.now
    #       }
    #     ],
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_preview_rotation_shifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotation_shifts: [
    #       {
    #         contact_ids: ["SsmContactsArn"],
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         type: "REGULAR" # One of: ["REGULAR", "OVERRIDDEN"],
    #         shift_details: {
    #           overridden_contact_ids: ["SsmContactsArn"], # required
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListPreviewRotationShiftsResult]
    def list_preview_rotation_shifts(params = {}, options = {})
      request = build_request(:list_preview_rotation_shifts, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of overrides currently specified for an on-call rotation.</p>
    # @param [Hash, Types::ListRotationOverridesRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to retrieve information about.</p>
    # @option params [Time] :start_time
    #   <p>The date and time for the beginning of a time range for listing overrides.</p>
    # @option params [Time] :end_time
    #   <p>The date and time for the end of a time range for listing overrides.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #     start_time: Time.now, # required
    #     end_time: Time.now, # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_rotation_overrides(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotation_overrides: [
    #       {
    #         rotation_override_id: "Uuid", # required
    #         new_contact_ids: ["SsmContactsArn"], # required
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         create_time: Time.now, # required
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRotationOverridesResult]
    def list_rotation_overrides(params = {}, options = {})
      request = build_request(:list_rotation_overrides, params)
      request.send_request(options)
    end

    # <p>Returns a list of shifts generated by an existing rotation in the system.</p>
    # @param [Hash, Types::ListRotationShiftsRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to retrieve shift information about.
    #         </p>
    # @option params [Time] :start_time
    #   <p>The date and time for the beginning of the time range to list shifts for.</p>
    # @option params [Time] :end_time
    #   <p>The date and time for the end of the time range to list shifts for.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #     start_time: Time.now,
    #     end_time: Time.now, # required
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_rotation_shifts(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rotation_shifts: [
    #       {
    #         contact_ids: ["SsmContactsArn"],
    #         start_time: Time.now, # required
    #         end_time: Time.now, # required
    #         type: "REGULAR" # One of: ["REGULAR", "OVERRIDDEN"],
    #         shift_details: {
    #           overridden_contact_ids: ["SsmContactsArn"], # required
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRotationShiftsResult]
    def list_rotation_shifts(params = {}, options = {})
      request = build_request(:list_rotation_shifts, params)
      request.send_request(options)
    end

    # <p>Retrieves a list of on-call rotations.</p>
    # @param [Hash, Types::ListRotationsRequest] params
    # @option params [String] :rotation_name_prefix
    #   <p>A filter to include rotations in list results based on their common prefix. For example,
    #            entering prod returns a list of all rotation names that begin with <code>prod</code>, such
    #            as <code>production</code> and <code>prod-1</code>.</p>
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_name_prefix: "RotationName",
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_rotations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     next_token: "PaginationToken",
    #     rotations: [ # required
    #       {
    #         rotation_arn: "SsmContactsArn", # required
    #         name: "RotationName", # required
    #         contact_ids: ["SsmContactsArn"],
    #         start_time: Time.now,
    #         time_zone_id: "TimeZoneId",
    #         recurrence: {
    #           monthly_settings: [
    #             {
    #               day_of_month: 1, # required
    #               hand_off_time: { # required
    #                 hour_of_day: 1, # required
    #                 minute_of_hour: 1, # required
    #               }
    #             }
    #           ],
    #           weekly_settings: [
    #             {
    #               day_of_week: "MON" # One of: ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"], # required
    #               hand_off_time: { # required
    #                 hour_of_day: 1, # required
    #                 minute_of_hour: 1, # required
    #               }
    #             }
    #           ],
    #           daily_settings: [
    #             {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             }
    #           ],
    #           number_of_on_calls: 1, # required
    #           shift_coverages: {
    #             "DayOfWeek" => [
    #               {
    #                 start: {
    #                   hour_of_day: 1, # required
    #                   minute_of_hour: 1, # required
    #                 },
    #                 end: {
    #                   hour_of_day: 1, # required
    #                   minute_of_hour: 1, # required
    #                 }
    #               }
    #             ]
    #           },
    #           recurrence_multiplier: 1, # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::ListRotationsResult]
    def list_rotations(params = {}, options = {})
      request = build_request(:list_rotations, params)
      request.send_request(options)
    end

    # <p>Lists the tags of a contact, escalation plan, rotation, or on-call schedule.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact, escalation plan, rotation, or on-call
    #            schedule.</p>
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
    #         key: "TagKey",
    #         value: "TagValue"
    #       }
    #     ]
    #   }
    # @return [Types::ListTagsForResourceResult]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Adds a resource policy to the specified contact or escalation plan. The resource policy
    #          is used to share the contact or escalation plan using Resource Access Manager (RAM). For more information about cross-account sharing, see <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html">Setting up
    #             cross-account functionality</a>.</p>
    # @param [Hash, Types::PutContactPolicyRequest] params
    # @option params [String] :contact_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    # @option params [String] :policy
    #   <p>Details of the resource policy.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_arn: "SsmContactsArn", # required
    #     policy: "Policy", # required
    #   }
    #   options = {}
    #   response = client.put_contact_policy(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::PutContactPolicyResult]
    def put_contact_policy(params = {}, options = {})
      request = build_request(:put_contact_policy, params)
      request.send_request(options)
    end

    # <p>Sends an activation code to a contact channel. The contact can use this code to activate
    #          the contact channel in the console or with the <code>ActivateChannel</code> operation.
    #          Incident Manager can't engage a contact channel until it has been activated.</p>
    # @param [Hash, Types::SendActivationCodeRequest] params
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_channel_id: "SsmContactsArn", # required
    #   }
    #   options = {}
    #   response = client.send_activation_code(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::SendActivationCodeResult]
    def send_activation_code(params = {}, options = {})
      request = build_request(:send_activation_code, params)
      request.send_request(options)
    end

    # <p>Starts an engagement to a contact or escalation plan. The engagement engages each
    #          contact specified in the incident.</p>
    # @param [Hash, Types::StartEngagementRequest] params
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact being engaged.</p>
    # @option params [String] :sender
    #   <p>The user that started the engagement.</p>
    # @option params [String] :subject
    #   <p>The secure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    # @option params [String] :content
    #   <p>The secure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>VOICE</code> or <code>EMAIL</code>.</p>
    # @option params [String] :public_subject
    #   <p>The insecure subject of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    # @option params [String] :public_content
    #   <p>The insecure content of the message that was sent to the contact. Use this field for
    #            engagements to <code>SMS</code>.</p>
    # @option params [String] :incident_id
    #   <p>The ARN of the incident that the engagement is part of.</p>
    # @option params [String] :idempotency_token
    #   <p>A token ensuring that the operation is called only once with the specified
    #            details.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "SsmContactsArn", # required
    #     sender: "Sender", # required
    #     subject: "Subject", # required
    #     content: "Content", # required
    #     public_subject: "PublicSubject",
    #     public_content: "PublicContent",
    #     incident_id: "IncidentId",
    #     idempotency_token: "IdempotencyToken"
    #   }
    #   options = {}
    #   response = client.start_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     engagement_arn: "SsmContactsArn", # required
    #   }
    # @return [Types::StartEngagementResult]
    def start_engagement(params = {}, options = {})
      request = build_request(:start_engagement, params)
      request.send_request(options)
    end

    # <p>Stops an engagement before it finishes the final stage of the escalation plan or
    #          engagement plan. Further contacts aren't engaged.</p>
    # @param [Hash, Types::StopEngagementRequest] params
    # @option params [String] :engagement_id
    #   <p>The Amazon Resource Name (ARN) of the engagement.</p>
    # @option params [String] :reason
    #   <p>The reason that you're stopping the engagement.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     engagement_id: "SsmContactsArn", # required
    #     reason: "StopReason"
    #   }
    #   options = {}
    #   response = client.stop_engagement(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::StopEngagementResult]
    def stop_engagement(params = {}, options = {})
      request = build_request(:stop_engagement, params)
      request.send_request(options)
    end

    # <p>Tags a contact or escalation plan. You can tag only contacts and escalation plans in the
    #          first region of your replication set.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags that you are adding to the contact or escalation plan.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "AmazonResourceName", # required
    #     tags: [ # required
    #       {
    #         key: "TagKey",
    #         value: "TagValue"
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

    # <p>Removes tags from the specified resource.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The key of the tag that you want to remove.</p>
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

    # <p>Updates the contact or escalation plan specified.</p>
    # @param [Hash, Types::UpdateContactRequest] params
    # @option params [String] :contact_id
    #   <p>The Amazon Resource Name (ARN) of the contact or escalation plan you're updating.</p>
    # @option params [String] :display_name
    #   <p>The full name of the contact or escalation plan.</p>
    # @option params [Types::Plan] :plan
    #   <p>A list of stages. A contact has an engagement plan with stages for specified contact
    #            channels. An escalation plan uses these stages to contact specified contacts.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "SsmContactsArn", # required
    #     display_name: "ContactName",
    #     plan: {
    #       stages: [
    #         {
    #           duration_in_minutes: 1, # required
    #           targets: [ # required
    #             {
    #               channel_target_info: {
    #                 contact_channel_id: "SsmContactsArn", # required
    #                 retry_interval_in_minutes: 1
    #               },
    #               contact_target_info: {
    #                 contact_id: "SsmContactsArn",
    #                 is_essential: false, # required
    #               }
    #             }
    #           ]
    #         }
    #       ],
    #       rotation_ids: ["SsmContactsArn"]
    #     }
    #   }
    #   options = {}
    #   response = client.update_contact(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactResult]
    def update_contact(params = {}, options = {})
      request = build_request(:update_contact, params)
      request.send_request(options)
    end

    # <p>Updates a contact's contact channel.</p>
    # @param [Hash, Types::UpdateContactChannelRequest] params
    # @option params [String] :contact_channel_id
    #   <p>The Amazon Resource Name (ARN) of the contact channel you want to update.</p>
    # @option params [String] :name
    #   <p>The name of the contact channel.</p>
    # @option params [Types::ContactChannelAddress] :delivery_address
    #   <p>The details that Incident Manager uses when trying to engage the contact channel.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_channel_id: "SsmContactsArn", # required
    #     name: "ChannelName",
    #     delivery_address: {
    #       simple_address: "SimpleAddress"
    #     }
    #   }
    #   options = {}
    #   response = client.update_contact_channel(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateContactChannelResult]
    def update_contact_channel(params = {}, options = {})
      request = build_request(:update_contact_channel, params)
      request.send_request(options)
    end

    # <p>Updates the information specified for an on-call rotation.</p>
    # @param [Hash, Types::UpdateRotationRequest] params
    # @option params [String] :rotation_id
    #   <p>The Amazon Resource Name (ARN) of the rotation to update.</p>
    # @option params [Array<String>] :contact_ids
    #   <p>The Amazon Resource Names (ARNs) of the contacts to include in the updated rotation. </p>
    #            <note>
    #               <p>Only the <code>PERSONAL</code> contact type is supported. The contact types
    #                  <code>ESCALATION</code> and <code>ONCALL_SCHEDULE</code> are not supported for this
    #               operation. </p>
    #            </note>
    #            <p>The order in which you list the contacts is their shift order in the rotation
    #            schedule.</p>
    # @option params [Time] :start_time
    #   <p>The date and time the rotation goes into effect.</p>
    # @option params [String] :time_zone_id
    #   <p>The time zone to base the updated rotation’s activity on, in Internet Assigned Numbers
    #            Authority (IANA) format. For example: "America/Los_Angeles", "UTC", or "Asia/Seoul". For
    #            more information, see the <a href="https://www.iana.org/time-zones">Time Zone
    #               Database</a> on the IANA website.</p>
    #            <note>
    #               <p>Designators for time zones that don’t support Daylight Savings Time Rules, such as
    #               Pacific Standard Time (PST), aren't supported.</p>
    #            </note>
    # @option params [Types::RecurrenceSettings] :recurrence
    #   <p>Information about how long the updated rotation lasts before restarting at the beginning
    #            of the shift order.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     rotation_id: "SsmContactsArn", # required
    #     contact_ids: ["SsmContactsArn"],
    #     start_time: Time.now,
    #     time_zone_id: "TimeZoneId",
    #     recurrence: { # required
    #       monthly_settings: [
    #         {
    #           day_of_month: 1, # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       weekly_settings: [
    #         {
    #           day_of_week: "MON" # One of: ["MON", "TUE", "WED", "THU", "FRI", "SAT", "SUN"], # required
    #           hand_off_time: { # required
    #             hour_of_day: 1, # required
    #             minute_of_hour: 1, # required
    #           }
    #         }
    #       ],
    #       daily_settings: [
    #         {
    #           hour_of_day: 1, # required
    #           minute_of_hour: 1, # required
    #         }
    #       ],
    #       number_of_on_calls: 1, # required
    #       shift_coverages: {
    #         "DayOfWeek" => [
    #           {
    #             start: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             },
    #             end: {
    #               hour_of_day: 1, # required
    #               minute_of_hour: 1, # required
    #             }
    #           }
    #         ]
    #       },
    #       recurrence_multiplier: 1, # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_rotation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UpdateRotationResult]
    def update_rotation(params = {}, options = {})
      request = build_request(:update_rotation, params)
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
      context[:gem_name] = 'aws-sdk-ssmcontacts'
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
