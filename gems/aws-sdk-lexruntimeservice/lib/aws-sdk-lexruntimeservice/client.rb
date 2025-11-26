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
require 'smithy-client/plugins/sign_requests'
require 'smithy-client/plugins/stub_responses'
require 'aws-sdk-core/plugins/global_configuration'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/sigv4'

Aws::Core::Plugins::GlobalConfiguration.add_identifier(:lexruntimeservice)

module Aws::LexRuntimeService
  # An API client for Aws::LexRuntimeService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSDeepSenseRunTimeService
    @identifier = :lexruntimeservice

    add_plugin(::Aws::LexRuntimeService::Plugins::Endpoint)
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
    add_plugin(Smithy::Client::Plugins::SignRequests)
    add_plugin(Smithy::Client::Plugins::StubResponses)
    add_plugin(Aws::Core::Plugins::GlobalConfiguration)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LexRuntimeService::EndpointProvider)
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
    # @option options [#call(attempts)] :retry_backoff (Smithy::Client::Retry::ExponentialBackoff.new)
    #  A callable object that calculates a backoff delay for a retry attempt. The callable
    #  should accept a single argument, `attempts`, that represents the number of attempts
    #  that have been made. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_base_delay (2)
    #  The base delay, in seconds, used to calculate the exponential backoff for
    #  retry attempts. This option is ignored if a custom `retry_backoff` is provided.
    #  Used in the `standard` and `adaptive` retry strategies.
    # @option options [Integer] :retry_max_attempts (3)
    #  The maximum number attempts that will be made for a single request, including
    #  the initial attempt. Used in the `standard` and `adaptive` retry strategies.
    # @option options :retry_max_delay (20)
    #  The maximum delay, in seconds, between retry attempts. This option is ignored
    #  if a custom `retry_backoff` is provided. Used in the `standard` and `adaptive`
    #  retry strategies.
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

    # <p>Removes session information for a specified bot, alias, and user ID.
    #     </p>
    # @param [Hash, Types::DeleteSessionRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the bot that contains the session data.</p>
    # @option params [String] :bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    # @option params [String] :user_id
    #   <p>The identifier of the user associated with the session data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #   }
    #   options = {}
    #   response = client.delete_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot_name: "BotName",
    #     bot_alias: "BotAlias",
    #     user_id: "UserId",
    #     session_id: "String"
    #   }
    # @return [Types::DeleteSessionResponse]
    def delete_session(params = {}, options = {})
      request = build_request(:delete_session, params)
      request.send_request(options)
    end

    # <p>Returns session information for a specified bot, alias, and user
    #       ID.</p>
    # @param [Hash, Types::GetSessionRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the bot that contains the session data.</p>
    # @option params [String] :bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. </p>
    # @option params [String] :checkpoint_label_filter
    #   <p>A string used to filter the intents returned in the
    #           <code>recentIntentSummaryView</code> structure. </p>
    #            <p>When you specify a filter, only intents with their
    #           <code>checkpointLabel</code> field set to that string are
    #         returned.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     checkpoint_label_filter: "IntentSummaryCheckpointLabel"
    #   }
    #   options = {}
    #   response = client.get_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     recent_intent_summary_view: [
    #       {
    #         intent_name: "IntentName",
    #         checkpoint_label: "IntentSummaryCheckpointLabel",
    #         slots: {
    #           "String" => "String"
    #         },
    #         confirmation_status: "None" # One of: ["None", "Confirmed", "Denied"],
    #         dialog_action_type: "ElicitIntent" # One of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"], # required
    #         fulfillment_state: "Fulfilled" # One of: ["Fulfilled", "Failed", "ReadyForFulfillment"],
    #         slot_to_elicit: "String"
    #       }
    #     ],
    #     session_attributes: {
    #       "String" => "String"
    #     },
    #     session_id: "String",
    #     dialog_action: {
    #       type: "ElicitIntent" # One of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"], # required
    #       intent_name: "IntentName",
    #       slots: {
    #         "String" => "String"
    #       },
    #       slot_to_elicit: "String",
    #       fulfillment_state: "Fulfilled" # One of: ["Fulfilled", "Failed", "ReadyForFulfillment"],
    #       message: "Text",
    #       message_format: "PlainText" # One of: ["PlainText", "CustomPayload", "SSML", "Composite"]
    #     },
    #     active_contexts: [
    #       {
    #         name: "ActiveContextName", # required
    #         time_to_live: { # required
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1
    #         },
    #         parameters: { # required
    #           "ParameterName" => "Text"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetSessionResponse]
    def get_session(params = {}, options = {})
      request = build_request(:get_session, params)
      request.send_request(options)
    end

    # <p> Sends user input (text or speech) to Amazon Lex. Clients use this API to
    #       send text and audio requests to Amazon Lex at runtime. Amazon Lex interprets the
    #       user input using the machine learning model that it built for the bot. </p>
    #          <p>The <code>PostContent</code> operation supports audio input at 8kHz
    #       and 16kHz. You can use 8kHz audio to achieve higher speech recognition
    #       accuracy in telephone audio applications. </p>
    #          <p> In response, Amazon Lex returns the next message to convey to the user.
    #       Consider the following example messages: </p>
    #          <ul>
    #             <li>
    #                <p> For a user input "I would like a pizza," Amazon Lex might return a
    #           response with a message eliciting slot data (for example,
    #             <code>PizzaSize</code>): "What size pizza would you like?". </p>
    #             </li>
    #             <li>
    #                <p> After the user provides all of the pizza order information, Amazon Lex
    #           might return a response with a message to get user confirmation:
    #           "Order the pizza?". </p>
    #             </li>
    #             <li>
    #                <p> After the user replies "Yes" to the confirmation prompt, Amazon Lex
    #           might return a conclusion statement: "Thank you, your cheese pizza has
    #           been ordered.". </p>
    #             </li>
    #          </ul>
    #          <p> Not all Amazon Lex messages require a response from the user. For example,
    #       conclusion statements do not require a response. Some messages require
    #       only a yes or no response. In addition to the <code>message</code>, Amazon Lex
    #       provides additional context about the message in the response that you can
    #       use to enhance client behavior, such as displaying the appropriate client
    #       user interface. Consider the following examples: </p>
    #          <ul>
    #             <li>
    #                <p> If the message is to elicit slot data, Amazon Lex returns the
    #           following context information: </p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-dialog-state</code> header set to
    #                 <code>ElicitSlot</code>
    #                      </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-intent-name</code> header set to the intent name
    #               in the current context </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-slot-to-elicit</code> header set to the slot name
    #               for which the <code>message</code> is eliciting information
    #             </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>x-amz-lex-slots</code> header set to a map of slots
    #               configured for the intent with their current values </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p> If the message is a confirmation prompt, the
    #             <code>x-amz-lex-dialog-state</code> header is set to
    #             <code>Confirmation</code> and the
    #             <code>x-amz-lex-slot-to-elicit</code> header is omitted. </p>
    #             </li>
    #             <li>
    #                <p> If the message is a clarification prompt configured for the
    #           intent, indicating that the user intent is not understood, the
    #             <code>x-amz-dialog-state</code> header is set to
    #             <code>ElicitIntent</code> and the <code>x-amz-slot-to-elicit</code>
    #           header is omitted. </p>
    #             </li>
    #          </ul>
    #          <p> In addition, Amazon Lex also returns your application-specific
    #         <code>sessionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    #         Conversation Context</a>. </p>
    # @param [Hash, Types::PostContentRequest] params
    # @option params [String] :bot_name
    #   <p>Name of the Amazon Lex bot.</p>
    # @option params [String] :bot_alias
    #   <p>Alias of the Amazon Lex bot.</p>
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. At runtime, each request must contain
    #         the <code>userID</code> field.</p>
    #            <p>To decide the user ID to use for your application, consider the
    #         following factors.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>userID</code> field must not contain any personally
    #             identifiable information of the user, for example, name, personal
    #             identification numbers, or other end user personal information.</p>
    #               </li>
    #               <li>
    #                  <p>If you want a user to start a conversation on one device and
    #             continue on another device, use a user-specific identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If you want the same user to be able to have two independent
    #             conversations on two different devices, choose a device-specific
    #             identifier.</p>
    #               </li>
    #               <li>
    #                  <p>A user can't have two independent conversations with two different
    #             versions of the same bot. For example, a user can't have a
    #             conversation with the PROD and BETA versions of the same bot. If you
    #             anticipate that a user will need to have conversation with two
    #             different versions, for example, while testing, include the bot alias
    #             in the user ID to separate the two conversations.</p>
    #               </li>
    #            </ul>
    # @option params [String] :session_attributes
    #   <p>You pass this value as the <code>x-amz-lex-session-attributes</code>
    #         HTTP header.</p>
    #            <p>Application-specific information passed between Amazon Lex and a client
    #         application. The value must be a JSON serialized and base64 encoded map
    #         with string keys and values. The total size of the
    #           <code>sessionAttributes</code> and <code>requestAttributes</code>
    #         headers is limited to 12 KB.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs">Setting Session Attributes</a>.</p>
    # @option params [String] :request_attributes
    #   <p>You pass this value as the <code>x-amz-lex-request-attributes</code>
    #         HTTP header.</p>
    #            <p>Request-specific information passed between Amazon Lex and a client
    #         application. The value must be a JSON serialized and base64 encoded map
    #         with string keys and values. The total size of the
    #           <code>requestAttributes</code> and <code>sessionAttributes</code>
    #         headers is limited to 12 KB.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #         attributes. Don't create any request attributes with the prefix
    #           <code>x-amz-lex:</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs">Setting Request Attributes</a>.</p>
    # @option params [String] :content_type
    #   <p> You pass this value as the <code>Content-Type</code> HTTP header. </p>
    #            <p> Indicates the audio format or text. The header value must start with
    #         one of the following prefixes: </p>
    #            <ul>
    #               <li>
    #                  <p>PCM format, audio data must be in little-endian byte order.</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/l16; rate=16000; channels=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/x-l16; sample-rate=16000; channel-count=1</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/lpcm; sample-rate=8000; sample-size-bits=16;
    #                 channel-count=1; is-big-endian=false </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>Opus format</p>
    #                  <ul>
    #                     <li>
    #                        <p>audio/x-cbr-opus-with-preamble; preamble-size=0;
    #                 bit-rate=256000; frame-size-milliseconds=4</p>
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
    # @option params [String] :accept
    #   <p> You pass this value as the <code>Accept</code> HTTP header. </p>
    #            <p> The message Amazon Lex returns in the response can be either text or
    #         speech based on the <code>Accept</code> HTTP header value in the request. </p>
    #            <ul>
    #               <li>
    #                  <p> If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
    #             returns text in the response. </p>
    #               </li>
    #               <li>
    #                  <p> If the value begins with <code>audio/</code>, Amazon Lex returns
    #             speech in the response. Amazon Lex uses Amazon Polly to generate the speech
    #             (using the configuration you specified in the <code>Accept</code>
    #             header). For example, if you specify <code>audio/mpeg</code> as the
    #             value, Amazon Lex returns speech in the MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech returned is
    #               <code>audio/pcm</code> in 16-bit, little endian format.
    #             </p>
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
    #                        <p>audio/pcm</p>
    #                     </li>
    #                     <li>
    #                        <p>text/plain; charset=utf-8</p>
    #                     </li>
    #                     <li>
    #                        <p>audio/* (defaults to mpeg)</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [String] :input_stream
    #   <p> User input in PCM or Opus audio format or text format as described in
    #         the <code>Content-Type</code> HTTP header. </p>
    #            <p>You can stream audio data to Amazon Lex or you can create a local buffer
    #         that captures all of the audio data before sending. In general, you get
    #         better performance if you stream audio data rather than buffering the data
    #         locally.</p>
    # @option params [String] :active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: "SynthesizedJsonAttributesString",
    #     request_attributes: "SynthesizedJsonAttributesString",
    #     content_type: "HttpContentType", # required
    #     accept: "Accept",
    #     input_stream: File.read("source_file"), # required
    #     active_contexts: "SynthesizedJsonActiveContextsString"
    #   }
    #   options = {}
    #   response = client.post_content(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "HttpContentType",
    #     intent_name: "IntentName",
    #     nlu_intent_confidence: "SynthesizedJsonString",
    #     alternative_intents: "SynthesizedJsonString",
    #     slots: "SynthesizedJsonString",
    #     session_attributes: "SynthesizedJsonString",
    #     sentiment_response: "String",
    #     message: "Text",
    #     encoded_message: "SensitiveString",
    #     message_format: "PlainText" # One of: ["PlainText", "CustomPayload", "SSML", "Composite"],
    #     dialog_state: "ElicitIntent" # One of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"],
    #     slot_to_elicit: "String",
    #     input_transcript: "String",
    #     encoded_input_transcript: "SensitiveStringUnbounded",
    #     audio_stream: File.read("source_file"),
    #     bot_version: "BotVersion",
    #     session_id: "String",
    #     active_contexts: "SynthesizedJsonActiveContextsString"
    #   }
    # @return [Types::PostContentResponse]
    def post_content(params = {}, options = {})
      request = build_request(:post_content, params)
      request.send_request(options)
    end

    # <p>Sends user input to Amazon Lex. Client applications can use this API to
    #       send requests to Amazon Lex at runtime. Amazon Lex then interprets the user input
    #       using the machine learning model it built for the bot. </p>
    #          <p> In response, Amazon Lex returns the next <code>message</code> to convey to
    #       the user an optional <code>responseCard</code> to display. Consider the
    #       following example messages: </p>
    #          <ul>
    #             <li>
    #                <p> For a user input "I would like a pizza", Amazon Lex might return a
    #           response with a message eliciting slot data (for example, PizzaSize):
    #           "What size pizza would you like?" </p>
    #             </li>
    #             <li>
    #                <p> After the user provides all of the pizza order information,
    #           Amazon Lex might return a response with a message to obtain user
    #           confirmation "Proceed with the pizza order?". </p>
    #             </li>
    #             <li>
    #                <p> After the user replies to a confirmation prompt with a "yes",
    #           Amazon Lex might return a conclusion statement: "Thank you, your cheese
    #           pizza has been ordered.". </p>
    #             </li>
    #          </ul>
    # 
    #          <p> Not all Amazon Lex messages require a user response. For example, a
    #       conclusion statement does not require a response. Some messages require
    #       only a "yes" or "no" user response. In addition to the
    #         <code>message</code>, Amazon Lex provides additional context about the
    #       message in the response that you might use to enhance client behavior, for
    #       example, to display the appropriate client user interface. These are the
    #         <code>slotToElicit</code>, <code>dialogState</code>,
    #         <code>intentName</code>, and <code>slots</code> fields in the response.
    #       Consider the following examples: </p>
    # 
    #          <ul>
    #             <li>
    #                <p>If the message is to elicit slot data, Amazon Lex returns the
    #           following context information:</p>
    #                <ul>
    #                   <li>
    #                      <p>
    #                         <code>dialogState</code> set to ElicitSlot </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>intentName</code> set to the intent name in the current
    #               context </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>slotToElicit</code> set to the slot name for which the
    #                 <code>message</code> is eliciting information </p>
    #                   </li>
    #                   <li>
    #                      <p>
    #                         <code>slots</code> set to a map of slots, configured for the
    #               intent, with currently known values </p>
    #                   </li>
    #                </ul>
    #             </li>
    #             <li>
    #                <p> If the message is a confirmation prompt, the
    #             <code>dialogState</code> is set to ConfirmIntent and
    #             <code>SlotToElicit</code> is set to null. </p>
    #             </li>
    #             <li>
    #                <p>If the message is a clarification prompt (configured for the
    #           intent) that indicates that user intent is not understood, the
    #             <code>dialogState</code> is set to ElicitIntent and
    #             <code>slotToElicit</code> is set to null. </p>
    #             </li>
    #          </ul>
    # 
    #          <p> In addition, Amazon Lex also returns your application-specific
    #         <code>sessionAttributes</code>. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html">Managing
    #         Conversation Context</a>. </p>
    # @param [Hash, Types::PostTextRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    # @option params [String] :bot_alias
    #   <p>The alias of the Amazon Lex bot.</p>
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. At runtime, each request must contain
    #         the <code>userID</code> field.</p>
    #            <p>To decide the user ID to use for your application, consider the
    #         following factors.</p>
    #            <ul>
    #               <li>
    #                  <p>The <code>userID</code> field must not contain any personally
    #             identifiable information of the user, for example, name, personal
    #             identification numbers, or other end user personal information.</p>
    #               </li>
    #               <li>
    #                  <p>If you want a user to start a conversation on one device and
    #             continue on another device, use a user-specific identifier.</p>
    #               </li>
    #               <li>
    #                  <p>If you want the same user to be able to have two independent
    #             conversations on two different devices, choose a device-specific
    #             identifier.</p>
    #               </li>
    #               <li>
    #                  <p>A user can't have two independent conversations with two different
    #             versions of the same bot. For example, a user can't have a
    #             conversation with the PROD and BETA versions of the same bot. If you
    #             anticipate that a user will need to have conversation with two
    #             different versions, for example, while testing, include the bot alias
    #             in the user ID to separate the two conversations.</p>
    #               </li>
    #            </ul>
    # @option params [Hash<String, String>] :session_attributes
    #   <p>Application-specific information passed between Amazon Lex and a client
    #         application.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-session-attribs">Setting Session Attributes</a>.</p>
    # @option params [Hash<String, String>] :request_attributes
    #   <p>Request-specific information passed between Amazon Lex and a client
    #         application.</p>
    #            <p>The namespace <code>x-amz-lex:</code> is reserved for special
    #         attributes. Don't create any request attributes with the prefix
    #           <code>x-amz-lex:</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html#context-mgmt-request-attribs">Setting Request Attributes</a>.</p>
    # @option params [String] :input_text
    #   <p>The text that the user entered (Amazon Lex interprets this text).</p>
    # @option params [Array<Types::ActiveContext>] :active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: {
    #       "String" => "String"
    #     },
    #     request_attributes: {
    #       "String" => "String"
    #     },
    #     input_text: "Text", # required
    #     active_contexts: [
    #       {
    #         name: "ActiveContextName", # required
    #         time_to_live: { # required
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1
    #         },
    #         parameters: { # required
    #           "ParameterName" => "Text"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.post_text(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     intent_name: "IntentName",
    #     nlu_intent_confidence: {
    #       score: 1.0
    #     },
    #     alternative_intents: [
    #       {
    #         intent_name: "IntentName",
    #         nlu_intent_confidence: {
    #           score: 1.0
    #         },
    #         slots: {
    #           "String" => "String"
    #         }
    #       }
    #     ],
    #     slots: {
    #       "String" => "String"
    #     },
    #     session_attributes: {
    #       "String" => "String"
    #     },
    #     message: "Text",
    #     sentiment_response: {
    #       sentiment_label: "SentimentLabel",
    #       sentiment_score: "SentimentScore"
    #     },
    #     message_format: "PlainText" # One of: ["PlainText", "CustomPayload", "SSML", "Composite"],
    #     dialog_state: "ElicitIntent" # One of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"],
    #     slot_to_elicit: "String",
    #     response_card: {
    #       version: "String",
    #       content_type: "application/vnd.amazonaws.card.generic" # One of: ["application/vnd.amazonaws.card.generic"],
    #       generic_attachments: [
    #         {
    #           title: "StringWithLength",
    #           sub_title: "StringWithLength",
    #           attachment_link_url: "StringUrlWithLength",
    #           image_url: "StringUrlWithLength",
    #           buttons: [
    #             {
    #               text: "ButtonTextStringWithLength", # required
    #               value: "ButtonValueStringWithLength", # required
    #             }
    #           ]
    #         }
    #       ]
    #     },
    #     session_id: "String",
    #     bot_version: "BotVersion",
    #     active_contexts: [
    #       {
    #         name: "ActiveContextName", # required
    #         time_to_live: { # required
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1
    #         },
    #         parameters: { # required
    #           "ParameterName" => "Text"
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::PostTextResponse]
    def post_text(params = {}, options = {})
      request = build_request(:post_text, params)
      request.send_request(options)
    end

    # <p>Creates a new session or modifies an existing session with an Amazon Lex
    #       bot. Use this operation to enable your application to set the state of the
    #       bot.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/how-session-api.html">Managing
    #         Sessions</a>.</p>
    # @param [Hash, Types::PutSessionRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the bot that contains the session data.</p>
    # @option params [String] :bot_alias
    #   <p>The alias in use for the bot that contains the session data.</p>
    # @option params [String] :user_id
    #   <p>The ID of the client application user. Amazon Lex uses this to identify a
    #         user's conversation with your bot. </p>
    # @option params [Hash<String, String>] :session_attributes
    #   <p>Map of key/value pairs representing the session-specific context
    #         information. It contains application information passed between Amazon Lex and
    #         a client application.</p>
    # @option params [Types::DialogAction] :dialog_action
    #   <p>Sets the next action that the bot should take to fulfill the
    #         conversation.</p>
    # @option params [Array<Types::IntentSummary>] :recent_intent_summary_view
    #   <p>A summary of the recent intents for the bot. You can use the intent
    #         summary view to set a checkpoint label on an intent and modify attributes
    #         of intents. You can also use it to remove or add intent summary objects to
    #         the list.</p>
    #            <p>An intent that you modify or add to the list must make sense for the
    #         bot. For example, the intent name must be valid for the bot. You must
    #         provide valid values for:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>intentName</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>slot names</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>slotToElict</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>If you send the <code>recentIntentSummaryView</code> parameter in a
    #           <code>PutSession</code> request, the contents of the new summary view
    #         replaces the old summary view. For example, if a <code>GetSession</code>
    #         request returns three intents in the summary view and you call
    #           <code>PutSession</code> with one intent in the summary view, the next
    #         call to <code>GetSession</code> will only return one intent.</p>
    # @option params [String] :accept
    #   <p>The message that Amazon Lex returns in the response can be either text or
    #         speech based depending on the value of this field.</p>
    #            <ul>
    #               <li>
    #                  <p>If the value is <code>text/plain; charset=utf-8</code>, Amazon Lex
    #             returns text in the response.</p>
    #               </li>
    #               <li>
    #                  <p>If the value begins with <code>audio/</code>, Amazon Lex returns speech
    #             in the response. Amazon Lex uses Amazon Polly to generate the speech in the
    #             configuration that you specify. For example, if you specify
    #               <code>audio/mpeg</code> as the value, Amazon Lex returns speech in the
    #             MPEG format.</p>
    #               </li>
    #               <li>
    #                  <p>If the value is <code>audio/pcm</code>, the speech is returned as
    #               <code>audio/pcm</code> in 16-bit, little endian format.</p>
    #               </li>
    #               <li>
    #                  <p>The following are the accepted values:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>audio/mpeg</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/ogg</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/pcm</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>audio/*</code> (defaults to mpeg)</p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>text/plain; charset=utf-8</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    # @option params [Array<Types::ActiveContext>] :active_contexts
    #   <p>A list of contexts active for the request. A context can be activated
    #         when a previous intent is fulfilled, or by including the context in the
    #         request,</p>
    #            <p>If you don't specify a list of contexts, Amazon Lex will use the current
    #         list of contexts for the session. If you specify an empty list, all
    #         contexts for the session are cleared.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: {
    #       "String" => "String"
    #     },
    #     dialog_action: {
    #       type: "ElicitIntent" # One of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"], # required
    #       intent_name: "IntentName",
    #       slots: {
    #         "String" => "String"
    #       },
    #       slot_to_elicit: "String",
    #       fulfillment_state: "Fulfilled" # One of: ["Fulfilled", "Failed", "ReadyForFulfillment"],
    #       message: "Text",
    #       message_format: "PlainText" # One of: ["PlainText", "CustomPayload", "SSML", "Composite"]
    #     },
    #     recent_intent_summary_view: [
    #       {
    #         intent_name: "IntentName",
    #         checkpoint_label: "IntentSummaryCheckpointLabel",
    #         slots: {
    #           "String" => "String"
    #         },
    #         confirmation_status: "None" # One of: ["None", "Confirmed", "Denied"],
    #         dialog_action_type: "ElicitIntent" # One of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Close", "Delegate"], # required
    #         fulfillment_state: "Fulfilled" # One of: ["Fulfilled", "Failed", "ReadyForFulfillment"],
    #         slot_to_elicit: "String"
    #       }
    #     ],
    #     accept: "Accept",
    #     active_contexts: [
    #       {
    #         name: "ActiveContextName", # required
    #         time_to_live: { # required
    #           time_to_live_in_seconds: 1,
    #           turns_to_live: 1
    #         },
    #         parameters: { # required
    #           "ParameterName" => "Text"
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_session(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     content_type: "HttpContentType",
    #     intent_name: "IntentName",
    #     slots: "SynthesizedJsonString",
    #     session_attributes: "SynthesizedJsonString",
    #     message: "Text",
    #     encoded_message: "SensitiveString",
    #     message_format: "PlainText" # One of: ["PlainText", "CustomPayload", "SSML", "Composite"],
    #     dialog_state: "ElicitIntent" # One of: ["ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"],
    #     slot_to_elicit: "String",
    #     audio_stream: File.read("source_file"),
    #     session_id: "String",
    #     active_contexts: "SynthesizedJsonActiveContextsString"
    #   }
    # @return [Types::PutSessionResponse]
    def put_session(params = {}, options = {})
      request = build_request(:put_session, params)
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
      context[:gem_name] = 'aws-sdk-lexruntimeservice'
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
