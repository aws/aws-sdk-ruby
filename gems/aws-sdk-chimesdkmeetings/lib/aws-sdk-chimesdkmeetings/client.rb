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
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:chimesdkmeetings)

module Aws::ChimeSDKMeetings
  # An API client for Aws::ChimeSDKMeetings.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::ChimeMeetingsSDKService
    @identifier = :chimesdkmeetings

    add_plugin(::Aws::ChimeSDKMeetings::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ChimeSDKMeetings::EndpointProvider)
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

    # <p>Creates up to 100 attendees for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see 
    #             <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a> in the <i>Amazon Chime Developer Guide</i>.</p>
    # @param [Hash, Types::BatchCreateAttendeeRequest] params
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK ID of the meeting to which you're adding attendees.</p>
    # @option params [Array<Types::CreateAttendeeRequestItem>] :attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     attendees: [ # required
    #       {
    #         external_user_id: "ExternalUserId", # required
    #         capabilities: {
    #           audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.batch_create_attendee(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attendees: [
    #       {
    #         external_user_id: "ExternalUserId",
    #         attendee_id: "GuidString",
    #         join_token: "JoinTokenString",
    #         capabilities: {
    #           audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         external_user_id: "ExternalUserId",
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::BatchCreateAttendeeResponse]
    def batch_create_attendee(params = {}, options = {})
      request = build_request(:batch_create_attendee, params)
      request.send_request(options)
    end

    # <p>Updates <code>AttendeeCapabilities</code> except the capabilities listed in an <code>ExcludedAttendeeIds</code> table.</p>
    #          <note>
    #             <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information about those values, see 
    #             .</p>
    #          </note>
    #          <p>When using capabilities, be aware of these corner cases:</p>
    #          <ul>
    #             <li>
    #                <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests 
    #                     that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>
    #             </li>
    #             <li>
    #                <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or 
    #                     <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>
    #             </li>
    #             <li>
    #                <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> 
    #                     or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your <code>video</code> capability 
    #                     to receive and you set your <code>content</code> capability to not receive.</p>
    #             </li>
    #             <li>
    #                <p>If meeting features is defined as <code>Video:MaxResolution:None</code> but
    #                     <code>Content:MaxResolution</code> is defined as something other than
    #                     <code>None</code> and attendee capabilities are not defined in the API
    #                     request, then the default attendee video capability is set to
    #                     <code>Receive</code> and attendee content capability is set to
    #                     <code>SendReceive</code>. This is because content <code>SendReceive</code>
    #                     requires video to be at least <code>Receive</code>.</p>
    #             </li>
    #             <li>
    #                <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                     and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.</p>
    #             </li>
    #             <li>
    #                <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                     and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::BatchUpdateAttendeeCapabilitiesExceptRequest] params
    # @option params [String] :meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    # @option params [Array<Types::AttendeeIdItem>] :excluded_attendee_ids
    #   <p>The <code>AttendeeIDs</code> that you want to exclude from one or more capabilities.</p>
    # @option params [Types::AttendeeCapabilities] :capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     excluded_attendee_ids: [ # required
    #       {
    #         attendee_id: "GuidString", # required
    #       }
    #     ],
    #     capabilities: { # required
    #       audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.batch_update_attendee_capabilities_except(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def batch_update_attendee_capabilities_except(params = {}, options = {})
      request = build_request(:batch_update_attendee_capabilities_except, params)
      request.send_request(options)
    end

    # <p>
    #            Creates a new attendee for an active Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the 
    #            <i>Amazon Chime Developer Guide</i>.
    #        </p>
    # @param [Hash, Types::CreateAttendeeRequest] params
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting.</p>
    # @option params [String] :external_user_id
    #   <p>The Amazon Chime SDK external user ID. An idempotency token. Links the attendee to an identity managed by a builder application.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that
    #               uses this prefix.</p>
    # @option params [Types::AttendeeCapabilities] :capabilities
    #   <p>The capabilities (<code>audio</code>, <code>video</code>, or <code>content</code>) that you want to grant an attendee. If you don't specify capabilities, all users have send and receive capabilities on 
    #               all media channels by default.</p>
    #            <note>
    #               <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information about those values, see 
    #               .</p>
    #            </note>
    #            <p>When using capabilities, be aware of these corner cases:</p>
    #            <ul>
    #               <li>
    #                  <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests 
    #                           that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or 
    #                           <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>
    #               </li>
    #               <li>
    #                  <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> 
    #                       or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your <code>video</code> capability 
    #                       to receive and you set your <code>content</code> capability to not receive.</p>
    #               </li>
    #               <li>
    #                  <p>If meeting features is defined as <code>Video:MaxResolution:None</code> but
    #                           <code>Content:MaxResolution</code> is defined as something other than
    #                           <code>None</code> and attendee capabilities are not defined in the API
    #                           request, then the default attendee video capability is set to
    #                           <code>Receive</code> and attendee content capability is set to
    #                           <code>SendReceive</code>. This is because content <code>SendReceive</code>
    #                           requires video to be at least <code>Receive</code>.</p>
    #               </li>
    #               <li>
    #                  <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                       and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.</p>
    #               </li>
    #               <li>
    #                  <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                      and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     external_user_id: "ExternalUserId", # required
    #     capabilities: {
    #       audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.create_attendee(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attendee: {
    #       external_user_id: "ExternalUserId",
    #       attendee_id: "GuidString",
    #       join_token: "JoinTokenString",
    #       capabilities: {
    #         audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       }
    #     }
    #   }
    # @return [Types::CreateAttendeeResponse]
    def create_attendee(params = {}, options = {})
      request = build_request(:create_attendee, params)
      request.send_request(options)
    end

    # <p>Creates a new Amazon Chime SDK meeting in the specified media Region with no initial attendees. For more information about specifying media Regions, see 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions">Available Regions</a> and 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html">Using meeting Regions</a>, both 
    #            in the <i>Amazon Chime SDK Developer Guide</i>. For more information about the Amazon Chime SDK, see 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the 
    #            <i>Amazon Chime SDK Developer Guide</i>.
    #        </p>
    #          <note>
    #             <p>If you use this API in conjuction with the  and  APIs, and you don't specify the 
    #        <code>MeetingFeatures.Content.MaxResolution</code> or <code>MeetingFeatures.Video.MaxResolution</code> parameters, the following defaults are used:</p>
    #             <ul>
    #                <li>
    #                   <p>Content.MaxResolution: FHD</p>
    #                </li>
    #                <li>
    #                   <p>Video.MaxResolution: HD</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateMeetingRequest] params
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    # @option params [String] :media_region
    #   <p>The Region in which to create the meeting.</p>
    #            <p>
    #              Available values: 
    #              <code>af-south-1</code>, 
    #              <code>ap-northeast-1</code>, 
    #              <code>ap-northeast-2</code>, 
    #              <code>ap-south-1</code>, 
    #              <code>ap-southeast-1</code>, 
    #              <code>ap-southeast-2</code>,           
    #              <code>ca-central-1</code>, 
    #              <code>eu-central-1</code>, 
    #              <code>eu-north-1</code>, 
    #              <code>eu-south-1</code>, 
    #              <code>eu-west-1</code>, 
    #              <code>eu-west-2</code>, 
    #              <code>eu-west-3</code>,            
    #              <code>sa-east-1</code>, 
    #              <code>us-east-1</code>, 
    #              <code>us-east-2</code>, 
    #              <code>us-west-1</code>, 
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    # @option params [String] :meeting_host_id
    #   <p>Reserved.</p>
    # @option params [String] :external_meeting_id
    #   <p>The external meeting ID.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #              Case insensitive.</p>
    # @option params [Types::NotificationsConfiguration] :notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    # @option params [Types::MeetingFeaturesConfiguration] :meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    # @option params [String] :primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    # @option params [Array<String>] :tenant_ids
    #   <p>A consistent and opaque identifier, created and maintained by the builder to represent a segment of their users.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Applies one or more tags to an Amazon Chime SDK meeting. Note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Not all resources have tags. For a list of services with resources that support tagging using this operation, see 
    #           <a href="https://docs.aws.amazon.com/resourcegroupstagging/latest/APIReference/supported-services.html">Services that support the Resource Groups Tagging API</a>. If the resource 
    #           doesn't yet support this operation, the resource's service might support tagging using its own API operations. For more information, refer to the documentation for that service.</p>
    #               </li>
    #               <li>
    #                  <p>Each resource can have up to 50 tags. For other limits, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag Naming and Usage Conventions</a> in the 
    #          <i>AWS General Reference</i>.</p>
    #               </li>
    #               <li>
    #                  <p>You can only tag resources that are located in the specified Amazon Web Services Region for the Amazon Web Services account.</p>
    #               </li>
    #               <li>
    #                  <p>To add tags to a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for adding tags. For more information, see the 
    #           documentation for each service.</p>
    #               </li>
    #            </ul>
    #            <important>
    #               <p>Do not store personally identifiable information (PII) or other confidential or sensitive information in tags. We use tags to provide you with billing and administration services. Tags are not intended to be 
    #               used for private or sensitive data.</p>
    #            </important>
    #            <p>
    #               <b>Minimum permissions</b>
    #            </p>
    #            <p>In addition to the <code>tag:TagResources</code> permission required by this operation, you must also have the tagging permission defined by the service that created the resource. For example, 
    #                      to tag a <code>ChimeSDKMeetings</code> instance using the <code>TagResources</code> operation, you must have both of the following permissions:</p>
    #            <p>
    #               <code>tag:TagResources</code>
    #            </p>
    #            <p>
    #               <code>ChimeSDKMeetings:CreateTags</code>
    #            </p>
    #            <note>
    #               <p>Some services might have specific requirements for tagging some resources. For example, to tag an Amazon S3 bucket, you must also have the <code>s3:GetBucketTagging</code> permission. 
    #                   If the expected minimum permissions don't work, check the documentation for that service's tagging APIs for more information.</p>
    #            </note>
    # @option params [String] :media_placement_network_type
    #   <p>The type of network for the media placement. Either IPv4 only or dual-stack (IPv4 and IPv6).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken", # required
    #     media_region: "MediaRegion", # required
    #     meeting_host_id: "ExternalUserId",
    #     external_meeting_id: "ExternalMeetingId", # required
    #     notifications_configuration: {
    #       lambda_function_arn: "Arn",
    #       sns_topic_arn: "Arn",
    #       sqs_queue_arn: "Arn"
    #     },
    #     meeting_features: {
    #       audio: {
    #         echo_reduction: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"]
    #       },
    #       video: {
    #         max_resolution: "None" # One of: ["None", "HD", "FHD"]
    #       },
    #       content: {
    #         max_resolution: "None" # One of: ["None", "FHD", "UHD"]
    #       },
    #       attendee: {
    #         max_count: 1
    #       }
    #     },
    #     primary_meeting_id: "PrimaryMeetingId",
    #     tenant_ids: ["TenantId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     media_placement_network_type: "Ipv4Only" # One of: ["Ipv4Only", "DualStack"]
    #   }
    #   options = {}
    #   response = client.create_meeting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meeting: {
    #       meeting_id: "GuidString",
    #       meeting_host_id: "ExternalUserId",
    #       external_meeting_id: "ExternalMeetingId",
    #       media_region: "MediaRegion",
    #       media_placement: {
    #         audio_host_url: "String",
    #         audio_fallback_url: "String",
    #         signaling_url: "String",
    #         turn_control_url: "String",
    #         screen_data_url: "String",
    #         screen_viewing_url: "String",
    #         screen_sharing_url: "String",
    #         event_ingestion_url: "String"
    #       },
    #       meeting_features: {
    #         audio: {
    #           echo_reduction: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"]
    #         },
    #         video: {
    #           max_resolution: "None" # One of: ["None", "HD", "FHD"]
    #         },
    #         content: {
    #           max_resolution: "None" # One of: ["None", "FHD", "UHD"]
    #         },
    #         attendee: {
    #           max_count: 1
    #         }
    #       },
    #       primary_meeting_id: "PrimaryMeetingId",
    #       tenant_ids: ["TenantId"],
    #       meeting_arn: "AmazonResourceName"
    #     }
    #   }
    # @return [Types::CreateMeetingResponse]
    def create_meeting(params = {}, options = {})
      request = build_request(:create_meeting, params)
      request.send_request(options)
    end

    # <p>
    #            Creates a new Amazon Chime SDK meeting in the specified media Region, with attendees. For more information about specifying media Regions, see 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/sdk-available-regions">Available Regions</a> and 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html">Using meeting Regions</a>, both 
    #            in the <i>Amazon Chime SDK Developer Guide</i>. For more information about the Amazon Chime SDK, see 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the 
    #            <i>Amazon Chime SDK Developer Guide</i>.
    #        </p>
    #          <note>
    #             <p>If you use this API in conjuction with the  and  APIs, and you don't specify the 
    #            <code>MeetingFeatures.Content.MaxResolution</code> or <code>MeetingFeatures.Video.MaxResolution</code> parameters, the following defaults are used:</p>
    #             <ul>
    #                <li>
    #                   <p>Content.MaxResolution: FHD</p>
    #                </li>
    #                <li>
    #                   <p>Video.MaxResolution: HD</p>
    #                </li>
    #             </ul>
    #          </note>
    # @param [Hash, Types::CreateMeetingWithAttendeesRequest] params
    # @option params [String] :client_request_token
    #   <p>The unique identifier for the client request. Use a different token for different meetings.</p>
    # @option params [String] :media_region
    #   <p>The Region in which to create the meeting.</p>
    #            <p>
    #              Available values: 
    #              <code>af-south-1</code>, 
    #              <code>ap-northeast-1</code>, 
    #              <code>ap-northeast-2</code>, 
    #              <code>ap-south-1</code>, 
    #              <code>ap-southeast-1</code>, 
    #              <code>ap-southeast-2</code>,           
    #              <code>ca-central-1</code>, 
    #              <code>eu-central-1</code>, 
    #              <code>eu-north-1</code>, 
    #              <code>eu-south-1</code>, 
    #              <code>eu-west-1</code>, 
    #              <code>eu-west-2</code>, 
    #              <code>eu-west-3</code>,            
    #              <code>sa-east-1</code>, 
    #              <code>us-east-1</code>, 
    #              <code>us-east-2</code>, 
    #              <code>us-west-1</code>, 
    #              <code>us-west-2</code>.
    #          </p>
    #            <p>Available values in Amazon Web Services GovCloud (US) Regions: <code>us-gov-east-1</code>, <code>us-gov-west-1</code>.</p>
    # @option params [String] :meeting_host_id
    #   <p>Reserved.</p>
    # @option params [String] :external_meeting_id
    #   <p>The external meeting ID.</p>
    #            <p>Pattern: <code>[-_&@+=,(){}\[\]\/«».:|'"#a-zA-Z0-9À-ÿ\s]*</code>
    #            </p>
    #            <p>Values that begin with <code>aws:</code> are reserved. You can't configure a value that uses this prefix. 
    #              Case insensitive.</p>
    # @option params [Types::MeetingFeaturesConfiguration] :meeting_features
    #   <p>Lists the audio and video features enabled for a meeting, such as echo reduction.</p>
    # @option params [Types::NotificationsConfiguration] :notifications_configuration
    #   <p>The configuration for resource targets to receive notifications when meeting and attendee events occur.</p>
    # @option params [Array<Types::CreateAttendeeRequestItem>] :attendees
    #   <p>The attendee information, including attendees' IDs and join tokens.</p>
    # @option params [String] :primary_meeting_id
    #   <p>When specified, replicates the media from the primary meeting to the new meeting.</p>
    # @option params [Array<String>] :tenant_ids
    #   <p>A consistent and opaque identifier, created and maintained by the builder to represent a segment of their users.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>The tags in the request.</p>
    # @option params [String] :media_placement_network_type
    #   <p>The type of network for the media placement. Either IPv4 only or dual-stack (IPv4 and IPv6).</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_request_token: "ClientRequestToken", # required
    #     media_region: "MediaRegion", # required
    #     meeting_host_id: "ExternalUserId",
    #     external_meeting_id: "ExternalMeetingId", # required
    #     meeting_features: {
    #       audio: {
    #         echo_reduction: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"]
    #       },
    #       video: {
    #         max_resolution: "None" # One of: ["None", "HD", "FHD"]
    #       },
    #       content: {
    #         max_resolution: "None" # One of: ["None", "FHD", "UHD"]
    #       },
    #       attendee: {
    #         max_count: 1
    #       }
    #     },
    #     notifications_configuration: {
    #       lambda_function_arn: "Arn",
    #       sns_topic_arn: "Arn",
    #       sqs_queue_arn: "Arn"
    #     },
    #     attendees: [ # required
    #       {
    #         external_user_id: "ExternalUserId", # required
    #         capabilities: {
    #           audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         }
    #       }
    #     ],
    #     primary_meeting_id: "PrimaryMeetingId",
    #     tenant_ids: ["TenantId"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     media_placement_network_type: "Ipv4Only" # One of: ["Ipv4Only", "DualStack"]
    #   }
    #   options = {}
    #   response = client.create_meeting_with_attendees(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meeting: {
    #       meeting_id: "GuidString",
    #       meeting_host_id: "ExternalUserId",
    #       external_meeting_id: "ExternalMeetingId",
    #       media_region: "MediaRegion",
    #       media_placement: {
    #         audio_host_url: "String",
    #         audio_fallback_url: "String",
    #         signaling_url: "String",
    #         turn_control_url: "String",
    #         screen_data_url: "String",
    #         screen_viewing_url: "String",
    #         screen_sharing_url: "String",
    #         event_ingestion_url: "String"
    #       },
    #       meeting_features: {
    #         audio: {
    #           echo_reduction: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"]
    #         },
    #         video: {
    #           max_resolution: "None" # One of: ["None", "HD", "FHD"]
    #         },
    #         content: {
    #           max_resolution: "None" # One of: ["None", "FHD", "UHD"]
    #         },
    #         attendee: {
    #           max_count: 1
    #         }
    #       },
    #       primary_meeting_id: "PrimaryMeetingId",
    #       tenant_ids: ["TenantId"],
    #       meeting_arn: "AmazonResourceName"
    #     },
    #     attendees: [
    #       {
    #         external_user_id: "ExternalUserId",
    #         attendee_id: "GuidString",
    #         join_token: "JoinTokenString",
    #         capabilities: {
    #           audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         }
    #       }
    #     ],
    #     errors: [
    #       {
    #         external_user_id: "ExternalUserId",
    #         error_code: "String",
    #         error_message: "String"
    #       }
    #     ]
    #   }
    # @return [Types::CreateMeetingWithAttendeesResponse]
    def create_meeting_with_attendees(params = {}, options = {})
      request = build_request(:create_meeting_with_attendees, params)
      request.send_request(options)
    end

    # <p>Deletes an attendee from the specified Amazon Chime SDK meeting and deletes their 
    #            <code>JoinToken</code>. Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted. For more information about the Amazon Chime SDK, see 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #            in the <i>Amazon Chime Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteAttendeeRequest] params
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.delete_attendee(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_attendee(params = {}, options = {})
      request = build_request(:delete_attendee, params)
      request.send_request(options)
    end

    # <p>Deletes the specified Amazon Chime SDK meeting. The operation deletes all attendees, disconnects all clients, and prevents new clients from 
    #            joining the meeting. For more information about the Amazon Chime SDK, see 
    #            <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a> in the 
    #            <i>Amazon Chime Developer Guide</i>.</p>
    # @param [Hash, Types::DeleteMeetingRequest] params
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.delete_meeting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_meeting(params = {}, options = {})
      request = build_request(:delete_meeting, params)
      request.send_request(options)
    end

    # <p>
    #             Gets the Amazon Chime SDK attendee details for a specified meeting ID and attendee ID. For more information about the Amazon Chime SDK, see 
    #             <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #             in the <i>Amazon Chime Developer Guide</i>.
    #         </p>
    # @param [Hash, Types::GetAttendeeRequest] params
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    # @option params [String] :attendee_id
    #   <p>The Amazon Chime SDK attendee ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.get_attendee(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attendee: {
    #       external_user_id: "ExternalUserId",
    #       attendee_id: "GuidString",
    #       join_token: "JoinTokenString",
    #       capabilities: {
    #         audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       }
    #     }
    #   }
    # @return [Types::GetAttendeeResponse]
    def get_attendee(params = {}, options = {})
      request = build_request(:get_attendee, params)
      request.send_request(options)
    end

    # <p>Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more information about the Amazon Chime SDK, see 
    #             <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #             in the <i>Amazon Chime Developer Guide</i>.</p>
    # @param [Hash, Types::GetMeetingRequest] params
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.get_meeting(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     meeting: {
    #       meeting_id: "GuidString",
    #       meeting_host_id: "ExternalUserId",
    #       external_meeting_id: "ExternalMeetingId",
    #       media_region: "MediaRegion",
    #       media_placement: {
    #         audio_host_url: "String",
    #         audio_fallback_url: "String",
    #         signaling_url: "String",
    #         turn_control_url: "String",
    #         screen_data_url: "String",
    #         screen_viewing_url: "String",
    #         screen_sharing_url: "String",
    #         event_ingestion_url: "String"
    #       },
    #       meeting_features: {
    #         audio: {
    #           echo_reduction: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"]
    #         },
    #         video: {
    #           max_resolution: "None" # One of: ["None", "HD", "FHD"]
    #         },
    #         content: {
    #           max_resolution: "None" # One of: ["None", "FHD", "UHD"]
    #         },
    #         attendee: {
    #           max_count: 1
    #         }
    #       },
    #       primary_meeting_id: "PrimaryMeetingId",
    #       tenant_ids: ["TenantId"],
    #       meeting_arn: "AmazonResourceName"
    #     }
    #   }
    # @return [Types::GetMeetingResponse]
    def get_meeting(params = {}, options = {})
      request = build_request(:get_meeting, params)
      request.send_request(options)
    end

    # <p>
    #             Lists the attendees for the specified Amazon Chime SDK meeting. For more information about the Amazon Chime SDK, see 
    #             <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html">Using the Amazon Chime SDK</a>
    #             in the <i>Amazon Chime Developer Guide</i>.
    #         </p>
    # @param [Hash, Types::ListAttendeesRequest] params
    # @option params [String] :meeting_id
    #   <p>The Amazon Chime SDK meeting ID.</p>
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     next_token: "String",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_attendees(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attendees: [
    #       {
    #         external_user_id: "ExternalUserId",
    #         attendee_id: "GuidString",
    #         join_token: "JoinTokenString",
    #         capabilities: {
    #           audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #           content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         }
    #       }
    #     ],
    #     next_token: "String"
    #   }
    # @return [Types::ListAttendeesResponse]
    def list_attendees(params = {}, options = {})
      request = build_request(:list_attendees, params)
      request.send_request(options)
    end

    # <p>Returns a list of the tags available for the specified resource.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
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

    # <p>Starts transcription for the specified <code>meetingId</code>. For more information, refer to <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html">
    #             Using Amazon Chime SDK live transcription
    #         </a> in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    #          <p>If you specify an invalid configuration, a <code>TranscriptFailed</code> event will be sent with the contents of the <code>BadRequestException</code> generated by Amazon Transcribe.  
    #             For more information on each parameter and which combinations are valid, refer to the 
    #             <a href="https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html">StartStreamTranscription</a> API in the 
    #             <i>Amazon Transcribe Developer Guide</i>.</p>
    #          <note>
    #             <p>By default, Amazon Transcribe may use and store audio content processed by the service to develop and improve Amazon Web Services AI/ML services as 
    #             further described in section 50 of the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a>. Using Amazon Transcribe 
    #             may be subject to federal and state laws or regulations regarding the recording or interception of electronic communications. It is your and your end users’ 
    #             responsibility to comply with all applicable laws regarding the recording, including properly notifying all participants in a recorded session or communication 
    #             that the session or communication is being recorded, and obtaining all necessary consents. You can opt out from Amazon Web Services using audio content to develop and 
    #             improve AWS AI/ML services by configuring an AI services opt out policy using Amazon Web Services Organizations.</p>
    #          </note>
    # @param [Hash, Types::StartMeetingTranscriptionRequest] params
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting being transcribed.</p>
    # @option params [Types::TranscriptionConfiguration] :transcription_configuration
    #   <p>The configuration for the current transcription operation. Must contain <code>EngineTranscribeSettings</code> or 
    #               <code>EngineTranscribeMedicalSettings</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     transcription_configuration: { # required
    #       engine_transcribe_settings: {
    #         language_code: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "hi-IN"],
    #         vocabulary_filter_method: "remove" # One of: ["remove", "mask", "tag"],
    #         vocabulary_filter_name: "String",
    #         vocabulary_name: "String",
    #         region: "us-east-2" # One of: ["us-east-2", "us-east-1", "us-west-2", "ap-northeast-2", "ap-southeast-2", "ap-northeast-1", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "sa-east-1", "auto", "us-gov-west-1"],
    #         enable_partial_results_stabilization: false,
    #         partial_results_stability: "low" # One of: ["low", "medium", "high"],
    #         content_identification_type: "PII" # One of: ["PII"],
    #         content_redaction_type: "PII" # One of: ["PII"],
    #         pii_entity_types: "TranscribePiiEntityTypes",
    #         language_model_name: "TranscribeLanguageModelName",
    #         identify_language: false,
    #         language_options: "TranscribeLanguageOptions",
    #         preferred_language: "en-US" # One of: ["en-US", "en-GB", "es-US", "fr-CA", "fr-FR", "en-AU", "it-IT", "de-DE", "pt-BR", "ja-JP", "ko-KR", "zh-CN", "th-TH", "hi-IN"],
    #         vocabulary_names: "TranscribeVocabularyNamesOrFilterNamesString",
    #         vocabulary_filter_names: "TranscribeVocabularyNamesOrFilterNamesString"
    #       },
    #       engine_transcribe_medical_settings: {
    #         language_code: "en-US" # One of: ["en-US"], # required
    #         specialty: "PRIMARYCARE" # One of: ["PRIMARYCARE", "CARDIOLOGY", "NEUROLOGY", "ONCOLOGY", "RADIOLOGY", "UROLOGY"], # required
    #         type: "CONVERSATION" # One of: ["CONVERSATION", "DICTATION"], # required
    #         vocabulary_name: "String",
    #         region: "us-east-1" # One of: ["us-east-1", "us-east-2", "us-west-2", "ap-southeast-2", "ca-central-1", "eu-west-1", "auto"],
    #         content_identification_type: "PHI" # One of: ["PHI"]
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_meeting_transcription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def start_meeting_transcription(params = {}, options = {})
      request = build_request(:start_meeting_transcription, params)
      request.send_request(options)
    end

    # <p>Stops transcription for the specified <code>meetingId</code>. For more information, refer to <a href="https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html">
    #             Using Amazon Chime SDK live transcription
    #         </a> in the <i>Amazon Chime SDK Developer Guide</i>.</p>
    #          <important>
    #             <p>By default, Amazon Transcribe may use and store audio content processed by the service to develop and improve Amazon Web Services AI/ML services as 
    #                     further described in section 50 of the <a href="https://aws.amazon.com/service-terms/">Amazon Web Services Service Terms</a>. Using Amazon Transcribe 
    #                     may be subject to federal and state laws or regulations regarding the recording or interception of electronic communications. It is your and your end users’ 
    #                     responsibility to comply with all applicable laws regarding the recording, including properly notifying all participants in a recorded session or communication 
    #                     that the session or communication is being recorded, and obtaining all necessary consents. You can opt out from Amazon Web Services using audio content to develop and 
    #                     improve Amazon Web Services AI/ML services by configuring an AI services opt out policy using Amazon Web Services Organizations.</p>
    #          </important>
    # @param [Hash, Types::StopMeetingTranscriptionRequest] params
    # @option params [String] :meeting_id
    #   <p>The unique ID of the meeting for which you stop transcription.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #   }
    #   options = {}
    #   response = client.stop_meeting_transcription(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def stop_meeting_transcription(params = {}, options = {})
      request = build_request(:stop_meeting_transcription, params)
      request.send_request(options)
    end

    # <p>The resource that supports tags.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>Lists the requested tags.</p>
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

    # <p>Removes the specified tags from the specified resources. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you 
    #                 attempt to remove tags from a resource that were already removed. Note the following:</p>
    #          <ul>
    #             <li>
    #                <p>To remove tags from a resource, you need the necessary permissions for the service that the resource belongs to as well as permissions for removing tags. For more information, 
    #                 see the documentation for the service whose resource you want to untag.</p>
    #             </li>
    #             <li>
    #                <p>You can only tag resources that are located in the specified Amazon Web Services Region for the calling Amazon Web Services account.</p>
    #             </li>
    #          </ul>
    #          <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>In addition to the <code>tag:UntagResources</code> permission required by this operation, you must also have the remove tags permission defined by the service that created the resource. 
    #                 For example, to remove the tags from an Amazon EC2 instance using the <code>UntagResources</code> operation, you must have both of the following permissions:</p>
    #          <p>
    #             <code>tag:UntagResource</code>
    #          </p>
    #          <p>
    #             <code>ChimeSDKMeetings:DeleteTags</code>
    #          </p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource that you're removing tags from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys being removed from the resources.</p>
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

    # <p>The capabilities that you want to update.</p>
    #          <note>
    #             <p>You use the capabilities with a set of values that control what the capabilities can do, such as <code>SendReceive</code> data. For more information about those values, see 
    #             .</p>
    #          </note>
    #          <p>When using capabilities, be aware of these corner cases:</p>
    #          <ul>
    #             <li>
    #                <p>If you specify <code>MeetingFeatures:Video:MaxResolution:None</code> when you create a meeting, all API requests 
    #                     that include <code>SendReceive</code>, <code>Send</code>, or <code>Receive</code> for <code>AttendeeCapabilities:Video</code> will be rejected with <code>ValidationError 400</code>.</p>
    #             </li>
    #             <li>
    #                <p>If you specify <code>MeetingFeatures:Content:MaxResolution:None</code> when you create a meeting, all API requests that include <code>SendReceive</code>, <code>Send</code>, or 
    #                     <code>Receive</code> for <code>AttendeeCapabilities:Content</code> will be rejected with <code>ValidationError 400</code>.</p>
    #             </li>
    #             <li>
    #                <p>You can't set <code>content</code> capabilities to <code>SendReceive</code> or <code>Receive</code> unless you also set <code>video</code> capabilities to <code>SendReceive</code> 
    #                     or <code>Receive</code>. If you don't set the <code>video</code> capability to receive, the response will contain an HTTP 400 Bad Request status code. However, you can set your <code>video</code> capability 
    #                     to receive and you set your <code>content</code> capability to not receive.</p>
    #             </li>
    #             <li>
    #                <p>If meeting features is defined as <code>Video:MaxResolution:None</code> but
    #                     <code>Content:MaxResolution</code> is defined as something other than
    #                     <code>None</code> and attendee capabilities are not defined in the API
    #                     request, then the default attendee video capability is set to
    #                     <code>Receive</code> and attendee content capability is set to
    #                     <code>SendReceive</code>. This is because content <code>SendReceive</code>
    #                     requires video to be at least <code>Receive</code>.</p>
    #             </li>
    #             <li>
    #                <p>When you change an <code>audio</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                     and if the attendee left their microphone unmuted, audio will flow from the attendee to the other meeting participants.</p>
    #             </li>
    #             <li>
    #                <p>When you change a <code>video</code> or <code>content</code> capability from <code>None</code> or <code>Receive</code> to <code>Send</code> or <code>SendReceive</code> , 
    #                     and if the attendee turned on their video or content streams, remote attendees can receive those streams, but only after media renegotiation between the client and the Amazon Chime back-end server.</p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::UpdateAttendeeCapabilitiesRequest] params
    # @option params [String] :meeting_id
    #   <p>The ID of the meeting associated with the update request.</p>
    # @option params [String] :attendee_id
    #   <p>The ID of the attendee associated with the update request.</p>
    # @option params [Types::AttendeeCapabilities] :capabilities
    #   <p>The capabilities that you want to update.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     meeting_id: "GuidString", # required
    #     attendee_id: "GuidString", # required
    #     capabilities: { # required
    #       audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #     }
    #   }
    #   options = {}
    #   response = client.update_attendee_capabilities(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attendee: {
    #       external_user_id: "ExternalUserId",
    #       attendee_id: "GuidString",
    #       join_token: "JoinTokenString",
    #       capabilities: {
    #         audio: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         video: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #         content: "SendReceive" # One of: ["SendReceive", "Send", "Receive", "None"], # required
    #       }
    #     }
    #   }
    # @return [Types::UpdateAttendeeCapabilitiesResponse]
    def update_attendee_capabilities(params = {}, options = {})
      request = build_request(:update_attendee_capabilities, params)
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
      context[:gem_name] = 'aws-sdk-chimesdkmeetings'
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
