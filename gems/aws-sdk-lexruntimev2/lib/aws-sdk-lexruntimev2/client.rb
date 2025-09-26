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

module Aws::LexRuntimeV2
  # An API client for Aws::LexRuntimeV2.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSDeepSenseRunTimeServiceApi20

    add_plugin(::Aws::LexRuntimeV2::Plugins::Endpoint)
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
    # @option options [Aws::LexRuntimeV2::EndpointProvider] :endpoint_provider
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

    # <p>Removes session information for a specified bot, alias, and user ID. </p>
    #          <p>You can use this operation to restart a conversation with a bot.
    #          When you remove a session, the entire history of the session is removed
    #          so that you can start again.</p>
    #          <p>You don't need to delete a session. Sessions have a time limit and
    #          will expire. Set the session time limit when you create the bot. The
    #          default is 5 minutes, but you can specify anything between 1 minute and
    #          24 hours.</p>
    #          <p>If you specify a bot or alias ID that doesn't exist, you receive a
    #             <code>BadRequestException.</code>
    #          </p>
    #          <p>If the locale doesn't exist in the bot, or if the locale hasn't been
    #          enables for the alias, you receive a
    #          <code>BadRequestException</code>.</p>
    # @param [Hash, Types::DeleteSessionRequest] params
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the session data.</p>
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that contains the session
    #            data.</p>
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session to delete.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.delete_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot_id: "BotIdentifier",
    #     bot_alias_id: "BotAliasIdentifier",
    #     locale_id: "LocaleId",
    #     session_id: "SessionId"
    #   }
    # @return [Types::DeleteSessionResponse]
    def delete_session(params = {}, options = {})
      request = build_request(:delete_session, params)
      request.send_request(options)
    end

    # <p>Returns session information for a specified bot, alias, and
    #          user.</p>
    #          <p>For example, you can use this operation to retrieve session
    #          information for a user that has left a long-running session in
    #          use.</p>
    #          <p>If the bot, alias, or session identifier doesn't exist, Amazon Lex V2
    #          returns a <code>BadRequestException</code>. If the locale doesn't exist
    #          or is not enabled for the alias, you receive a
    #             <code>BadRequestException</code>.</p>
    # @param [Hash, Types::GetSessionRequest] params
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that contains the session data.</p>
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that contains the session
    #            data.</p>
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     session_id: "NonEmptyString",
    #     messages: [
    #       {
    #         content: "Text",
    #         content_type: "CustomPayload" # One of: ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"], # required
    #         image_response_card: {
    #           title: "AttachmentTitle", # required
    #           subtitle: "AttachmentTitle",
    #           image_url: "AttachmentUrl",
    #           buttons: [
    #             {
    #               text: "ButtonText", # required
    #               value: "ButtonValue", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     interpretations: [
    #       {
    #         nlu_confidence: {
    #           score: 1.0
    #         },
    #         sentiment_response: {
    #           sentiment: "MIXED" # One of: ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"],
    #           sentiment_score: {
    #             positive: 1.0,
    #             negative: 1.0,
    #             neutral: 1.0,
    #             mixed: 1.0
    #           }
    #         },
    #         intent: {
    #           name: "NonEmptyString", # required
    #           slots: {
    #             "NonEmptyString" => {
    #               value: {
    #                 original_value: "NonEmptyString",
    #                 interpreted_value: "NonEmptyString", # required
    #                 resolved_values: ["NonEmptyString"]
    #               },
    #               shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #               values: [
    #                 {
    #                   # recursive Slot
    #                 }
    #               ],
    #               sub_slots: {
    #                 # recursive Slots
    #               }
    #             }
    #           },
    #           state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #           confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #         },
    #         interpretation_source: "Bedrock" # One of: ["Bedrock", "Lex"]
    #       }
    #     ],
    #     session_state: {
    #       dialog_action: {
    #         type: "Close" # One of: ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"], # required
    #         slot_to_elicit: "NonEmptyString",
    #         slot_elicitation_style: "Default" # One of: ["Default", "SpellByLetter", "SpellByWord"],
    #         sub_slot_to_elicit: {
    #           name: "NonEmptyString", # required
    #           sub_slot_to_elicit: {
    #             # recursive ElicitSubSlot
    #           }
    #         }
    #       },
    #       intent: {
    #         name: "NonEmptyString", # required
    #         slots: {
    #           "NonEmptyString" => {
    #             value: {
    #               original_value: "NonEmptyString",
    #               interpreted_value: "NonEmptyString", # required
    #               resolved_values: ["NonEmptyString"]
    #             },
    #             shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #             values: [
    #               {
    #                 # recursive Slot
    #               }
    #             ],
    #             sub_slots: {
    #               # recursive Slots
    #             }
    #           }
    #         },
    #         state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #         confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #       },
    #       active_contexts: [
    #         {
    #           name: "ActiveContextName", # required
    #           time_to_live: { # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #           context_attributes: { # required
    #             "ParameterName" => "Text"
    #           }
    #         }
    #       ],
    #       session_attributes: {
    #         "NonEmptyString" => "String"
    #       },
    #       originating_request_id: "NonEmptyString",
    #       runtime_hints: {
    #         slot_hints: {
    #           "Name" => {
    #             "Name" => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: "RuntimeHintPhrase", # required
    #                 }
    #               ],
    #               sub_slot_hints: {
    #                 # recursive SlotHintsSlotMap
    #               }
    #             }
    #           }
    #         }
    #       }
    #     }
    #   }
    # @return [Types::GetSessionResponse]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <p>Creates a new session or modifies an existing session with an Amazon Lex V2
    #          bot. Use this operation to enable your application to set the state of
    #          the bot.</p>
    # @param [Hash, Types::PutSessionRequest] params
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that receives the session data.</p>
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier of the bot that receives the session
    #            data.</p>
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session that receives the session data.</p>
    # @option params [Array<Types::Message>] :messages
    #   <p>A list of messages to send to the user. Messages are sent in the
    #            order that they are defined in the list.</p>
    # @option params [Types::SessionState] :session_state
    #   <p>Sets the state of the session with the user. You can use this to set
    #            the current intent, attributes, context, and dialog action. Use the
    #            dialog action to determine the next step that Amazon Lex V2 should use in the
    #            conversation with the user.</p>
    # @option params [Hash<String, String>] :request_attributes
    #   <p>Request-specific information passed between Amazon Lex V2 and the client
    #            application.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes with the prefix
    #               <code>x-amz-lex:</code>.</p>
    # @option params [String] :response_content_type
    #   <p>The message that Amazon Lex V2 returns in the response can be either text or
    #            speech depending on the value of this parameter. </p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex V2
    #                  returns text in the response.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     messages: [
    #       {
    #         content: "Text",
    #         content_type: "CustomPayload" # One of: ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"], # required
    #         image_response_card: {
    #           title: "AttachmentTitle", # required
    #           subtitle: "AttachmentTitle",
    #           image_url: "AttachmentUrl",
    #           buttons: [
    #             {
    #               text: "ButtonText", # required
    #               value: "ButtonValue", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     session_state: { # required
    #       dialog_action: {
    #         type: "Close" # One of: ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"], # required
    #         slot_to_elicit: "NonEmptyString",
    #         slot_elicitation_style: "Default" # One of: ["Default", "SpellByLetter", "SpellByWord"],
    #         sub_slot_to_elicit: {
    #           name: "NonEmptyString", # required
    #           sub_slot_to_elicit: {
    #             # recursive ElicitSubSlot
    #           }
    #         }
    #       },
    #       intent: {
    #         name: "NonEmptyString", # required
    #         slots: {
    #           "NonEmptyString" => {
    #             value: {
    #               original_value: "NonEmptyString",
    #               interpreted_value: "NonEmptyString", # required
    #               resolved_values: ["NonEmptyString"]
    #             },
    #             shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #             values: [
    #               {
    #                 # recursive Slot
    #               }
    #             ],
    #             sub_slots: {
    #               # recursive Slots
    #             }
    #           }
    #         },
    #         state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #         confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #       },
    #       active_contexts: [
    #         {
    #           name: "ActiveContextName", # required
    #           time_to_live: { # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #           context_attributes: { # required
    #             "ParameterName" => "Text"
    #           }
    #         }
    #       ],
    #       session_attributes: {
    #         "NonEmptyString" => "String"
    #       },
    #       originating_request_id: "NonEmptyString",
    #       runtime_hints: {
    #         slot_hints: {
    #           "Name" => {
    #             "Name" => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: "RuntimeHintPhrase", # required
    #                 }
    #               ],
    #               sub_slot_hints: {
    #                 # recursive SlotHintsSlotMap
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     request_attributes: {
    #       "NonEmptyString" => "String"
    #     },
    #     response_content_type: "NonEmptyString"
    #   }
    #   options = {}
    #   response = client.put_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "NonEmptyString",
    #     messages: "NonEmptyString",
    #     session_state: "NonEmptyString",
    #     request_attributes: "NonEmptyString",
    #     session_id: "SessionId",
    #     audio_stream: File.read("source_file")
    #   }
    # @return [Types::PutSessionResponse]
    def put_session(params = {}, options = {})
      request = build_request(:put_session, params)
      request.send_request(options)
    end

    # <p>Sends user input to Amazon Lex V2. Client applications use this API to send
    #          requests to Amazon Lex V2 at runtime. Amazon Lex V2 then interprets the user input
    #          using the machine learning model that it build for the bot.</p>
    #          <p>In response, Amazon Lex V2 returns the next message to convey to the user
    #          and an optional response card to display.</p>
    #          <p>If the optional post-fulfillment response is specified, the messages
    #          are returned as follows. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html">PostFulfillmentStatusSpecification</a>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Success message</b> - Returned if
    #                the Lambda function completes successfully and the intent state is
    #                fulfilled or ready fulfillment if the message is present.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Failed message</b> - The failed
    #                message is returned if the Lambda function throws an exception or
    #                if the Lambda function returns a failed intent state without a
    #                message.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Timeout message</b> - If you
    #                don't configure a timeout message and a timeout, and the Lambda
    #                function doesn't return within 30 seconds, the timeout message is
    #                returned. If you configure a timeout, the timeout message is
    #                returned when the period times out. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html">Completion message</a>.</p>
    # @param [Hash, Types::RecognizeTextRequest] params
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that processes the request.</p>
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that processes the
    #            request.</p>
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the user session that is having the
    #            conversation.</p>
    # @option params [String] :text
    #   <p>The text that the user entered. Amazon Lex V2 interprets this text.</p>
    # @option params [Types::SessionState] :session_state
    #   <p>The current state of the dialog between the user and the bot.</p>
    # @option params [Hash<String, String>] :request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2 </p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes with the prefix
    #               <code>x-amz-lex:</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     text: "Text", # required
    #     session_state: {
    #       dialog_action: {
    #         type: "Close" # One of: ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"], # required
    #         slot_to_elicit: "NonEmptyString",
    #         slot_elicitation_style: "Default" # One of: ["Default", "SpellByLetter", "SpellByWord"],
    #         sub_slot_to_elicit: {
    #           name: "NonEmptyString", # required
    #           sub_slot_to_elicit: {
    #             # recursive ElicitSubSlot
    #           }
    #         }
    #       },
    #       intent: {
    #         name: "NonEmptyString", # required
    #         slots: {
    #           "NonEmptyString" => {
    #             value: {
    #               original_value: "NonEmptyString",
    #               interpreted_value: "NonEmptyString", # required
    #               resolved_values: ["NonEmptyString"]
    #             },
    #             shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #             values: [
    #               {
    #                 # recursive Slot
    #               }
    #             ],
    #             sub_slots: {
    #               # recursive Slots
    #             }
    #           }
    #         },
    #         state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #         confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #       },
    #       active_contexts: [
    #         {
    #           name: "ActiveContextName", # required
    #           time_to_live: { # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #           context_attributes: { # required
    #             "ParameterName" => "Text"
    #           }
    #         }
    #       ],
    #       session_attributes: {
    #         "NonEmptyString" => "String"
    #       },
    #       originating_request_id: "NonEmptyString",
    #       runtime_hints: {
    #         slot_hints: {
    #           "Name" => {
    #             "Name" => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: "RuntimeHintPhrase", # required
    #                 }
    #               ],
    #               sub_slot_hints: {
    #                 # recursive SlotHintsSlotMap
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     request_attributes: {
    #       "NonEmptyString" => "String"
    #     }
    #   }
    #   options = {}
    #   response = client.recognize_text(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     messages: [
    #       {
    #         content: "Text",
    #         content_type: "CustomPayload" # One of: ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"], # required
    #         image_response_card: {
    #           title: "AttachmentTitle", # required
    #           subtitle: "AttachmentTitle",
    #           image_url: "AttachmentUrl",
    #           buttons: [
    #             {
    #               text: "ButtonText", # required
    #               value: "ButtonValue", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     session_state: {
    #       dialog_action: {
    #         type: "Close" # One of: ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"], # required
    #         slot_to_elicit: "NonEmptyString",
    #         slot_elicitation_style: "Default" # One of: ["Default", "SpellByLetter", "SpellByWord"],
    #         sub_slot_to_elicit: {
    #           name: "NonEmptyString", # required
    #           sub_slot_to_elicit: {
    #             # recursive ElicitSubSlot
    #           }
    #         }
    #       },
    #       intent: {
    #         name: "NonEmptyString", # required
    #         slots: {
    #           "NonEmptyString" => {
    #             value: {
    #               original_value: "NonEmptyString",
    #               interpreted_value: "NonEmptyString", # required
    #               resolved_values: ["NonEmptyString"]
    #             },
    #             shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #             values: [
    #               {
    #                 # recursive Slot
    #               }
    #             ],
    #             sub_slots: {
    #               # recursive Slots
    #             }
    #           }
    #         },
    #         state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #         confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #       },
    #       active_contexts: [
    #         {
    #           name: "ActiveContextName", # required
    #           time_to_live: { # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #           context_attributes: { # required
    #             "ParameterName" => "Text"
    #           }
    #         }
    #       ],
    #       session_attributes: {
    #         "NonEmptyString" => "String"
    #       },
    #       originating_request_id: "NonEmptyString",
    #       runtime_hints: {
    #         slot_hints: {
    #           "Name" => {
    #             "Name" => {
    #               runtime_hint_values: [
    #                 {
    #                   phrase: "RuntimeHintPhrase", # required
    #                 }
    #               ],
    #               sub_slot_hints: {
    #                 # recursive SlotHintsSlotMap
    #               }
    #             }
    #           }
    #         }
    #       }
    #     },
    #     interpretations: [
    #       {
    #         nlu_confidence: {
    #           score: 1.0
    #         },
    #         sentiment_response: {
    #           sentiment: "MIXED" # One of: ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"],
    #           sentiment_score: {
    #             positive: 1.0,
    #             negative: 1.0,
    #             neutral: 1.0,
    #             mixed: 1.0
    #           }
    #         },
    #         intent: {
    #           name: "NonEmptyString", # required
    #           slots: {
    #             "NonEmptyString" => {
    #               value: {
    #                 original_value: "NonEmptyString",
    #                 interpreted_value: "NonEmptyString", # required
    #                 resolved_values: ["NonEmptyString"]
    #               },
    #               shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #               values: [
    #                 {
    #                   # recursive Slot
    #                 }
    #               ],
    #               sub_slots: {
    #                 # recursive Slots
    #               }
    #             }
    #           },
    #           state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #           confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #         },
    #         interpretation_source: "Bedrock" # One of: ["Bedrock", "Lex"]
    #       }
    #     ],
    #     request_attributes: {
    #       "NonEmptyString" => "String"
    #     },
    #     session_id: "SessionId",
    #     recognized_bot_member: {
    #       bot_id: "BotIdentifier", # required
    #       bot_name: "Name"
    #     }
    #   }
    # @return [Types::RecognizeTextResponse]
    def recognize_text(params = {}, options = {})
      request = build_request(:recognize_text, params)
      request.send_request(options)
    end

    # <p>Sends user input to Amazon Lex V2. You can send text or speech. Clients use
    #          this API to send text and audio requests to Amazon Lex V2 at runtime. Amazon Lex V2
    #          interprets the user input using the machine learning model built for
    #          the bot.</p>
    #          <p>The following request fields must be compressed with gzip and then
    #          base64 encoded before you send them to Amazon Lex V2. </p>
    #          <ul>
    #             <li>
    #                <p>requestAttributes</p>
    #             </li>
    #             <li>
    #                <p>sessionState</p>
    #             </li>
    #          </ul>
    #          <p>The following response fields are compressed using gzip and then
    #          base64 encoded by Amazon Lex V2. Before you can use these fields, you must
    #          decode and decompress them. </p>
    #          <ul>
    #             <li>
    #                <p>inputTranscript</p>
    #             </li>
    #             <li>
    #                <p>interpretations</p>
    #             </li>
    #             <li>
    #                <p>messages</p>
    #             </li>
    #             <li>
    #                <p>requestAttributes</p>
    #             </li>
    #             <li>
    #                <p>sessionState</p>
    #             </li>
    #          </ul>
    #          <p>The example contains a Java application that compresses and encodes
    #          a Java object to send to Amazon Lex V2, and a second that decodes and
    #          decompresses a response from Amazon Lex V2.</p>
    #          <p>If the optional post-fulfillment response is specified, the messages
    #          are returned as follows. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html">PostFulfillmentStatusSpecification</a>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Success message</b> - Returned if
    #                the Lambda function completes successfully and the intent state is
    #                fulfilled or ready fulfillment if the message is present.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Failed message</b> - The failed
    #                message is returned if the Lambda function throws an exception or
    #                if the Lambda function returns a failed intent state without a
    #                message.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Timeout message</b> - If you
    #                don't configure a timeout message and a timeout, and the Lambda
    #                function doesn't return within 30 seconds, the timeout message is
    #                returned. If you configure a timeout, the timeout message is
    #                returned when the period times out. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html">Completion message</a>.</p>
    # @param [Hash, Types::RecognizeUtteranceRequest] params
    # @option params [String] :bot_id
    #   <p>The identifier of the bot that should receive the request.</p>
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that should receive the
    #            request.</p>
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the session in use.</p>
    # @option params [String] :session_state
    #   <p>Sets the state of the session with the user. You can use this to set
    #            the current intent, attributes, context, and dialog action. Use the
    #            dialog action to determine the next step that Amazon Lex V2 should use in the
    #            conversation with the user.</p>
    #            <p>The <code>sessionState</code> field must be compressed using gzip
    #            and then base64 encoded before sending to Amazon Lex V2.</p>
    # @option params [String] :request_attributes
    #   <p>Request-specific information passed between the client application
    #            and Amazon Lex V2 </p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #            attributes. Don't create any request attributes for prefix
    #               <code>x-amz-lex:</code>.</p>
    #            <p>The <code>requestAttributes</code> field must be compressed using
    #            gzip and then base64 encoded before sending to Amazon Lex V2.</p>
    # @option params [String] :request_content_type
    #   <p>Indicates the format for audio input or that the content is text.
    #            The header must start with one of the following prefixes:</p>
    #            <ul>
    #               <li>
    #                  <p>PCM format, audio data must be in little-endian byte
    #                  order.</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/l16; rate=16000; channels=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #                        channel-count=1; is-big-endian=false</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Opus format</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/x-cbr-opus-with-preamble;preamble-size=0;bit-rate=256000;frame-size-milliseconds=4</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Text format</p>
    #                  <ul>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :response_content_type
    #   <p>The message that Amazon Lex V2 returns in the response can be either text or
    #            speech based on the <code>responseContentType</code> value.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain;charset=utf-8</code>, Amazon Lex V2
    #                  returns text in the response.</p>
    #               </li>
    #               <li>
    #                  <p>If the value begins with <code>audio/</code>, Amazon Lex V2 returns
    #                  speech in the response. Amazon Lex V2 uses Amazon Polly to generate the speech
    #                  using the configuration that you specified in the
    #                     <code>responseContentType</code> parameter. For example, if you
    #                  specify <code>audio/mpeg</code> as the value, Amazon Lex V2 returns
    #                  speech in the MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech returned is
    #                     <code>audio/pcm</code> at 16 KHz in 16-bit, little-endian
    #                  format.</p>
    #               </li>
    #               <li>
    #                  <p>The following are the accepted values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/mpeg</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/ogg</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/pcm (16 KHz)</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/* (defaults to mpeg)</p>
    #                     </li>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :input_stream
    #   <p>User input in PCM or Opus audio format or text format as described
    #            in the <code>requestContentType</code> parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     session_state: "SensitiveNonEmptyString",
    #     request_attributes: "SensitiveNonEmptyString",
    #     request_content_type: "NonEmptyString", # required
    #     response_content_type: "NonEmptyString",
    #     input_stream: File.read("source_file")
    #   }
    #   options = {}
    #   response = client.recognize_utterance(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     input_mode: "NonEmptyString",
    #     content_type: "NonEmptyString",
    #     messages: "NonEmptyString",
    #     interpretations: "NonEmptyString",
    #     session_state: "NonEmptyString",
    #     request_attributes: "NonEmptyString",
    #     session_id: "SessionId",
    #     input_transcript: "NonEmptyString",
    #     audio_stream: File.read("source_file"),
    #     recognized_bot_member: "NonEmptyString"
    #   }
    # @return [Types::RecognizeUtteranceResponse]
    def recognize_utterance(params = {}, options = {})
      request = build_request(:recognize_utterance, params)
      request.send_request(options)
    end

    # <p>Starts an HTTP/2 bidirectional event stream that enables you to send
    #          audio, text, or DTMF input in real time. After your application starts
    #          a conversation, users send input to Amazon Lex V2 as a stream of events. Amazon Lex V2
    #          processes the incoming events and responds with streaming text or audio
    #          events. 
    #       </p>
    #          <p>Audio input must be in the following format: <code>audio/lpcm
    #             sample-rate=8000 sample-size-bits=16 channel-count=1;
    #             is-big-endian=false</code>.</p>
    #          <p>If the optional post-fulfillment response is specified, the messages
    #          are returned as follows. For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/API_PostFulfillmentStatusSpecification.html">PostFulfillmentStatusSpecification</a>.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Success message</b> - Returned if
    #                the Lambda function completes successfully and the intent state is
    #                fulfilled or ready fulfillment if the message is present.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Failed message</b> - The failed
    #                message is returned if the Lambda function throws an exception or
    #                if the Lambda function returns a failed intent state without a
    #                message.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Timeout message</b> - If you
    #                don't configure a timeout message and a timeout, and the Lambda
    #                function doesn't return within 30 seconds, the timeout message is
    #                returned. If you configure a timeout, the timeout message is
    #                returned when the period times out. </p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete.html">Completion message</a>.</p>
    #          <p>If the optional update message is configured, it is played at the
    #          specified frequency while the Lambda function is running and the update
    #          message state is active. If the fulfillment update message is not
    #          active, the Lambda function runs with a 30 second timeout. </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-update.html">Update message </a>
    #          </p>
    #          <p>The <code>StartConversation</code> operation is supported only in
    #          the following SDKs: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/goto/SdkForCpp/runtime.lex.v2-2020-08-07/StartConversation">AWS SDK for C++</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/goto/SdkForJavaV2/runtime.lex.v2-2020-08-07/StartConversation">AWS SDK for Java V2</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/goto/SdkForRubyV3/runtime.lex.v2-2020-08-07/StartConversation">AWS SDK for Ruby V3</a>
    #                </p>
    #             </li>
    #          </ul>
    # @param [Hash, Types::StartConversationRequest] params
    # @option params [String] :bot_id
    #   <p>The identifier of the bot to process the request.</p>
    # @option params [String] :bot_alias_id
    #   <p>The alias identifier in use for the bot that processes the
    #            request.</p>
    # @option params [String] :locale_id
    #   <p>The locale where the session is in use.</p>
    # @option params [String] :session_id
    #   <p>The identifier of the user session that is having the
    #            conversation.</p>
    # @option params [String] :conversation_mode
    #   <p>The conversation type that you are using the Amazon Lex V2. If the
    #            conversation mode is <code>AUDIO</code> you can send both audio and
    #            DTMF information. If the mode is <code>TEXT</code> you can only send
    #            text.</p>
    # @option params [Types::StartConversationRequestEventStream] :request_event_stream
    #   <p>Represents the stream of events to Amazon Lex V2 from your application. The
    #            events are encoded as HTTP/2 data frames.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_id: "BotIdentifier", # required
    #     bot_alias_id: "BotAliasIdentifier", # required
    #     locale_id: "LocaleId", # required
    #     session_id: "SessionId", # required
    #     conversation_mode: "AUDIO" # One of: ["AUDIO", "TEXT"],
    #     request_event_stream: { # required
    #       # One of:
    #       configuration_event: {
    #         request_attributes: {
    #           "NonEmptyString" => "String"
    #         },
    #         response_content_type: "NonEmptyString", # required
    #         session_state: {
    #           dialog_action: {
    #             type: "Close" # One of: ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"], # required
    #             slot_to_elicit: "NonEmptyString",
    #             slot_elicitation_style: "Default" # One of: ["Default", "SpellByLetter", "SpellByWord"],
    #             sub_slot_to_elicit: {
    #               name: "NonEmptyString", # required
    #               sub_slot_to_elicit: {
    #                 # recursive ElicitSubSlot
    #               }
    #             }
    #           },
    #           intent: {
    #             name: "NonEmptyString", # required
    #             slots: {
    #               "NonEmptyString" => {
    #                 value: {
    #                   original_value: "NonEmptyString",
    #                   interpreted_value: "NonEmptyString", # required
    #                   resolved_values: ["NonEmptyString"]
    #                 },
    #                 shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #                 values: [
    #                   {
    #                     # recursive Slot
    #                   }
    #                 ],
    #                 sub_slots: {
    #                   # recursive Slots
    #                 }
    #               }
    #             },
    #             state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #             confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #           },
    #           active_contexts: [
    #             {
    #               name: "ActiveContextName", # required
    #               time_to_live: { # required
    #                 time_to_live_in_seconds: 1, # required
    #                 turns_to_live: 1, # required
    #               },
    #               context_attributes: { # required
    #                 "ParameterName" => "Text"
    #               }
    #             }
    #           ],
    #           session_attributes: {
    #             "NonEmptyString" => "String"
    #           },
    #           originating_request_id: "NonEmptyString",
    #           runtime_hints: {
    #             slot_hints: {
    #               "Name" => {
    #                 "Name" => {
    #                   runtime_hint_values: [
    #                     {
    #                       phrase: "RuntimeHintPhrase", # required
    #                     }
    #                   ],
    #                   sub_slot_hints: {
    #                     # recursive SlotHintsSlotMap
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         welcome_messages: [
    #           {
    #             content: "Text",
    #             content_type: "CustomPayload" # One of: ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"], # required
    #             image_response_card: {
    #               title: "AttachmentTitle", # required
    #               subtitle: "AttachmentTitle",
    #               image_url: "AttachmentUrl",
    #               buttons: [
    #                 {
    #                   text: "ButtonText", # required
    #                   value: "ButtonValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         disable_playback: false,
    #         event_id: "EventId",
    #         client_timestamp_millis: 1
    #       },
    #       audio_input_event: {
    #         audio_chunk: "data",
    #         content_type: "NonEmptyString", # required
    #         event_id: "EventId",
    #         client_timestamp_millis: 1
    #       },
    #       dtmf_input_event: {
    #         input_character: "DTMFRegex", # required
    #         event_id: "EventId",
    #         client_timestamp_millis: 1
    #       },
    #       text_input_event: {
    #         text: "Text", # required
    #         event_id: "EventId",
    #         client_timestamp_millis: 1
    #       },
    #       playback_completion_event: {
    #         event_id: "EventId",
    #         client_timestamp_millis: 1
    #       },
    #       disconnection_event: {
    #         event_id: "EventId",
    #         client_timestamp_millis: 1
    #       }
    #     }
    #   }
    #   options = {}
    #   response = client.start_conversation(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     response_event_stream: {
    #       # One of:
    #       playback_interruption_event: {
    #         event_reason: "DTMF_START_DETECTED" # One of: ["DTMF_START_DETECTED", "TEXT_DETECTED", "VOICE_START_DETECTED"],
    #         caused_by_event_id: "EventId",
    #         event_id: "EventId"
    #       },
    #       transcript_event: {
    #         transcript: "String",
    #         event_id: "EventId"
    #       },
    #       intent_result_event: {
    #         input_mode: "Text" # One of: ["Text", "Speech", "DTMF"],
    #         interpretations: [
    #           {
    #             nlu_confidence: {
    #               score: 1.0
    #             },
    #             sentiment_response: {
    #               sentiment: "MIXED" # One of: ["MIXED", "NEGATIVE", "NEUTRAL", "POSITIVE"],
    #               sentiment_score: {
    #                 positive: 1.0,
    #                 negative: 1.0,
    #                 neutral: 1.0,
    #                 mixed: 1.0
    #               }
    #             },
    #             intent: {
    #               name: "NonEmptyString", # required
    #               slots: {
    #                 "NonEmptyString" => {
    #                   value: {
    #                     original_value: "NonEmptyString",
    #                     interpreted_value: "NonEmptyString", # required
    #                     resolved_values: ["NonEmptyString"]
    #                   },
    #                   shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #                   values: [
    #                     {
    #                       # recursive Slot
    #                     }
    #                   ],
    #                   sub_slots: {
    #                     # recursive Slots
    #                   }
    #                 }
    #               },
    #               state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #               confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #             },
    #             interpretation_source: "Bedrock" # One of: ["Bedrock", "Lex"]
    #           }
    #         ],
    #         session_state: {
    #           dialog_action: {
    #             type: "Close" # One of: ["Close", "ConfirmIntent", "Delegate", "ElicitIntent", "ElicitSlot", "None"], # required
    #             slot_to_elicit: "NonEmptyString",
    #             slot_elicitation_style: "Default" # One of: ["Default", "SpellByLetter", "SpellByWord"],
    #             sub_slot_to_elicit: {
    #               name: "NonEmptyString", # required
    #               sub_slot_to_elicit: {
    #                 # recursive ElicitSubSlot
    #               }
    #             }
    #           },
    #           intent: {
    #             name: "NonEmptyString", # required
    #             slots: {
    #               "NonEmptyString" => {
    #                 value: {
    #                   original_value: "NonEmptyString",
    #                   interpreted_value: "NonEmptyString", # required
    #                   resolved_values: ["NonEmptyString"]
    #                 },
    #                 shape: "Scalar" # One of: ["Scalar", "List", "Composite"],
    #                 values: [
    #                   {
    #                     # recursive Slot
    #                   }
    #                 ],
    #                 sub_slots: {
    #                   # recursive Slots
    #                 }
    #               }
    #             },
    #             state: "Failed" # One of: ["Failed", "Fulfilled", "InProgress", "ReadyForFulfillment", "Waiting", "FulfillmentInProgress"],
    #             confirmation_state: "Confirmed" # One of: ["Confirmed", "Denied", "None"]
    #           },
    #           active_contexts: [
    #             {
    #               name: "ActiveContextName", # required
    #               time_to_live: { # required
    #                 time_to_live_in_seconds: 1, # required
    #                 turns_to_live: 1, # required
    #               },
    #               context_attributes: { # required
    #                 "ParameterName" => "Text"
    #               }
    #             }
    #           ],
    #           session_attributes: {
    #             "NonEmptyString" => "String"
    #           },
    #           originating_request_id: "NonEmptyString",
    #           runtime_hints: {
    #             slot_hints: {
    #               "Name" => {
    #                 "Name" => {
    #                   runtime_hint_values: [
    #                     {
    #                       phrase: "RuntimeHintPhrase", # required
    #                     }
    #                   ],
    #                   sub_slot_hints: {
    #                     # recursive SlotHintsSlotMap
    #                   }
    #                 }
    #               }
    #             }
    #           }
    #         },
    #         request_attributes: {
    #           "NonEmptyString" => "String"
    #         },
    #         session_id: "SessionId",
    #         event_id: "EventId",
    #         recognized_bot_member: {
    #           bot_id: "BotIdentifier", # required
    #           bot_name: "Name"
    #         }
    #       },
    #       text_response_event: {
    #         messages: [
    #           {
    #             content: "Text",
    #             content_type: "CustomPayload" # One of: ["CustomPayload", "ImageResponseCard", "PlainText", "SSML"], # required
    #             image_response_card: {
    #               title: "AttachmentTitle", # required
    #               subtitle: "AttachmentTitle",
    #               image_url: "AttachmentUrl",
    #               buttons: [
    #                 {
    #                   text: "ButtonText", # required
    #                   value: "ButtonValue", # required
    #                 }
    #               ]
    #             }
    #           }
    #         ],
    #         event_id: "EventId"
    #       },
    #       audio_response_event: {
    #         audio_chunk: "data",
    #         content_type: "NonEmptyString",
    #         event_id: "EventId"
    #       },
    #       heartbeat_event: {
    #         event_id: "EventId"
    #       },
    #       access_denied_exception: {
    #         message: "String", # required
    #       },
    #       resource_not_found_exception: {
    #         message: "String", # required
    #       },
    #       validation_exception: {
    #         message: "String", # required
    #       },
    #       throttling_exception: {
    #         message: "String", # required
    #       },
    #       internal_server_exception: {
    #         message: "String", # required
    #       },
    #       conflict_exception: {
    #         message: "String", # required
    #       },
    #       dependency_failed_exception: {
    #         message: "String", # required
    #       },
    #       bad_gateway_exception: {
    #         message: "String", # required
    #       }
    #     }
    #   }
    # @return [Types::StartConversationResponse]
    def start_conversation(params = {}, options = {})
      request = build_request(:start_conversation, params)
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
      context[:gem_name] = 'aws-sdk-lexruntimev2'
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
