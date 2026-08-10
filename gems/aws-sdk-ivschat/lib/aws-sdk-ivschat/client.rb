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
require 'aws-sdk-core/rest_json'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:ivschat)

module Aws::Ivschat
  # An API client for Aws::Ivschat.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AmazonInteractiveVideoServiceChat
    @identifier = :ivschat

    add_plugin(::Aws::Ivschat::Plugins::Endpoint)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::Ivschat::EndpointProvider)
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
    # @option options [Symbol, Object] :protocol
    #  The protocol used for request serialization and response deserialization. Defaults to the service default protocol. May be a Symbol naming a supported protocol, or a custom object implementing the protocol interface.
    #  Supported protocols: +:rest_json+ (defaults to +:rest_json+).
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

    # <p>Creates an encrypted token that is used by a chat participant to establish an individual
    #          WebSocket chat connection to a room. When the token is used to connect to chat, the
    #          connection is valid for the session duration specified in the request. The token becomes
    #          invalid at the token-expiration timestamp included in the response.</p>
    #          <p>Use the <code>capabilities</code> field to permit an end user to send messages or
    #          moderate a room.</p>
    #          <p>The <code>attributes</code> field securely attaches structured data to the chat session; the data is
    #          included within each message sent by the end user and received by other participants in the
    #          room. Common use cases for attributes include passing end-user profile data like an icon,
    #          display name, colors, badges, and other display features.</p>
    #          <p>Encryption keys are owned by Amazon IVS Chat and never used directly by your
    #          application.</p>
    # @param [Hash, Types::CreateChatTokenInput] params
    # @option params [String] :room_identifier
    #   <p>Identifier of the room that the client is trying to access. Currently this must be an
    #            ARN. </p>
    # @option params [String] :user_id
    #   <p>Application-provided ID that uniquely identifies the user associated with this token.
    #            This can be any UTF-8 encoded text.</p>
    # @option params [Array<String>] :capabilities
    #   <p>Set of capabilities that the user is allowed to perform in the room. Default: None (the
    #            capability to view messages is implicitly included in all requests).</p>
    # @option params [Integer] :session_duration_in_minutes
    #   <p>Session duration (in minutes), after which the session expires. Default: 60 (1
    #            hour).</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Application-provided attributes to encode into the token and attach to a chat session.
    #            Map keys and values can contain UTF-8 encoded text. The maximum length of this field is 1
    #            KB total.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     room_identifier: "RoomIdentifier", # required
    #     user_id: "UserID", # required
    #     capabilities: ["ChatTokenCapability"],
    #     session_duration_in_minutes: 1,
    #     attributes: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.create_chat_token(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     token: "ChatToken",
    #     token_expiration_time: Time.now,
    #     session_expiration_time: Time.now
    #   }
    # @return [Types::CreateChatTokenOutput]
    def create_chat_token(params = {}, options = {})
      request = build_request(:create_chat_token, params)
      request.send_request(options)
    end

    # <p>Creates a logging configuration that allows clients to store and record sent
    #          messages.</p>
    # @param [Hash, Types::CreateLoggingConfigurationInput] params
    # @option params [String] :name
    #   <p>Logging-configuration name. The value does not need to be unique.</p>
    # @option params [Types::DestinationConfiguration] :destination_configuration
    #   <p>A complex type that contains a destination configuration for where chat content will be
    #            logged. There can be only one type of destination (<code>cloudWatchLogs</code>,
    #               <code>firehose</code>, or <code>s3</code>) in a
    #            <code>destinationConfiguration</code>.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to attach to the resource. Array of maps, each of the form <code>string:string
    #               (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints on tags beyond what is
    #            documented there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "LoggingConfigurationName",
    #     destination_configuration: { # required
    #       # One of:
    #       s3: {
    #         bucket_name: "BucketName", # required
    #       },
    #       cloud_watch_logs: {
    #         log_group_name: "LogGroupName", # required
    #       },
    #       firehose: {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       }
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.create_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "LoggingConfigurationArn",
    #     id: "LoggingConfigurationID",
    #     create_time: Time.now,
    #     update_time: Time.now,
    #     name: "LoggingConfigurationName",
    #     destination_configuration: {
    #       # One of:
    #       s3: {
    #         bucket_name: "BucketName", # required
    #       },
    #       cloud_watch_logs: {
    #         log_group_name: "LogGroupName", # required
    #       },
    #       firehose: {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       }
    #     },
    #     state: "CreateLoggingConfigurationState",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::CreateLoggingConfigurationOutput]
    def create_logging_configuration(params = {}, options = {})
      request = build_request(:create_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Creates a room that allows clients to connect and pass messages.</p>
    # @param [Hash, Types::CreateRoomInput] params
    # @option params [String] :name
    #   <p>Room name. The value does not need to be unique.</p>
    # @option params [Integer] :maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients).
    #            Default: 10. </p>
    # @option params [Integer] :maximum_message_length
    #   <p>Maximum number of characters in a single message. Messages are expected to be UTF-8
    #            encoded and this limit applies specifically to rune/code-point count, not number of bytes.
    #            Default: 500.</p>
    # @option params [Types::MessageReviewHandler] :message_review_handler
    #   <p>Configuration information for optional review of messages.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Tags to attach to the resource. Array of maps, each of the form <code>string:string
    #               (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints beyond what is documented
    #            there.</p>
    # @option params [Array<String>] :logging_configuration_identifiers
    #   <p>Array of logging-configuration identifiers attached to the room.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RoomName",
    #     maximum_message_rate_per_second: 1,
    #     maximum_message_length: 1,
    #     message_review_handler: {
    #       uri: "LambdaArn",
    #       fallback_result: "FallbackResult"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     logging_configuration_identifiers: ["LoggingConfigurationIdentifier"]
    #   }
    #   options = {}
    #   response = client.create_room(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RoomArn",
    #     id: "RoomID",
    #     name: "RoomName",
    #     create_time: Time.now,
    #     update_time: Time.now,
    #     maximum_message_rate_per_second: 1,
    #     maximum_message_length: 1,
    #     message_review_handler: {
    #       uri: "LambdaArn",
    #       fallback_result: "FallbackResult"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     logging_configuration_identifiers: ["LoggingConfigurationIdentifier"]
    #   }
    # @return [Types::CreateRoomOutput]
    def create_room(params = {}, options = {})
      request = build_request(:create_room, params)
      request.send_request(options)
    end

    # <p>Deletes the specified logging configuration.</p>
    # @param [Hash, Types::DeleteLoggingConfigurationInput] params
    # @option params [String] :identifier
    #   <p>Identifier of the logging configuration to be deleted.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "LoggingConfigurationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.delete_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_logging_configuration(params = {}, options = {})
      request = build_request(:delete_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Sends an event to a specific room which directs clients to delete a specific message;
    #          that is, unrender it from view and delete it from the client’s chat history. This event’s
    #             <code>EventName</code> is <code>aws:DELETE_MESSAGE</code>. This replicates the <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html">
    #             DeleteMessage</a> WebSocket operation in the Amazon IVS Chat Messaging API.</p>
    # @param [Hash, Types::DeleteMessageInput] params
    # @option params [String] :room_identifier
    #   <p>Identifier of the room where the message should be deleted. Currently this must be an
    #            ARN. </p>
    # @option params [String] :id
    #   <p>ID of the message to be deleted. This is the <code>Id</code> field in the received
    #            message (see <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-message-subscribe.html"> Message
    #               (Subscribe)</a> in the Chat Messaging API).</p>
    # @option params [String] :reason
    #   <p>Reason for deleting the message.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     room_identifier: "RoomIdentifier", # required
    #     id: "MessageID", # required
    #     reason: "Reason"
    #   }
    #   options = {}
    #   response = client.delete_message(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ID"
    #   }
    # @return [Types::DeleteMessageOutput]
    def delete_message(params = {}, options = {})
      request = build_request(:delete_message, params)
      request.send_request(options)
    end

    # <p>Deletes the specified room.</p>
    # @param [Hash, Types::DeleteRoomInput] params
    # @option params [String] :identifier
    #   <p>Identifier of the room to be deleted. Currently this must be an ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RoomIdentifier", # required
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

    # <p>Disconnects all connections using a specified user ID from a room. This replicates the
    #             <a href="https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html">
    #             DisconnectUser</a> WebSocket operation in the Amazon IVS Chat Messaging API.</p>
    # @param [Hash, Types::DisconnectUserInput] params
    # @option params [String] :room_identifier
    #   <p>Identifier of the room from which the user's clients should be disconnected. Currently
    #            this must be an ARN.</p>
    # @option params [String] :user_id
    #   <p>ID of the user (connection) to disconnect from the room.</p>
    # @option params [String] :reason
    #   <p>Reason for disconnecting the user.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     room_identifier: "RoomIdentifier", # required
    #     user_id: "UserID", # required
    #     reason: "Reason"
    #   }
    #   options = {}
    #   response = client.disconnect_user(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::DisconnectUserOutput]
    def disconnect_user(params = {}, options = {})
      request = build_request(:disconnect_user, params)
      request.send_request(options)
    end

    # <p>Gets the specified logging configuration.</p>
    # @param [Hash, Types::GetLoggingConfigurationInput] params
    # @option params [String] :identifier
    #   <p>Identifier of the logging configuration to be retrieved.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "LoggingConfigurationIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "LoggingConfigurationArn",
    #     id: "LoggingConfigurationID",
    #     create_time: Time.now,
    #     update_time: Time.now,
    #     name: "LoggingConfigurationName",
    #     destination_configuration: {
    #       # One of:
    #       s3: {
    #         bucket_name: "BucketName", # required
    #       },
    #       cloud_watch_logs: {
    #         log_group_name: "LogGroupName", # required
    #       },
    #       firehose: {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       }
    #     },
    #     state: "LoggingConfigurationState",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::GetLoggingConfigurationOutput]
    def get_logging_configuration(params = {}, options = {})
      request = build_request(:get_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Gets the specified room.</p>
    # @param [Hash, Types::GetRoomInput] params
    # @option params [String] :identifier
    #   <p>Identifier of the room for which the configuration is to be retrieved. Currently this
    #            must be an ARN.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RoomIdentifier", # required
    #   }
    #   options = {}
    #   response = client.get_room(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RoomArn",
    #     id: "RoomID",
    #     name: "RoomName",
    #     create_time: Time.now,
    #     update_time: Time.now,
    #     maximum_message_rate_per_second: 1,
    #     maximum_message_length: 1,
    #     message_review_handler: {
    #       uri: "LambdaArn",
    #       fallback_result: "FallbackResult"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     logging_configuration_identifiers: ["LoggingConfigurationIdentifier"]
    #   }
    # @return [Types::GetRoomOutput]
    def get_room(params = {}, options = {})
      request = build_request(:get_room, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all your logging configurations in the AWS region where
    #          the API request is processed.</p>
    # @param [Hash, Types::ListLoggingConfigurationsInput] params
    # @option params [String] :next_token
    #   <p>The first logging configurations to retrieve. This is used for pagination; see the
    #               <code>nextToken</code> response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of logging configurations to return. Default: 50.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "PaginationToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.list_logging_configurations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     logging_configurations: [ # required
    #       {
    #         arn: "LoggingConfigurationArn",
    #         id: "LoggingConfigurationID",
    #         create_time: Time.now,
    #         update_time: Time.now,
    #         name: "LoggingConfigurationName",
    #         destination_configuration: {
    #           # One of:
    #           s3: {
    #             bucket_name: "BucketName", # required
    #           },
    #           cloud_watch_logs: {
    #             log_group_name: "LogGroupName", # required
    #           },
    #           firehose: {
    #             delivery_stream_name: "DeliveryStreamName", # required
    #           }
    #         },
    #         state: "LoggingConfigurationState",
    #         tags: {
    #           "TagKey" => "TagValue"
    #         }
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListLoggingConfigurationsOutput]
    def list_logging_configurations(params = {}, options = {})
      request = build_request(:list_logging_configurations, params)
      request.send_request(options)
    end

    # <p>Gets summary information about all your rooms in the AWS region where the API request is
    #          processed. Results are sorted in descending order of <code>updateTime</code>.</p>
    # @param [Hash, Types::ListRoomsInput] params
    # @option params [String] :name
    #   <p>Filters the list to match the specified room name.</p>
    # @option params [String] :next_token
    #   <p>The first room to retrieve. This is used for pagination; see the <code>nextToken</code>
    #            response field.</p>
    # @option params [Integer] :max_results
    #   <p>Maximum number of rooms to return. Default: 50.</p>
    # @option params [String] :message_review_handler_uri
    #   <p>Filters the list to match the specified message review handler URI.</p>
    # @option params [String] :logging_configuration_identifier
    #   <p>Logging-configuration identifier.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "RoomName",
    #     next_token: "PaginationToken",
    #     max_results: 1,
    #     message_review_handler_uri: "LambdaArn",
    #     logging_configuration_identifier: "LoggingConfigurationIdentifier"
    #   }
    #   options = {}
    #   response = client.list_rooms(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     rooms: [ # required
    #       {
    #         arn: "RoomArn",
    #         id: "RoomID",
    #         name: "RoomName",
    #         message_review_handler: {
    #           uri: "LambdaArn",
    #           fallback_result: "FallbackResult"
    #         },
    #         create_time: Time.now,
    #         update_time: Time.now,
    #         tags: {
    #           "TagKey" => "TagValue"
    #         },
    #         logging_configuration_identifiers: ["LoggingConfigurationIdentifier"]
    #       }
    #     ],
    #     next_token: "PaginationToken"
    #   }
    # @return [Types::ListRoomsOutput]
    def list_rooms(params = {}, options = {})
      request = build_request(:list_rooms, params)
      request.send_request(options)
    end

    # <p>Gets information about AWS tags for the specified ARN.</p>
    # @param [Hash, Types::ListTagsForResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be retrieved. The ARN must be URL-encoded.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #   }
    #   options = {}
    #   response = client.list_tags_for_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::ListTagsForResourceOutput]
    def list_tags_for_resource(params = {}, options = {})
      request = build_request(:list_tags_for_resource, params)
      request.send_request(options)
    end

    # <p>Sends an event to a room. Use this within your application’s business logic to send
    #          events to clients of a room; e.g., to notify clients to change the way the chat UI is
    #          rendered.</p>
    # @param [Hash, Types::SendEventInput] params
    # @option params [String] :room_identifier
    #   <p>Identifier of the room to which the event will be sent. Currently this must be an
    #            ARN.</p>
    # @option params [String] :event_name
    #   <p>Application-defined name of the event to send to clients.</p>
    # @option params [Hash<String, String>] :attributes
    #   <p>Application-defined metadata to attach to the event sent to clients. The maximum length
    #            of the metadata is 1 KB total.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     room_identifier: "RoomIdentifier", # required
    #     event_name: "EventName", # required
    #     attributes: {
    #       "String" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.send_event(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     id: "ID"
    #   }
    # @return [Types::SendEventOutput]
    def send_event(params = {}, options = {})
      request = build_request(:send_event, params)
      request.send_request(options)
    end

    # <p>Adds or updates tags for the AWS resource with the specified ARN.</p>
    # @param [Hash, Types::TagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be tagged. The ARN must be URL-encoded.</p>
    # @option params [Hash<String, String>] :tags
    #   <p>Array of tags to be added or updated. Array of maps, each of the form
    #               <code>string:string (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints beyond what is documented
    #            there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tags: { # required
    #       "TagKey" => "TagValue"
    #     }
    #   }
    #   options = {}
    #   response = client.tag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::TagResourceOutput]
    def tag_resource(params = {}, options = {})
      request = build_request(:tag_resource, params)
      request.send_request(options)
    end

    # <p>Removes tags from the resource with the specified ARN.</p>
    # @param [Hash, Types::UntagResourceInput] params
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource to be untagged. The ARN must be URL-encoded.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>Array of tags to be removed. Array of maps, each of the form <code>string:string
    #               (key:value)</code>. See <a href="https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html">Best practices and strategies</a> in <i>Tagging Amazon Web Services Resources and Tag Editor</i> for details, including restrictions that apply to tags and "Tag naming limits and requirements"; Amazon IVS Chat has no constraints beyond what is documented
    #            there.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     resource_arn: "ResourceArn", # required
    #     tag_keys: ["TagKey"], # required
    #   }
    #   options = {}
    #   response = client.untag_resource(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Types::UntagResourceOutput]
    def untag_resource(params = {}, options = {})
      request = build_request(:untag_resource, params)
      request.send_request(options)
    end

    # <p>Updates a specified logging configuration.</p>
    # @param [Hash, Types::UpdateLoggingConfigurationInput] params
    # @option params [String] :identifier
    #   <p>Identifier of the logging configuration to be updated.</p>
    # @option params [String] :name
    #   <p>Logging-configuration name. The value does not need to be unique.</p>
    # @option params [Types::DestinationConfiguration] :destination_configuration
    #   <p>A complex type that contains a destination configuration for where chat content will be
    #            logged. There can be only one type of destination (<code>cloudWatchLogs</code>,
    #               <code>firehose</code>, or <code>s3</code>) in a
    #            <code>destinationConfiguration</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "LoggingConfigurationIdentifier", # required
    #     name: "LoggingConfigurationName",
    #     destination_configuration: {
    #       # One of:
    #       s3: {
    #         bucket_name: "BucketName", # required
    #       },
    #       cloud_watch_logs: {
    #         log_group_name: "LogGroupName", # required
    #       },
    #       firehose: {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.update_logging_configuration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "LoggingConfigurationArn",
    #     id: "LoggingConfigurationID",
    #     create_time: Time.now,
    #     update_time: Time.now,
    #     name: "LoggingConfigurationName",
    #     destination_configuration: {
    #       # One of:
    #       s3: {
    #         bucket_name: "BucketName", # required
    #       },
    #       cloud_watch_logs: {
    #         log_group_name: "LogGroupName", # required
    #       },
    #       firehose: {
    #         delivery_stream_name: "DeliveryStreamName", # required
    #       }
    #     },
    #     state: "UpdateLoggingConfigurationState",
    #     tags: {
    #       "TagKey" => "TagValue"
    #     }
    #   }
    # @return [Types::UpdateLoggingConfigurationOutput]
    def update_logging_configuration(params = {}, options = {})
      request = build_request(:update_logging_configuration, params)
      request.send_request(options)
    end

    # <p>Updates a room’s configuration.</p>
    # @param [Hash, Types::UpdateRoomInput] params
    # @option params [String] :identifier
    #   <p>Identifier of the room to be updated. Currently this must be an ARN.</p>
    # @option params [String] :name
    #   <p>Room name. The value does not need to be unique.</p>
    # @option params [Integer] :maximum_message_rate_per_second
    #   <p>Maximum number of messages per second that can be sent to the room (by all clients).
    #            Default: 10.</p>
    # @option params [Integer] :maximum_message_length
    #   <p>The maximum number of characters in a single message. Messages are expected to be UTF-8
    #            encoded and this limit applies specifically to rune/code-point count, not number of bytes.
    #            Default: 500.</p>
    # @option params [Types::MessageReviewHandler] :message_review_handler
    #   <p>Configuration information for optional review of messages. Specify an empty
    #               <code>uri</code> string to disassociate a message review handler from the specified
    #            room.</p>
    # @option params [Array<String>] :logging_configuration_identifiers
    #   <p>Array of logging-configuration identifiers attached to the room.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     identifier: "RoomIdentifier", # required
    #     name: "RoomName",
    #     maximum_message_rate_per_second: 1,
    #     maximum_message_length: 1,
    #     message_review_handler: {
    #       uri: "LambdaArn",
    #       fallback_result: "FallbackResult"
    #     },
    #     logging_configuration_identifiers: ["LoggingConfigurationIdentifier"]
    #   }
    #   options = {}
    #   response = client.update_room(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     arn: "RoomArn",
    #     id: "RoomID",
    #     name: "RoomName",
    #     create_time: Time.now,
    #     update_time: Time.now,
    #     maximum_message_rate_per_second: 1,
    #     maximum_message_length: 1,
    #     message_review_handler: {
    #       uri: "LambdaArn",
    #       fallback_result: "FallbackResult"
    #     },
    #     tags: {
    #       "TagKey" => "TagValue"
    #     },
    #     logging_configuration_identifiers: ["LoggingConfigurationIdentifier"]
    #   }
    # @return [Types::UpdateRoomOutput]
    def update_room(params = {}, options = {})
      request = build_request(:update_room, params)
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
      context[:gem_name] = 'aws-sdk-ivschat'
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
          rest_json: Aws::Core::RestJson
        }
      end
    end
  end
end
