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

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:connectparticipant)

module Aws::ConnectParticipant
  # An API client for Aws::ConnectParticipant.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonConnectParticipantServiceLambda
    @identifier = :connectparticipant

    add_plugin(::Aws::ConnectParticipant::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::ConnectParticipant::EndpointProvider)
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

    # <p>Cancels the authentication session. The opted out branch of the Authenticate Customer
    #             flow block will be taken.</p>
    #          <note>
    #             <p>The current supported channel is chat. This API is not supported for Apple
    #                 Messages for Business, WhatsApp, or SMS chats.</p>
    #          </note>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::CancelParticipantAuthenticationRequest] params
    # @option params [String] :session_id
    #   <p>The <code>sessionId</code> provided in the <code>authenticationInitiated</code>
    #               event.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.cancel_participant_authentication(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CancelParticipantAuthenticationResponse]
    def cancel_participant_authentication(params = {}, options = {})
      request = build_request(:cancel_participant_authentication, params)
      request.send_request(options)
    end

    # <p>Allows you to confirm that the attachment has been uploaded using the pre-signed URL
    #             provided in StartAttachmentUpload API. A conflict exception is thrown when an attachment
    #             with that identifier is already being uploaded.</p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::CompleteAttachmentUploadRequest] params
    # @option params [Array<String>] :attachment_ids
    #   <p>A list of unique identifiers for the attachments.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_ids: ["ArtifactId"], # required
    #     client_token: "NonEmptyClientToken", # required
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.complete_attachment_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::CompleteAttachmentUploadResponse]
    def complete_attachment_upload(params = {}, options = {})
      request = build_request(:complete_attachment_upload, params)
      request.send_request(options)
    end

    # <p>Creates the participant's connection. </p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <p>For WebRTC security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-webrtc-security">Amazon Connect WebRTC security best practices</a>. </p>
    #          <note>
    #             <p>
    #                <code>ParticipantToken</code> is used for invoking this API instead of
    #                     <code>ConnectionToken</code>.</p>
    #          </note>
    #          <p>The participant token is valid for the lifetime of the participant – until they are
    #             part of a contact. For WebRTC participants, if they leave or are disconnected for 60
    #             seconds, a new participant needs to be created using the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateParticipant.html">CreateParticipant</a> API. </p>
    #          <p>
    #             <b>For <code>WEBSOCKET</code> Type</b>: </p>
    #          <p>The response URL for has a connect expiry timeout of 100s. Clients must manually
    #             connect to the returned websocket URL and subscribe to the desired topic. </p>
    #          <p>For chat, you need to publish the following on the established websocket
    #             connection:</p>
    #          <p>
    #             <code>{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}</code>
    #          </p>
    #          <p>Upon websocket URL expiry, as specified in the response ConnectionExpiry parameter,
    #             clients need to call this API again to obtain a new websocket URL and perform the same
    #             steps as before.</p>
    #          <p>The expiry time for the connection token is different than the
    #                 <code>ChatDurationInMinutes</code>. Expiry time for the connection token is 1
    #             day.</p>
    #          <p>
    #             <b>For <code>WEBRTC_CONNECTION</code> Type</b>: </p>
    #          <p>The response includes connection data required for the client application to join the
    #             call using the Amazon Chime SDK client libraries. The WebRTCConnection response contains
    #             Meeting and Attendee information needed to establish the media connection. </p>
    #          <p>The attendee join token in WebRTCConnection response is valid for the lifetime of the
    #             participant in the call. If a participant leaves or is disconnected for 60 seconds,
    #             their participant credentials will no longer be valid, and a new participant will need
    #             to be created to rejoin the call. </p>
    #          <p>
    #             <b>Message streaming support</b>: This API can also be used
    #             together with the <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html">StartContactStreaming</a> API to create a participant connection for chat
    #             contacts that are not using a websocket. For more information about message streaming,
    #                 <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html">Enable real-time chat
    #                 message streaming</a> in the <i>Amazon Connect Administrator
    #             Guide</i>.</p>
    #          <p>
    #             <b>Multi-user web, in-app, video calling support</b>: </p>
    #          <p>For WebRTC calls, this API is used in conjunction with the CreateParticipant API to
    #             enable multi-party calling. The StartWebRTCContact API creates the initial contact and
    #             routes it to an agent, while CreateParticipant adds additional participants to the
    #             ongoing call. For more information about multi-party WebRTC calls, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/enable-multiuser-inapp.html">Enable multi-user web, in-app, and video calling</a> in the <i>Amazon Connect
    #                 Administrator Guide</i>. </p>
    #          <p>
    #             <b>Feature specifications</b>: For information about feature
    #             specifications, such as the allowed number of open websocket connections per participant
    #             or maximum number of WebRTC participants, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits">Feature specifications</a> in the <i>Amazon Connect Administrator
    #                 Guide</i>. </p>
    #          <note>
    #             <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    #          </note>
    # @param [Hash, Types::CreateParticipantConnectionRequest] params
    # @option params [Array<String>] :type
    #   <p>Type of connection information required. If you need
    #                   <code>CONNECTION_CREDENTIALS</code> along with marking participant as connected,
    #               pass <code>CONNECTION_CREDENTIALS</code> in <code>Type</code>.</p>
    # @option params [String] :participant_token
    #   <p>This is a header parameter.</p>
    #            <p>The ParticipantToken as obtained from <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html">StartChatContact</a>
    #               API response.</p>
    # @option params [Boolean] :connect_participant
    #   <p>Amazon Connect Participant is used to mark the participant as connected for customer
    #               participant in message streaming, as well as for agent or manager participant in
    #               non-streaming chats.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     type: ["WEBSOCKET" # One of: ["WEBSOCKET", "CONNECTION_CREDENTIALS", "WEBRTC_CONNECTION"]],
    #     participant_token: "ParticipantToken", # required
    #     connect_participant: false
    #   }
    #   options = {}
    #   response = client.create_participant_connection(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     websocket: {
    #       url: "PreSignedConnectionUrl",
    #       connection_expiry: "ISO8601Datetime"
    #     },
    #     connection_credentials: {
    #       connection_token: "ParticipantToken",
    #       expiry: "ISO8601Datetime"
    #     },
    #     web_rtc_connection: {
    #       attendee: {
    #         attendee_id: "AttendeeId",
    #         join_token: "JoinToken"
    #       },
    #       meeting: {
    #         media_placement: {
    #           audio_host_url: "URI",
    #           audio_fallback_url: "URI",
    #           signaling_url: "URI",
    #           event_ingestion_url: "URI"
    #         },
    #         meeting_features: {
    #           audio: {
    #             echo_reduction: "AVAILABLE" # One of: ["AVAILABLE", "UNAVAILABLE"]
    #           }
    #         },
    #         meeting_id: "GuidString"
    #       }
    #     }
    #   }
    # @return [Types::CreateParticipantConnectionResponse]
    def create_participant_connection(params = {}, options = {})
      request = build_request(:create_participant_connection, params)
      request.send_request(options)
    end

    # <p>Retrieves the view for the specified view token.</p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    # @param [Hash, Types::DescribeViewRequest] params
    # @option params [String] :view_token
    #   <p>An encrypted token originating from the interactive message of a ShowView block
    #               operation. Represents the desired view.</p>
    # @option params [String] :connection_token
    #   <p>The connection token.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     view_token: "ViewToken", # required
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.describe_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     view: {
    #       id: "ViewId",
    #       arn: "ARN",
    #       name: "ViewName",
    #       version: 1,
    #       content: {
    #         input_schema: "ViewInputSchema",
    #         template: "ViewTemplate",
    #         actions: ["ViewAction"]
    #       }
    #     }
    #   }
    # @return [Types::DescribeViewResponse]
    def describe_view(params = {}, options = {})
      request = build_request(:describe_view, params)
      request.send_request(options)
    end

    # <p>Disconnects a participant. </p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::DisconnectParticipantRequest] params
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.disconnect_participant(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisconnectParticipantResponse]
    def disconnect_participant(params = {}, options = {})
      request = build_request(:disconnect_participant, params)
      request.send_request(options)
    end

    # <p>Provides a pre-signed URL for download of a completed attachment. This is an
    #             asynchronous API for use with active contacts.</p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>The participant role <code>CUSTOM_BOT</code> is not permitted to access
    #                         attachments customers may upload. An <code>AccessDeniedException</code> can
    #                         indicate that the participant may be a CUSTOM_BOT, and it doesn't have
    #                         access to attachments.</p>
    #                </li>
    #                <li>
    #                   <p>
    #                      <code>ConnectionToken</code> is used for invoking this API instead of
    #                             <code>ParticipantToken</code>.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::GetAttachmentRequest] params
    # @option params [String] :attachment_id
    #   <p>A unique identifier for the attachment.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @option params [Integer] :url_expiry_in_seconds
    #   <p>The expiration time of the URL in ISO timestamp. It's specified in ISO 8601 format:
    #               yyyy-MM-ddThh:mm:ss.SSSZ. For example, 2019-11-08T02:41:28.172Z.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     attachment_id: "ArtifactId", # required
    #     connection_token: "ParticipantToken", # required
    #     url_expiry_in_seconds: 1
    #   }
    #   options = {}
    #   response = client.get_attachment(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     url: "PreSignedAttachmentUrl",
    #     url_expiry: "ISO8601Datetime",
    #     attachment_size_in_bytes: 1, # required
    #   }
    # @return [Types::GetAttachmentResponse]
    def get_attachment(params = {}, options = {})
      request = build_request(:get_attachment, params)
      request.send_request(options)
    end

    # <p>Retrieves the AuthenticationUrl for the current authentication session for the
    #             AuthenticateCustomer flow block. </p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>.</p>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>This API can only be called within one minute of receiving the
    #                         authenticationInitiated event.</p>
    #                </li>
    #                <li>
    #                   <p>The current supported channel is chat. This API is not supported for Apple
    #                         Messages for Business, WhatsApp, or SMS chats.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::GetAuthenticationUrlRequest] params
    # @option params [String] :session_id
    #   <p>The sessionId provided in the authenticationInitiated event.</p>
    # @option params [String] :redirect_uri
    #   <p>The URL where the customer will be redirected after Amazon Cognito authorizes the
    #               user.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     session_id: "SessionId", # required
    #     redirect_uri: "RedirectURI", # required
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.get_authentication_url(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     authentication_url: "AuthenticationUrl"
    #   }
    # @return [Types::GetAuthenticationUrlResponse]
    def get_authentication_url(params = {}, options = {})
      request = build_request(:get_authentication_url, params)
      request.send_request(options)
    end

    # <p>Retrieves a transcript of the session, including details about any attachments. For
    #             information about accessing past chat contact transcripts for a persistent chat, see
    #                 <a href="https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html">Enable persistent chat</a>. </p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <p>If you have a process that consumes events in the transcript of an chat that has
    #             ended, note that chat transcripts contain the following event content types if the event
    #             has occurred during the chat session:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>application/vnd.amazonaws.connect.event.participant.invited</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>application/vnd.amazonaws.connect.event.participant.joined</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>application/vnd.amazonaws.connect.event.participant.left</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>application/vnd.amazonaws.connect.event.chat.ended</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>application/vnd.amazonaws.connect.event.transfer.succeeded</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>application/vnd.amazonaws.connect.event.transfer.failed</code>
    #                </p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::GetTranscriptRequest] params
    # @option params [String] :contact_id
    #   <p>The contactId from the current contact chain for which transcript is needed.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in the page. Default: 10. </p>
    # @option params [String] :next_token
    #   <p>The pagination token. Use the value returned previously in the next subsequent request
    #               to retrieve the next set of results.</p>
    # @option params [String] :scan_direction
    #   <p>The direction from StartPosition from which to retrieve message. Default: BACKWARD
    #               when no StartPosition is provided, FORWARD with StartPosition. </p>
    # @option params [String] :sort_order
    #   <p>The sort order for the records. Default: DESCENDING.</p>
    # @option params [Types::StartPosition] :start_position
    #   <p>A filtering option for where to start.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     contact_id: "ContactId",
    #     max_results: 1,
    #     next_token: "NextToken",
    #     scan_direction: "FORWARD" # One of: ["FORWARD", "BACKWARD"],
    #     sort_order: "DESCENDING" # One of: ["DESCENDING", "ASCENDING"],
    #     start_position: {
    #       id: "ChatItemId",
    #       absolute_time: "Instant",
    #       most_recent: 1
    #     },
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.get_transcript(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     initial_contact_id: "ContactId",
    #     transcript: [
    #       {
    #         absolute_time: "Instant",
    #         content: "ChatContent",
    #         content_type: "ChatContentType",
    #         id: "ChatItemId",
    #         type: "TYPING" # One of: ["TYPING", "PARTICIPANT_JOINED", "PARTICIPANT_LEFT", "CHAT_ENDED", "TRANSFER_SUCCEEDED", "TRANSFER_FAILED", "MESSAGE", "EVENT", "ATTACHMENT", "CONNECTION_ACK", "MESSAGE_DELIVERED", "MESSAGE_READ"],
    #         participant_id: "ParticipantId",
    #         display_name: "DisplayName",
    #         participant_role: "AGENT" # One of: ["AGENT", "CUSTOMER", "SYSTEM", "CUSTOM_BOT", "SUPERVISOR"],
    #         attachments: [
    #           {
    #             content_type: "ContentType",
    #             attachment_id: "ArtifactId",
    #             attachment_name: "AttachmentName",
    #             status: "APPROVED" # One of: ["APPROVED", "REJECTED", "IN_PROGRESS"]
    #           }
    #         ],
    #         message_metadata: {
    #           message_id: "ChatItemId",
    #           receipts: [
    #             {
    #               delivered_timestamp: "Instant",
    #               read_timestamp: "Instant",
    #               recipient_participant_id: "ParticipantId"
    #             }
    #           ]
    #         },
    #         related_contact_id: "ContactId",
    #         contact_id: "ContactId"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetTranscriptResponse]
    def get_transcript(params = {}, options = {})
      request = build_request(:get_transcript, params)
      request.send_request(options)
    end

    # <note>
    #             <p>The <code>application/vnd.amazonaws.connect.event.connection.acknowledged</code>
    #                 ContentType is no longer maintained since December 31, 2024. This event has been
    #                 migrated to the <a href="https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html">CreateParticipantConnection</a> API using the
    #                     <code>ConnectParticipant</code> field.</p>
    #          </note>
    #          <p>Sends an event. Message receipts are not supported when there are more than two active
    #             participants in the chat. Using the SendEvent API for message receipts when a supervisor
    #             is barged-in will result in a conflict exception.</p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::SendEventRequest] params
    # @option params [String] :content_type
    #   <p>The content type of the request. Supported types are:</p>
    #            <ul>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.typing</p>
    #               </li>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.connection.acknowledged (is no longer
    #                       maintained since December 31, 2024) </p>
    #               </li>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.message.delivered</p>
    #               </li>
    #               <li>
    #                  <p>application/vnd.amazonaws.connect.event.message.read</p>
    #               </li>
    #            </ul>
    # @option params [String] :content
    #   <p>The content of the event to be sent (for example, message text). For content related
    #               to message receipts, this is supported in the form of a JSON string.</p>
    #            <p>Sample Content: "{\"messageId\":\"11111111-aaaa-bbbb-cccc-EXAMPLE01234\"}"</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_type: "ChatContentType", # required
    #     content: "ChatContent",
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.send_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ChatItemId",
    #     absolute_time: "Instant"
    #   }
    # @return [Types::SendEventResponse]
    def send_event(params = {}, options = {})
      request = build_request(:send_event, params)
      request.send_request(options)
    end

    # <p>Sends a message.</p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::SendMessageRequest] params
    # @option params [String] :content_type
    #   <p>The type of the content. Possible types are <code>text/plain</code>,
    #                   <code>text/markdown</code>, <code>application/json</code>, and
    #                   <code>application/vnd.amazonaws.connect.message.interactive.response</code>.
    #               </p>
    #            <p>Supported types on the contact are configured through
    #                   <code>SupportedMessagingContentTypes</code> on <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartChatContact.html">StartChatContact</a>
    #               and <a href="https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html">StartOutboundChatContact</a>.</p>
    #            <p> For Apple Messages for Business, SMS, and WhatsApp Business Messaging contacts, only
    #                   <code>text/plain</code> is supported.</p>
    # @option params [String] :content
    #   <p>The content of the message. </p>
    #            <ul>
    #               <li>
    #                  <p>For <code>text/plain</code> and <code>text/markdown</code>, the Length
    #                       Constraints are Minimum of 1, Maximum of 1024. </p>
    #               </li>
    #               <li>
    #                  <p>For <code>application/json</code>, the Length Constraints are Minimum of 1,
    #                       Maximum of 12000. </p>
    #               </li>
    #               <li>
    #                  <p>For
    #                           <code>application/vnd.amazonaws.connect.message.interactive.response</code>,
    #                       the Length Constraints are Minimum of 1, Maximum of 12288.</p>
    #               </li>
    #            </ul>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_type: "ChatContentType", # required
    #     content: "ChatContent", # required
    #     client_token: "ClientToken",
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.send_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ChatItemId",
    #     absolute_time: "Instant"
    #   }
    # @return [Types::SendMessageResponse]
    def send_message(params = {}, options = {})
      request = build_request(:send_message, params)
      request.send_request(options)
    end

    # <p>Provides a pre-signed Amazon S3 URL in response for uploading the file directly to
    #             S3.</p>
    #          <p>For security recommendations, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat">Amazon Connect Chat security best practices</a>. </p>
    #          <note>
    #             <p>
    #                <code>ConnectionToken</code> is used for invoking this API instead of
    #                     <code>ParticipantToken</code>.</p>
    #          </note>
    #          <p>The Amazon Connect Participant Service APIs do not use <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4
    #                     authentication</a>.</p>
    # @param [Hash, Types::StartAttachmentUploadRequest] params
    # @option params [String] :content_type
    #   <p>Describes the MIME file type of the attachment. For a list of supported file types, see <a href="https://docs.aws.amazon.com/connect/latest/adminguide/feature-limits.html">Feature specifications</a> in the <i>Amazon Connect Administrator Guide</i>.</p>
    # @option params [Integer] :attachment_size_in_bytes
    #   <p>The size of the attachment in bytes.</p>
    # @option params [String] :attachment_name
    #   <p>A case-sensitive name of the attachment being uploaded.</p>
    # @option params [String] :client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #               request. If not provided, the Amazon Web Services
    #               SDK populates this field. For more information about idempotency, see
    #               <a href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making retries safe with idempotent APIs</a>.</p>
    # @option params [String] :connection_token
    #   <p>The authentication token associated with the participant's connection.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     content_type: "ContentType", # required
    #     attachment_size_in_bytes: 1, # required
    #     attachment_name: "AttachmentName", # required
    #     client_token: "NonEmptyClientToken", # required
    #     connection_token: "ParticipantToken", # required
    #   }
    #   options = {}
    #   response = client.start_attachment_upload(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     attachment_id: "ArtifactId",
    #     upload_metadata: {
    #       url: "UploadMetadataUrl",
    #       url_expiry: "ISO8601Datetime",
    #       headers_to_include: {
    #         "UploadMetadataSignedHeadersKey" => "UploadMetadataSignedHeadersValue"
    #       }
    #     }
    #   }
    # @return [Types::StartAttachmentUploadResponse]
    def start_attachment_upload(params = {}, options = {})
      request = build_request(:start_attachment_upload, params)
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
      context[:gem_name] = 'aws-sdk-connectparticipant'
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
