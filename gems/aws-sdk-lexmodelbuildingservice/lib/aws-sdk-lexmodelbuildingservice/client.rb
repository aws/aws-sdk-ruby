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
require 'aws-sdk-core/plugins/regional_endpoints'
require 'aws-sdk-core/plugins/shared_config'
require 'aws-sdk-core/plugins/user_agent'
require 'aws-sdk-core/plugins/rest_json_protocol'
require 'aws-sdk-core/plugins/sigv4'

module Aws::LexModelBuildingService
  # An API client for Aws::LexModelBuildingService.
  # See {#initialize} for a full list of supported configuration options.
  class Client < Smithy::Client::Base
    include Smithy::Client::Stubs

    self.service = Schema::AWSDeepSenseModelBuildingService

    add_plugin(::Aws::LexModelBuildingService::Plugins::Endpoint)
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
    add_plugin(Aws::Core::Plugins::RegionalEndpoints)
    add_plugin(Aws::Core::Plugins::SharedConfig)
    add_plugin(Aws::Core::Plugins::UserAgent)
    add_plugin(Aws::Core::Plugins::RestJsonProtocol)
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
    # @option options [#resolve(parameters)] :endpoint_provider (Aws::LexModelBuildingService::EndpointProvider)
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

    # <p>Creates a new version of the bot based on the <code>$LATEST</code>
    #       version. If the <code>$LATEST</code> version of this resource hasn't
    #       changed since you created the last version, Amazon Lex doesn't create a new
    #       version. It returns the last created version.</p>
    #          <note>
    #             <p>You can update only the <code>$LATEST</code> version of the bot.
    #         You can't update the numbered versions that you create with the
    #           <code>CreateBotVersion</code> operation.</p>
    #          </note>
    #          <p> When you create the first version of a bot, Amazon Lex sets the version
    #       to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p>
    #          <p> This operation requires permission for the
    #         <code>lex:CreateBotVersion</code> action. </p>
    # @param [Hash, Types::CreateBotVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the bot that you want to create a new version of. The
    #         name is case sensitive. </p>
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code> version
    #         of the bot. If you specify a checksum and the <code>$LATEST</code> version
    #         of the bot has a different checksum, a
    #           <code>PreconditionFailedException</code> exception is returned and Amazon Lex
    #         doesn't publish a new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotName", # required
    #     checksum: "String"
    #   }
    #   options = {}
    #   response = client.create_bot_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "BotName",
    #     description: "Description",
    #     intents: [
    #       {
    #         intent_name: "IntentName", # required
    #         intent_version: "Version", # required
    #       }
    #     ],
    #     clarification_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     abort_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     status: "BUILDING" # One of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"],
    #     failure_reason: "String",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     idle_session_ttl_in_seconds: 1,
    #     voice_id: "String",
    #     checksum: "String",
    #     version: "Version",
    #     locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #     child_directed: false,
    #     enable_model_improvements: false,
    #     detect_sentiment: false
    #   }
    # @return [Types::CreateBotVersionResponse]
    def create_bot_version(params = {}, options = {})
      request = build_request(:create_bot_version, params)
      request.send_request(options)
    end

    # <p>Creates a new version of an intent based on the
    #         <code>$LATEST</code> version of the intent. If the <code>$LATEST</code>
    #       version of this intent hasn't changed since you last updated it, Amazon Lex
    #       doesn't create a new version. It returns the last version you
    #       created.</p>
    #          <note>
    #             <p>You can update only the <code>$LATEST</code> version of the
    #         intent. You can't update the numbered versions that you create with the
    #           <code>CreateIntentVersion</code> operation.</p>
    #          </note>
    #          <p> When you create a version of an intent, Amazon Lex sets the version to
    #       1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p>
    #          <p>This operation requires permissions to perform the
    #         <code>lex:CreateIntentVersion</code> action. </p>
    # @param [Hash, Types::CreateIntentVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the intent that you want to create a new version of.
    #         The name is case sensitive. </p>
    # @option params [String] :checksum
    #   <p>Checksum of the <code>$LATEST</code> version of the intent that
    #         should be used to create the new version. If you specify a checksum and
    #         the <code>$LATEST</code> version of the intent has a different checksum,
    #         Amazon Lex returns a <code>PreconditionFailedException</code> exception and
    #         doesn't publish a new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IntentName", # required
    #     checksum: "String"
    #   }
    #   options = {}
    #   response = client.create_intent_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "IntentName",
    #     description: "Description",
    #     slots: [
    #       {
    #         name: "SlotName", # required
    #         description: "Description",
    #         slot_constraint: "Required" # One of: ["Required", "Optional"], # required
    #         slot_type: "CustomOrBuiltinSlotTypeName",
    #         slot_type_version: "Version",
    #         value_elicitation_prompt: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #               content: "ContentString", # required
    #               group_number: 1
    #             }
    #           ],
    #           max_attempts: 1, # required
    #           response_card: "ResponseCard"
    #         },
    #         priority: 1,
    #         sample_utterances: ["Utterance"],
    #         response_card: "ResponseCard",
    #         obfuscation_setting: "NONE" # One of: ["NONE", "DEFAULT_OBFUSCATION"],
    #         default_value_spec: {
    #           default_value_list: [ # required
    #             {
    #               default_value: "SlotDefaultValueString", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     sample_utterances: ["Utterance"],
    #     confirmation_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     rejection_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     follow_up_prompt: {
    #       prompt: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         max_attempts: 1, # required
    #         response_card: "ResponseCard"
    #       },
    #       rejection_statement: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         response_card: "ResponseCard"
    #       }
    #     },
    #     conclusion_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     dialog_code_hook: {
    #       uri: "LambdaARN", # required
    #       message_version: "MessageVersion", # required
    #     },
    #     fulfillment_activity: {
    #       type: "ReturnIntent" # One of: ["ReturnIntent", "CodeHook"], # required
    #       code_hook: {
    #         uri: "LambdaARN", # required
    #         message_version: "MessageVersion", # required
    #       }
    #     },
    #     parent_intent_signature: "BuiltinIntentSignature",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     version: "Version",
    #     checksum: "String",
    #     kendra_configuration: {
    #       kendra_index: "KendraIndexArn", # required
    #       query_filter_string: "QueryFilterString",
    #       role: "roleArn", # required
    #     },
    #     input_contexts: [
    #       {
    #         name: "InputContextName", # required
    #       }
    #     ],
    #     output_contexts: [
    #       {
    #         name: "OutputContextName", # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::CreateIntentVersionResponse]
    def create_intent_version(params = {}, options = {})
      request = build_request(:create_intent_version, params)
      request.send_request(options)
    end

    # <p>Creates a new version of a slot type based on the
    #         <code>$LATEST</code> version of the specified slot type. If the
    #         <code>$LATEST</code> version of this resource has not changed since the
    #       last version that you created, Amazon Lex doesn't create a new version. It
    #       returns the last version that you created. </p>
    #          <note>
    #             <p>You can update only the <code>$LATEST</code> version of a slot
    #         type. You can't update the numbered versions that you create with the
    #           <code>CreateSlotTypeVersion</code> operation.</p>
    #          </note>
    #          <p>When you create a version of a slot type, Amazon Lex sets the version to
    #       1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p>
    #          <p>This operation requires permissions for the
    #         <code>lex:CreateSlotTypeVersion</code> action.</p>
    # @param [Hash, Types::CreateSlotTypeVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the slot type that you want to create a new version
    #         for. The name is case sensitive. </p>
    # @option params [String] :checksum
    #   <p>Checksum for the <code>$LATEST</code> version of the slot type that
    #         you want to publish. If you specify a checksum and the
    #           <code>$LATEST</code> version of the slot type has a different checksum,
    #         Amazon Lex returns a <code>PreconditionFailedException</code> exception and
    #         doesn't publish the new version. If you don't specify a checksum, Amazon Lex
    #         publishes the <code>$LATEST</code> version.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SlotTypeName", # required
    #     checksum: "String"
    #   }
    #   options = {}
    #   response = client.create_slot_type_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "SlotTypeName",
    #     description: "Description",
    #     enumeration_values: [
    #       {
    #         value: "Value", # required
    #         synonyms: ["Value"]
    #       }
    #     ],
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     version: "Version",
    #     checksum: "String",
    #     value_selection_strategy: "ORIGINAL_VALUE" # One of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"],
    #     parent_slot_type_signature: "CustomOrBuiltinSlotTypeName",
    #     slot_type_configurations: [
    #       {
    #         regex_configuration: {
    #           pattern: "RegexPattern", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::CreateSlotTypeVersionResponse]
    def create_slot_type_version(params = {}, options = {})
      request = build_request(:create_slot_type_version, params)
      request.send_request(options)
    end

    # <p>Deletes all versions of the bot, including the <code>$LATEST</code>
    #       version. To delete a specific version of the bot, use the <a>DeleteBotVersion</a> operation. The <code>DeleteBot</code>
    #       operation doesn't immediately remove the bot schema. Instead, it is marked
    #       for deletion and removed later.</p>
    #          <p>Amazon Lex stores utterances indefinitely for improving the ability of
    #       your bot to respond to user inputs. These utterances are not removed when
    #       the bot is deleted. To remove the utterances, use the <a>DeleteUtterances</a> operation.</p>
    #          <p>If a bot has an alias, you can't delete it. Instead, the
    #         <code>DeleteBot</code> operation returns a
    #         <code>ResourceInUseException</code> exception that includes a reference
    #       to the alias that refers to the bot. To remove the reference to the bot,
    #       delete the alias. If you get the same exception again, delete the
    #       referring alias until the <code>DeleteBot</code> operation is
    #       successful.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteBot</code> action.</p>
    # @param [Hash, Types::DeleteBotRequest] params
    # @option params [String] :name
    #   <p>The name of the bot. The name is case sensitive. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotName", # required
    #   }
    #   options = {}
    #   response = client.delete_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bot(params = {}, options = {})
      request = build_request(:delete_bot, params)
      request.send_request(options)
    end

    # <p>Deletes an alias for the specified bot. </p>
    #          <p>You can't delete an alias that is used in the association between a
    #       bot and a messaging channel. If an alias is used in a channel association,
    #       the <code>DeleteBot</code> operation returns a
    #         <code>ResourceInUseException</code> exception that includes a reference
    #       to the channel association that refers to the bot. You can remove the
    #       reference to the alias by deleting the channel association. If you get the
    #       same exception again, delete the referring association until the
    #         <code>DeleteBotAlias</code> operation is successful.</p>
    # @param [Hash, Types::DeleteBotAliasRequest] params
    # @option params [String] :name
    #   <p>The name of the alias to delete. The name is case sensitive.
    #       </p>
    # @option params [String] :bot_name
    #   <p>The name of the bot that the alias points to.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AliasName", # required
    #     bot_name: "BotName", # required
    #   }
    #   options = {}
    #   response = client.delete_bot_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bot_alias(params = {}, options = {})
      request = build_request(:delete_bot_alias, params)
      request.send_request(options)
    end

    # <p>Deletes the association between an Amazon Lex bot and a messaging
    #       platform.</p>
    #          <p>This operation requires permission for the
    #         <code>lex:DeleteBotChannelAssociation</code> action.</p>
    # @param [Hash, Types::DeleteBotChannelAssociationRequest] params
    # @option params [String] :name
    #   <p>The name of the association. The name is case sensitive. </p>
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    # @option params [String] :bot_alias
    #   <p>An alias that points to the specific version of the Amazon Lex bot to
    #         which this association is being made.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotChannelName", # required
    #     bot_name: "BotName", # required
    #     bot_alias: "AliasName", # required
    #   }
    #   options = {}
    #   response = client.delete_bot_channel_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bot_channel_association(params = {}, options = {})
      request = build_request(:delete_bot_channel_association, params)
      request.send_request(options)
    end

    # <p>Deletes a specific version of a bot. To delete all versions of a
    #       bot, use the <a>DeleteBot</a> operation. </p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteBotVersion</code> action.</p>
    # @param [Hash, Types::DeleteBotVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the bot.</p>
    # @option params [String] :version
    #   <p>The version of the bot to delete. You cannot delete the
    #           <code>$LATEST</code> version of the bot. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteBot</a>
    #         operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotName", # required
    #     version: "NumericalVersion", # required
    #   }
    #   options = {}
    #   response = client.delete_bot_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_bot_version(params = {}, options = {})
      request = build_request(:delete_bot_version, params)
      request.send_request(options)
    end

    # <p>Deletes all versions of the intent, including the
    #         <code>$LATEST</code> version. To delete a specific version of the
    #       intent, use the <a>DeleteIntentVersion</a> operation.</p>
    #          <p> You can delete a version of an intent only if it is not
    #       referenced. To delete an intent that is referred to in one or more bots
    #       (see <a>how-it-works</a>), you must remove those references
    #       first. </p>
    #          <note>
    #             <p> If you get the <code>ResourceInUseException</code> exception, it
    #         provides an example reference that shows where the intent is referenced.
    #         To remove the reference to the intent, either update the bot or delete
    #         it. If you get the same exception when you attempt to delete the intent
    #         again, repeat until the intent has no references and the call to
    #           <code>DeleteIntent</code> is successful. </p>
    #          </note>
    #          <p> This operation requires permission for the
    #         <code>lex:DeleteIntent</code> action. </p>
    # @param [Hash, Types::DeleteIntentRequest] params
    # @option params [String] :name
    #   <p>The name of the intent. The name is case sensitive. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IntentName", # required
    #   }
    #   options = {}
    #   response = client.delete_intent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_intent(params = {}, options = {})
      request = build_request(:delete_intent, params)
      request.send_request(options)
    end

    # <p>Deletes a specific version of an intent. To delete all versions of
    #       a intent, use the <a>DeleteIntent</a> operation. </p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteIntentVersion</code> action.</p>
    # @param [Hash, Types::DeleteIntentVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the intent.</p>
    # @option params [String] :version
    #   <p>The version of the intent to delete. You cannot delete the
    #           <code>$LATEST</code> version of the intent. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteIntent</a>
    #         operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IntentName", # required
    #     version: "NumericalVersion", # required
    #   }
    #   options = {}
    #   response = client.delete_intent_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_intent_version(params = {}, options = {})
      request = build_request(:delete_intent_version, params)
      request.send_request(options)
    end

    # <p>Deletes all versions of the slot type, including the
    #         <code>$LATEST</code> version. To delete a specific version of the slot
    #       type, use the <a>DeleteSlotTypeVersion</a> operation.</p>
    #          <p> You can delete a version of a slot type only if it is not
    #       referenced. To delete a slot type that is referred to in one or more
    #       intents, you must remove those references first. </p>
    #          <note>
    #             <p> If you get the <code>ResourceInUseException</code> exception,
    #         the exception provides an example reference that shows the intent where
    #         the slot type is referenced. To remove the reference to the slot type,
    #         either update the intent or delete it. If you get the same exception
    #         when you attempt to delete the slot type again, repeat until the slot
    #         type has no references and the <code>DeleteSlotType</code> call is
    #         successful. </p>
    #          </note>
    #          <p>This operation requires permission for the
    #         <code>lex:DeleteSlotType</code> action.</p>
    # @param [Hash, Types::DeleteSlotTypeRequest] params
    # @option params [String] :name
    #   <p>The name of the slot type. The name is case sensitive. </p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SlotTypeName", # required
    #   }
    #   options = {}
    #   response = client.delete_slot_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_slot_type(params = {}, options = {})
      request = build_request(:delete_slot_type, params)
      request.send_request(options)
    end

    # <p>Deletes a specific version of a slot type. To delete all versions
    #       of a slot type, use the <a>DeleteSlotType</a> operation. </p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteSlotTypeVersion</code> action.</p>
    # @param [Hash, Types::DeleteSlotTypeVersionRequest] params
    # @option params [String] :name
    #   <p>The name of the slot type.</p>
    # @option params [String] :version
    #   <p>The version of the slot type to delete. You cannot delete the
    #           <code>$LATEST</code> version of the slot type. To delete the
    #           <code>$LATEST</code> version, use the <a>DeleteSlotType</a>
    #         operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SlotTypeName", # required
    #     version: "NumericalVersion", # required
    #   }
    #   options = {}
    #   response = client.delete_slot_type_version(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_slot_type_version(params = {}, options = {})
      request = build_request(:delete_slot_type_version, params)
      request.send_request(options)
    end

    # <p>Deletes stored utterances.</p>
    #          <p>Amazon Lex stores the utterances that users send to your bot. Utterances
    #       are stored for 15 days for use with the <a>GetUtterancesView</a> operation, and then stored indefinitely for use in improving the
    #       ability of your bot to respond to user input.</p>
    #          <p>Use the <code>DeleteUtterances</code> operation to manually delete
    #       stored utterances for a specific user. When you use the
    #         <code>DeleteUtterances</code> operation, utterances stored for improving
    #       your bot's ability to respond to user input are deleted immediately.
    #       Utterances stored for use with the <code>GetUtterancesView</code>
    #       operation are deleted after 15 days.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:DeleteUtterances</code> action.</p>
    # @param [Hash, Types::DeleteUtterancesRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the bot that stored the utterances.</p>
    # @option params [String] :user_id
    #   <p> The unique identifier for the user that made the utterances. This
    #         is the user ID that was sent in the <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> operation request that contained the
    #         utterance.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     user_id: "UserId", # required
    #   }
    #   options = {}
    #   response = client.delete_utterances(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {}
    # @return [Smithy::Schema::EmptyStructure]
    def delete_utterances(params = {}, options = {})
      request = build_request(:delete_utterances, params)
      request.send_request(options)
    end

    # <p>Returns metadata information for a specific bot. You must provide
    #       the bot name and the bot version or alias. </p>
    #          <p> This operation requires permissions for the
    #         <code>lex:GetBot</code> action. </p>
    # @param [Hash, Types::GetBotRequest] params
    # @option params [String] :name
    #   <p>The name of the bot. The name is case sensitive. </p>
    # @option params [String] :version_or_alias
    #   <p>The version or alias of the bot.</p>
    # @example To get information about a bot
    #   # This example shows how to get configuration information for a bot.
    #   params = {
    #     name: "DocOrderPizza",
    #     version_or_alias: "$LATEST"
    #   }
    #   options = {}
    #   response = client.get_bot(params, options)
    #   response.to_h #=>
    #   {
    #     status: NOT_BUILT,
    #     intents: [
    #       {
    #         intent_version: "$LATEST",
    #         intent_name: "DocOrderPizza"
    #       }
    #     ],
    #     name: "DocOrderPizzaBot",
    #     locale: en-US,
    #     checksum: "20172ee3-fa06-49b2-bbc5-667c090303e9",
    #     abort_statement: {
    #       messages: [
    #         {
    #           content: "I don't understand. Can you try again?",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "I'm sorry, I don't understand.",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     version: "$LATEST",
    #     last_updated_date: Time.parse(1494360160.133),
    #     created_date: Time.parse(1494360160.133),
    #     clarification_prompt: {
    #       max_attempts: 1,
    #       messages: [
    #         {
    #           content: "I'm sorry, I didn't hear that. Can you repeate what you just said?",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "Can you say that again?",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     child_directed: true,
    #     idle_session_ttl_in_seconds: 300,
    #     description: "Orders a pizza from a local pizzeria."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotName", # required
    #     version_or_alias: "String", # required
    #   }
    #   options = {}
    #   response = client.get_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "BotName",
    #     description: "Description",
    #     intents: [
    #       {
    #         intent_name: "IntentName", # required
    #         intent_version: "Version", # required
    #       }
    #     ],
    #     enable_model_improvements: false,
    #     nlu_intent_confidence_threshold: 1.0,
    #     clarification_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     abort_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     status: "BUILDING" # One of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"],
    #     failure_reason: "String",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     idle_session_ttl_in_seconds: 1,
    #     voice_id: "String",
    #     checksum: "String",
    #     version: "Version",
    #     locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #     child_directed: false,
    #     detect_sentiment: false
    #   }
    # @return [Types::GetBotResponse]
    def get_bot(params = {}, options = {})
      request = build_request(:get_bot, params)
      request.send_request(options)
    end

    # <p>Returns information about an Amazon Lex bot alias. For more information
    #       about aliases, see <a>versioning-aliases</a>.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotAlias</code> action.</p>
    # @param [Hash, Types::GetBotAliasRequest] params
    # @option params [String] :name
    #   <p>The name of the bot alias. The name is case sensitive.</p>
    # @option params [String] :bot_name
    #   <p>The name of the bot.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AliasName", # required
    #     bot_name: "BotName", # required
    #   }
    #   options = {}
    #   response = client.get_bot_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "AliasName",
    #     description: "Description",
    #     bot_version: "Version",
    #     bot_name: "BotName",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     checksum: "String",
    #     conversation_logs: {
    #       log_settings: [
    #         {
    #           log_type: "AUDIO" # One of: ["AUDIO", "TEXT"],
    #           destination: "CLOUDWATCH_LOGS" # One of: ["CLOUDWATCH_LOGS", "S3"],
    #           kms_key_arn: "KmsKeyArn",
    #           resource_arn: "ResourceArn",
    #           resource_prefix: "ResourcePrefix"
    #         }
    #       ],
    #       iam_role_arn: "IamRoleArn"
    #     }
    #   }
    # @return [Types::GetBotAliasResponse]
    def get_bot_alias(params = {}, options = {})
      request = build_request(:get_bot_alias, params)
      request.send_request(options)
    end

    # <p>Returns a list of aliases for a specified Amazon Lex bot.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotAliases</code> action.</p>
    # @param [Hash, Types::GetBotAliasesRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the bot.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of aliases. If the
    #         response to this call is truncated, Amazon Lex returns a pagination token in
    #         the response. To fetch the next page of aliases, specify the pagination
    #         token in the next request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of aliases to return in the response. The
    #         default is 50. . </p>
    # @option params [String] :name_contains
    #   <p>Substring to match in bot alias names. An alias will be returned if
    #         any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "AliasName"
    #   }
    #   options = {}
    #   response = client.get_bot_aliases(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot_aliases: [
    #       {
    #         name: "AliasName",
    #         description: "Description",
    #         bot_version: "Version",
    #         bot_name: "BotName",
    #         last_updated_date: Time.now,
    #         created_date: Time.now,
    #         checksum: "String",
    #         conversation_logs: {
    #           log_settings: [
    #             {
    #               log_type: "AUDIO" # One of: ["AUDIO", "TEXT"],
    #               destination: "CLOUDWATCH_LOGS" # One of: ["CLOUDWATCH_LOGS", "S3"],
    #               kms_key_arn: "KmsKeyArn",
    #               resource_arn: "ResourceArn",
    #               resource_prefix: "ResourcePrefix"
    #             }
    #           ],
    #           iam_role_arn: "IamRoleArn"
    #         }
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetBotAliasesResponse]
    def get_bot_aliases(params = {}, options = {})
      request = build_request(:get_bot_aliases, params)
      request.send_request(options)
    end

    # <p>Returns information about the association between an Amazon Lex bot and
    #       a messaging platform.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotChannelAssociation</code> action.</p>
    # @param [Hash, Types::GetBotChannelAssociationRequest] params
    # @option params [String] :name
    #   <p>The name of the association between the bot and the channel. The
    #         name is case sensitive. </p>
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot.</p>
    # @option params [String] :bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotChannelName", # required
    #     bot_name: "BotName", # required
    #     bot_alias: "AliasName", # required
    #   }
    #   options = {}
    #   response = client.get_bot_channel_association(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "BotChannelName",
    #     description: "Description",
    #     bot_alias: "AliasName",
    #     bot_name: "BotName",
    #     created_date: Time.now,
    #     type: "Facebook" # One of: ["Facebook", "Slack", "Twilio-Sms", "Kik"],
    #     bot_configuration: {
    #       "String" => "String"
    #     },
    #     status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CREATED", "FAILED"],
    #     failure_reason: "String"
    #   }
    # @return [Types::GetBotChannelAssociationResponse]
    def get_bot_channel_association(params = {}, options = {})
      request = build_request(:get_bot_channel_association, params)
      request.send_request(options)
    end

    # <p> Returns a list of all of the channels associated with the
    #       specified bot. </p>
    #          <p>The <code>GetBotChannelAssociations</code> operation requires
    #       permissions for the <code>lex:GetBotChannelAssociations</code>
    #       action.</p>
    # @param [Hash, Types::GetBotChannelAssociationsRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the Amazon Lex bot in the association.</p>
    # @option params [String] :bot_alias
    #   <p>An alias pointing to the specific version of the Amazon Lex bot to which
    #         this association is being made.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of associations. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of associations, specify the
    #         pagination token in the next request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of associations to return in the response. The
    #         default is 50. </p>
    # @option params [String] :name_contains
    #   <p>Substring to match in channel association names. An association
    #         will be returned if any part of its name matches the substring. For
    #         example, "xyz" matches both "xyzabc" and "abcxyz." To return all bot
    #         channel associations, use a hyphen ("-") as the <code>nameContains</code>
    #         parameter.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     bot_alias: "AliasNameOrListAll", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "BotChannelName"
    #   }
    #   options = {}
    #   response = client.get_bot_channel_associations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot_channel_associations: [
    #       {
    #         name: "BotChannelName",
    #         description: "Description",
    #         bot_alias: "AliasName",
    #         bot_name: "BotName",
    #         created_date: Time.now,
    #         type: "Facebook" # One of: ["Facebook", "Slack", "Twilio-Sms", "Kik"],
    #         bot_configuration: {
    #           "String" => "String"
    #         },
    #         status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "CREATED", "FAILED"],
    #         failure_reason: "String"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetBotChannelAssociationsResponse]
    def get_bot_channel_associations(params = {}, options = {})
      request = build_request(:get_bot_channel_associations, params)
      request.send_request(options)
    end

    # <p>Gets information about all of the versions of a bot.</p>
    #          <p>The <code>GetBotVersions</code> operation returns a
    #         <code>BotMetadata</code> object for each version of a bot. For example,
    #       if a bot has three numbered versions, the <code>GetBotVersions</code>
    #       operation returns four <code>BotMetadata</code> objects in the response,
    #       one for each numbered version and one for the <code>$LATEST</code>
    #       version. </p>
    #          <p>The <code>GetBotVersions</code> operation always returns at least
    #       one version, the <code>$LATEST</code> version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetBotVersions</code> action.</p>
    # @param [Hash, Types::GetBotVersionsRequest] params
    # @option params [String] :name
    #   <p>The name of the bot for which versions should be
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of bot versions. If
    #         the response to this call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of bot versions to return in the response. The
    #         default is 10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_bot_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bots: [
    #       {
    #         name: "BotName",
    #         description: "Description",
    #         status: "BUILDING" # One of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"],
    #         last_updated_date: Time.now,
    #         created_date: Time.now,
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetBotVersionsResponse]
    def get_bot_versions(params = {}, options = {})
      request = build_request(:get_bot_versions, params)
      request.send_request(options)
    end

    # <p>Returns bot information as follows: </p>
    #          <ul>
    #             <li>
    #                <p>If you provide the <code>nameContains</code> field, the
    #           response includes information for the <code>$LATEST</code> version of
    #           all bots whose name contains the specified string.</p>
    #             </li>
    #             <li>
    #                <p>If you don't specify the <code>nameContains</code> field, the
    #           operation returns information about the <code>$LATEST</code> version
    #           of all of your bots.</p>
    #             </li>
    #          </ul>
    #          <p>This operation requires permission for the <code>lex:GetBots</code>
    #       action.</p>
    # @param [Hash, Types::GetBotsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of bots. If the
    #         response to this call is truncated, Amazon Lex returns a pagination token in
    #         the response. To fetch the next page of bots, specify the pagination token
    #         in the next request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of bots to return in the response that the
    #         request will return. The default is 10.</p>
    # @option params [String] :name_contains
    #   <p>Substring to match in bot names. A bot will be returned if any part
    #         of its name matches the substring. For example, "xyz" matches both
    #         "xyzabc" and "abcxyz."</p>
    # @example To get a list of bots
    #   # This example shows how to get a list of all of the bots in your account.
    #   params = {
    #     next_token: "",
    #     max_results: 5
    #   }
    #   options = {}
    #   response = client.get_bots(params, options)
    #   response.to_h #=>
    #   {
    #     bots: [
    #       {
    #         status: NOT_BUILT,
    #         name: "DocOrderPizzaBot",
    #         version: "$LATEST",
    #         last_updated_date: Time.parse(1494360160.133),
    #         created_date: Time.parse(1494360160.133),
    #         description: "Orders a pizza from a local pizzeria."
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "BotName"
    #   }
    #   options = {}
    #   response = client.get_bots(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bots: [
    #       {
    #         name: "BotName",
    #         description: "Description",
    #         status: "BUILDING" # One of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"],
    #         last_updated_date: Time.now,
    #         created_date: Time.now,
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetBotsResponse]
    def get_bots(params = {}, options = {})
      request = build_request(:get_bots, params)
      request.send_request(options)
    end

    # <p>Returns information about a built-in intent.</p>
    #          <p>This operation requires permission for the
    #         <code>lex:GetBuiltinIntent</code> action.</p>
    # @param [Hash, Types::GetBuiltinIntentRequest] params
    # @option params [String] :signature
    #   <p>The unique identifier for a built-in intent. To find the signature
    #         for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     signature: "BuiltinIntentSignature", # required
    #   }
    #   options = {}
    #   response = client.get_builtin_intent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     signature: "BuiltinIntentSignature",
    #     supported_locales: ["de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]],
    #     slots: [
    #       {
    #         name: "String"
    #       }
    #     ]
    #   }
    # @return [Types::GetBuiltinIntentResponse]
    def get_builtin_intent(params = {}, options = {})
      request = build_request(:get_builtin_intent, params)
      request.send_request(options)
    end

    # <p>Gets a list of built-in intents that meet the specified
    #       criteria.</p>
    #          <p>This operation requires permission for the
    #         <code>lex:GetBuiltinIntents</code> action.</p>
    # @param [Hash, Types::GetBuiltinIntentsRequest] params
    # @option params [String] :locale
    #   <p>A list of locales that the intent supports.</p>
    # @option params [String] :signature_contains
    #   <p>Substring to match in built-in intent signatures. An intent will be
    #         returned if any part of its signature matches the substring. For example,
    #         "xyz" matches both "xyzabc" and "abcxyz." To find the signature for an
    #         intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of intents. If this
    #         API call is truncated, Amazon Lex returns a pagination token in the response.
    #         To fetch the next page of intents, use the pagination token in the next
    #         request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of intents to return in the response. The
    #         default is 10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #     signature_contains: "String",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_builtin_intents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     intents: [
    #       {
    #         signature: "BuiltinIntentSignature",
    #         supported_locales: ["de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetBuiltinIntentsResponse]
    def get_builtin_intents(params = {}, options = {})
      request = build_request(:get_builtin_intents, params)
      request.send_request(options)
    end

    # <p>Gets a list of built-in slot types that meet the specified
    #       criteria.</p>
    #          <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills
    #         Kit</i>.</p>
    #          <p>This operation requires permission for the
    #         <code>lex:GetBuiltInSlotTypes</code> action.</p>
    # @param [Hash, Types::GetBuiltinSlotTypesRequest] params
    # @option params [String] :locale
    #   <p>A list of locales that the slot type supports.</p>
    # @option params [String] :signature_contains
    #   <p>Substring to match in built-in slot type signatures. A slot type
    #         will be returned if any part of its signature matches the substring. For
    #         example, "xyz" matches both "xyzabc" and "abcxyz."</p>
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of slot types. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of slot types, specify the
    #         pagination token in the next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of slot types to return in the response. The
    #         default is 10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #     signature_contains: "String",
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_builtin_slot_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slot_types: [
    #       {
    #         signature: "BuiltinSlotTypeSignature",
    #         supported_locales: ["de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"]]
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetBuiltinSlotTypesResponse]
    def get_builtin_slot_types(params = {}, options = {})
      request = build_request(:get_builtin_slot_types, params)
      request.send_request(options)
    end

    # <p>Exports the contents of a Amazon Lex resource in a specified format.
    #     </p>
    # @param [Hash, Types::GetExportRequest] params
    # @option params [String] :name
    #   <p>The name of the bot to export.</p>
    # @option params [String] :version
    #   <p>The version of the bot to export.</p>
    # @option params [String] :resource_type
    #   <p>The type of resource to export. </p>
    # @option params [String] :export_type
    #   <p>The format of the exported data.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "Name", # required
    #     version: "NumericalVersion", # required
    #     resource_type: "BOT" # One of: ["BOT", "INTENT", "SLOT_TYPE"], # required
    #     export_type: "ALEXA_SKILLS_KIT" # One of: ["ALEXA_SKILLS_KIT", "LEX"], # required
    #   }
    #   options = {}
    #   response = client.get_export(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name",
    #     version: "NumericalVersion",
    #     resource_type: "BOT" # One of: ["BOT", "INTENT", "SLOT_TYPE"],
    #     export_type: "ALEXA_SKILLS_KIT" # One of: ["ALEXA_SKILLS_KIT", "LEX"],
    #     export_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "READY", "FAILED"],
    #     failure_reason: "String",
    #     url: "String"
    #   }
    # @return [Types::GetExportResponse]
    def get_export(params = {}, options = {})
      request = build_request(:get_export, params)
      request.send_request(options)
    end

    # <p>Gets information about an import job started with the
    #         <code>StartImport</code> operation.</p>
    # @param [Hash, Types::GetImportRequest] params
    # @option params [String] :import_id
    #   <p>The identifier of the import job information to return.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     import_id: "String", # required
    #   }
    #   options = {}
    #   response = client.get_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name",
    #     resource_type: "BOT" # One of: ["BOT", "INTENT", "SLOT_TYPE"],
    #     merge_strategy: "OVERWRITE_LATEST" # One of: ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"],
    #     import_id: "String",
    #     import_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #     failure_reason: ["String"],
    #     created_date: Time.now
    #   }
    # @return [Types::GetImportResponse]
    def get_import(params = {}, options = {})
      request = build_request(:get_import, params)
      request.send_request(options)
    end

    # <p> Returns information about an intent. In addition to the intent
    #       name, you must specify the intent version. </p>
    #          <p> This operation requires permissions to perform the
    #         <code>lex:GetIntent</code> action. </p>
    # @param [Hash, Types::GetIntentRequest] params
    # @option params [String] :name
    #   <p>The name of the intent. The name is case sensitive. </p>
    # @option params [String] :version
    #   <p>The version of the intent.</p>
    # @example To get a information about an intent
    #   # This example shows how to get information about an intent.
    #   params = {
    #     name: "DocOrderPizza",
    #     version: "$LATEST"
    #   }
    #   options = {}
    #   response = client.get_intent(params, options)
    #   response.to_h #=>
    #   {
    #     confirmation_prompt: {
    #       max_attempts: 1,
    #       messages: [
    #         {
    #           content: "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     name: "DocOrderPizza",
    #     checksum: "ca9bc13d-afc8-4706-bbaf-091f7a5935d6",
    #     conclusion_statement: {
    #       messages: [
    #         {
    #           content: "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.",
    #           content_type: PlainText
    #         }
    #       ],
    #       response_card: "foo"
    #     },
    #     version: "$LATEST",
    #     rejection_statement: {
    #       messages: [
    #         {
    #           content: "Ok, I'll cancel your order.",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "I cancelled your order.",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     created_date: Time.parse(1494359783.453),
    #     last_updated_date: Time.parse(1494359783.453),
    #     sample_utterances: [
    #       "Order me a pizza.",
    #       "Order me a {Type} pizza.",
    #       "I want a {Crust} crust {Type} pizza",
    #       "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
    #     ],
    #     slots: [
    #       {
    #         slot_type: "DocPizzaType",
    #         name: "Type",
    #         slot_constraint: Required,
    #         value_elicitation_prompt: {
    #           max_attempts: 1,
    #           messages: [
    #             {
    #               content: "What type of pizza would you like?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "Vegie or cheese pizza?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "I can get you a vegie or a cheese pizza.",
    #               content_type: PlainText
    #             }
    #           ]
    #         },
    #         priority: 1,
    #         slot_type_version: "$LATEST",
    #         sample_utterances: [
    #           "Get me a {Type} pizza.",
    #           "A {Type} pizza please.",
    #           "I'd like a {Type} pizza."
    #         ],
    #         description: "The type of pizza to order."
    #       },
    #       {
    #         slot_type: "DocPizzaCrustType",
    #         name: "Crust",
    #         slot_constraint: Required,
    #         value_elicitation_prompt: {
    #           max_attempts: 1,
    #           messages: [
    #             {
    #               content: "What type of crust would you like?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "Thick or thin crust?",
    #               content_type: PlainText
    #             }
    #           ]
    #         },
    #         priority: 2,
    #         slot_type_version: "$LATEST",
    #         sample_utterances: [
    #           "Make it a {Crust} crust.",
    #           "I'd like a {Crust} crust."
    #         ],
    #         description: "The type of pizza crust to order."
    #       },
    #       {
    #         slot_type: "DocPizzaSauceType",
    #         name: "Sauce",
    #         slot_constraint: Required,
    #         value_elicitation_prompt: {
    #           max_attempts: 1,
    #           messages: [
    #             {
    #               content: "White or red sauce?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "Garlic or tomato sauce?",
    #               content_type: PlainText
    #             }
    #           ]
    #         },
    #         priority: 3,
    #         slot_type_version: "$LATEST",
    #         sample_utterances: [
    #           "Make it {Sauce} sauce.",
    #           "I'd like {Sauce} sauce."
    #         ],
    #         description: "The type of sauce to use on the pizza."
    #       }
    #     ],
    #     fulfillment_activity: {
    #       type: ReturnIntent
    #     },
    #     description: "Order a pizza from a local pizzeria."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IntentName", # required
    #     version: "Version", # required
    #   }
    #   options = {}
    #   response = client.get_intent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "IntentName",
    #     description: "Description",
    #     slots: [
    #       {
    #         name: "SlotName", # required
    #         description: "Description",
    #         slot_constraint: "Required" # One of: ["Required", "Optional"], # required
    #         slot_type: "CustomOrBuiltinSlotTypeName",
    #         slot_type_version: "Version",
    #         value_elicitation_prompt: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #               content: "ContentString", # required
    #               group_number: 1
    #             }
    #           ],
    #           max_attempts: 1, # required
    #           response_card: "ResponseCard"
    #         },
    #         priority: 1,
    #         sample_utterances: ["Utterance"],
    #         response_card: "ResponseCard",
    #         obfuscation_setting: "NONE" # One of: ["NONE", "DEFAULT_OBFUSCATION"],
    #         default_value_spec: {
    #           default_value_list: [ # required
    #             {
    #               default_value: "SlotDefaultValueString", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     sample_utterances: ["Utterance"],
    #     confirmation_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     rejection_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     follow_up_prompt: {
    #       prompt: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         max_attempts: 1, # required
    #         response_card: "ResponseCard"
    #       },
    #       rejection_statement: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         response_card: "ResponseCard"
    #       }
    #     },
    #     conclusion_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     dialog_code_hook: {
    #       uri: "LambdaARN", # required
    #       message_version: "MessageVersion", # required
    #     },
    #     fulfillment_activity: {
    #       type: "ReturnIntent" # One of: ["ReturnIntent", "CodeHook"], # required
    #       code_hook: {
    #         uri: "LambdaARN", # required
    #         message_version: "MessageVersion", # required
    #       }
    #     },
    #     parent_intent_signature: "BuiltinIntentSignature",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     version: "Version",
    #     checksum: "String",
    #     kendra_configuration: {
    #       kendra_index: "KendraIndexArn", # required
    #       query_filter_string: "QueryFilterString",
    #       role: "roleArn", # required
    #     },
    #     input_contexts: [
    #       {
    #         name: "InputContextName", # required
    #       }
    #     ],
    #     output_contexts: [
    #       {
    #         name: "OutputContextName", # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::GetIntentResponse]
    def get_intent(params = {}, options = {})
      request = build_request(:get_intent, params)
      request.send_request(options)
    end

    # <p>Gets information about all of the versions of an intent.</p>
    #          <p>The <code>GetIntentVersions</code> operation returns an
    #         <code>IntentMetadata</code> object for each version of an intent. For
    #       example, if an intent has three numbered versions, the
    #         <code>GetIntentVersions</code> operation returns four
    #         <code>IntentMetadata</code> objects in the response, one for each
    #       numbered version and one for the <code>$LATEST</code> version. </p>
    #          <p>The <code>GetIntentVersions</code> operation always returns at
    #       least one version, the <code>$LATEST</code> version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetIntentVersions</code> action.</p>
    # @param [Hash, Types::GetIntentVersionsRequest] params
    # @option params [String] :name
    #   <p>The name of the intent for which versions should be
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of intent versions.
    #         If the response to this call is truncated, Amazon Lex returns a pagination
    #         token in the response. To fetch the next page of versions, specify the
    #         pagination token in the next request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of intent versions to return in the response.
    #         The default is 10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IntentName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_intent_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     intents: [
    #       {
    #         name: "IntentName",
    #         description: "Description",
    #         last_updated_date: Time.now,
    #         created_date: Time.now,
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetIntentVersionsResponse]
    def get_intent_versions(params = {}, options = {})
      request = build_request(:get_intent_versions, params)
      request.send_request(options)
    end

    # <p>Returns intent information as follows: </p>
    #          <ul>
    #             <li>
    #                <p>If you specify the <code>nameContains</code> field, returns the
    #             <code>$LATEST</code> version of all intents that contain the
    #           specified string.</p>
    #             </li>
    #             <li>
    #                <p> If you don't specify the <code>nameContains</code> field,
    #           returns information about the <code>$LATEST</code> version of all
    #           intents. </p>
    #             </li>
    #          </ul>
    #          <p> The operation requires permission for the
    #         <code>lex:GetIntents</code> action. </p>
    # @param [Hash, Types::GetIntentsRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of intents. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of intents, specify the pagination
    #         token in the next request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of intents to return in the response. The
    #         default is 10.</p>
    # @option params [String] :name_contains
    #   <p>Substring to match in intent names. An intent will be returned if
    #         any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    # @example To get a list of intents
    #   # This example shows how to get a list of all of the intents in your account.
    #   params = {
    #     next_token: "",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.get_intents(params, options)
    #   response.to_h #=>
    #   {
    #     intents: [
    #       {
    #         version: "$LATEST",
    #         created_date: Time.parse(1494359783.453),
    #         name: "DocOrderPizza",
    #         last_updated_date: Time.parse(1494359783.453),
    #         description: "Order a pizza from a local pizzeria."
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "IntentName"
    #   }
    #   options = {}
    #   response = client.get_intents(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     intents: [
    #       {
    #         name: "IntentName",
    #         description: "Description",
    #         last_updated_date: Time.now,
    #         created_date: Time.now,
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetIntentsResponse]
    def get_intents(params = {}, options = {})
      request = build_request(:get_intents, params)
      request.send_request(options)
    end

    # <p>Provides details about an ongoing or complete migration from an
    #       Amazon Lex V1 bot to an Amazon Lex V2 bot. Use this operation to view the migration
    #       alerts and warnings related to the migration.</p>
    # @param [Hash, Types::GetMigrationRequest] params
    # @option params [String] :migration_id
    #   <p>The unique identifier of the migration to view. The
    #           <code>migrationID</code> is returned by the  operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     migration_id: "MigrationId", # required
    #   }
    #   options = {}
    #   response = client.get_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_id: "MigrationId",
    #     v1_bot_name: "BotName",
    #     v1_bot_version: "Version",
    #     v1_bot_locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #     v2_bot_id: "V2BotId",
    #     v2_bot_role: "IamRoleArn",
    #     migration_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #     migration_strategy: "CREATE_NEW" # One of: ["CREATE_NEW", "UPDATE_EXISTING"],
    #     migration_timestamp: Time.now,
    #     alerts: [
    #       {
    #         type: "ERROR" # One of: ["ERROR", "WARN"],
    #         message: "MigrationAlertMessage",
    #         details: ["MigrationAlertDetail"],
    #         reference_ur_ls: ["MigrationAlertReferenceURL"]
    #       }
    #     ]
    #   }
    # @return [Types::GetMigrationResponse]
    def get_migration(params = {}, options = {})
      request = build_request(:get_migration, params)
      request.send_request(options)
    end

    # <p>Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2.</p>
    # @param [Hash, Types::GetMigrationsRequest] params
    # @option params [String] :sort_by_attribute
    #   <p>The field to sort the list of migrations by. You can sort by the
    #         Amazon Lex V1 bot name or the date and time that the migration was
    #         started.</p>
    # @option params [String] :sort_by_order
    #   <p>The order so sort the list.</p>
    # @option params [String] :v1_bot_name_contains
    #   <p>Filters the list to contain only bots whose name contains the
    #         specified string. The string is matched anywhere in bot name.</p>
    # @option params [String] :migration_status_equals
    #   <p>Filters the list to contain only migrations in the specified state.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of migrations to return in the response. The
    #         default is 10.</p>
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of migrations. If the
    #         response to this operation is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch the next page of migrations, specify the
    #         pagination token in the request.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     sort_by_attribute: "V1_BOT_NAME" # One of: ["V1_BOT_NAME", "MIGRATION_DATE_TIME"],
    #     sort_by_order: "ASCENDING" # One of: ["ASCENDING", "DESCENDING"],
    #     v1_bot_name_contains: "BotName",
    #     migration_status_equals: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #     max_results: 1,
    #     next_token: "NextToken"
    #   }
    #   options = {}
    #   response = client.get_migrations(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     migration_summaries: [
    #       {
    #         migration_id: "MigrationId",
    #         v1_bot_name: "BotName",
    #         v1_bot_version: "Version",
    #         v1_bot_locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #         v2_bot_id: "V2BotId",
    #         v2_bot_role: "IamRoleArn",
    #         migration_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETED", "FAILED"],
    #         migration_strategy: "CREATE_NEW" # One of: ["CREATE_NEW", "UPDATE_EXISTING"],
    #         migration_timestamp: Time.now
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetMigrationsResponse]
    def get_migrations(params = {}, options = {})
      request = build_request(:get_migrations, params)
      request.send_request(options)
    end

    # <p>Returns information about a specific version of a slot type. In
    #       addition to specifying the slot type name, you must specify the slot type
    #       version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetSlotType</code> action.</p>
    # @param [Hash, Types::GetSlotTypeRequest] params
    # @option params [String] :name
    #   <p>The name of the slot type. The name is case sensitive. </p>
    # @option params [String] :version
    #   <p>The version of the slot type. </p>
    # @example To get information about a slot type
    #   # This example shows how to get information about a slot type.
    #   params = {
    #     name: "DocPizzaCrustType",
    #     version: "$LATEST"
    #   }
    #   options = {}
    #   response = client.get_slot_type(params, options)
    #   response.to_h #=>
    #   {
    #     enumeration_values: [
    #       {
    #         value: "thick"
    #       },
    #       {
    #         value: "thin"
    #       }
    #     ],
    #     name: "DocPizzaCrustType",
    #     checksum: "210b3d5a-90a3-4b22-ac7e-f50c2c71095f",
    #     version: "$LATEST",
    #     last_updated_date: Time.parse(1494359274.403),
    #     created_date: Time.parse(1494359274.403),
    #     description: "Available crust types"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SlotTypeName", # required
    #     version: "Version", # required
    #   }
    #   options = {}
    #   response = client.get_slot_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "SlotTypeName",
    #     description: "Description",
    #     enumeration_values: [
    #       {
    #         value: "Value", # required
    #         synonyms: ["Value"]
    #       }
    #     ],
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     version: "Version",
    #     checksum: "String",
    #     value_selection_strategy: "ORIGINAL_VALUE" # One of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"],
    #     parent_slot_type_signature: "CustomOrBuiltinSlotTypeName",
    #     slot_type_configurations: [
    #       {
    #         regex_configuration: {
    #           pattern: "RegexPattern", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::GetSlotTypeResponse]
    def get_slot_type(params = {}, options = {})
      request = build_request(:get_slot_type, params)
      request.send_request(options)
    end

    # <p>Gets information about all versions of a slot type.</p>
    #          <p>The <code>GetSlotTypeVersions</code> operation returns a
    #         <code>SlotTypeMetadata</code> object for each version of a slot type.
    #       For example, if a slot type has three numbered versions, the
    #         <code>GetSlotTypeVersions</code> operation returns four
    #         <code>SlotTypeMetadata</code> objects in the response, one for each
    #       numbered version and one for the <code>$LATEST</code> version. </p>
    #          <p>The <code>GetSlotTypeVersions</code> operation always returns at
    #       least one version, the <code>$LATEST</code> version.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetSlotTypeVersions</code> action.</p>
    # @param [Hash, Types::GetSlotTypeVersionsRequest] params
    # @option params [String] :name
    #   <p>The name of the slot type for which versions should be
    #         returned.</p>
    # @option params [String] :next_token
    #   <p>A pagination token for fetching the next page of slot type
    #         versions. If the response to this call is truncated, Amazon Lex returns a
    #         pagination token in the response. To fetch the next page of versions,
    #         specify the pagination token in the next request. </p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of slot type versions to return in the response.
    #         The default is 10.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SlotTypeName", # required
    #     next_token: "NextToken",
    #     max_results: 1
    #   }
    #   options = {}
    #   response = client.get_slot_type_versions(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slot_types: [
    #       {
    #         name: "SlotTypeName",
    #         description: "Description",
    #         last_updated_date: Time.now,
    #         created_date: Time.now,
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetSlotTypeVersionsResponse]
    def get_slot_type_versions(params = {}, options = {})
      request = build_request(:get_slot_type_versions, params)
      request.send_request(options)
    end

    # <p>Returns slot type information as follows: </p>
    #          <ul>
    #             <li>
    #                <p>If you specify the <code>nameContains</code> field, returns the
    #             <code>$LATEST</code> version of all slot types that contain the
    #           specified string.</p>
    #             </li>
    #             <li>
    #                <p> If you don't specify the <code>nameContains</code> field,
    #           returns information about the <code>$LATEST</code> version of all slot
    #           types. </p>
    #             </li>
    #          </ul>
    #          <p> The operation requires permission for the
    #         <code>lex:GetSlotTypes</code> action. </p>
    # @param [Hash, Types::GetSlotTypesRequest] params
    # @option params [String] :next_token
    #   <p>A pagination token that fetches the next page of slot types. If the
    #         response to this API call is truncated, Amazon Lex returns a pagination token
    #         in the response. To fetch next page of slot types, specify the pagination
    #         token in the next request.</p>
    # @option params [Integer] :max_results
    #   <p>The maximum number of slot types to return in the response. The
    #         default is 10.</p>
    # @option params [String] :name_contains
    #   <p>Substring to match in slot type names. A slot type will be returned
    #         if any part of its name matches the substring. For example, "xyz" matches
    #         both "xyzabc" and "abcxyz."</p>
    # @example To get a list of slot types
    #   # This example shows how to get a list of all of the slot types in your account.
    #   params = {
    #     next_token: "",
    #     max_results: 10
    #   }
    #   options = {}
    #   response = client.get_slot_types(params, options)
    #   response.to_h #=>
    #   {
    #     slot_types: [
    #       {
    #         version: "$LATEST",
    #         created_date: Time.parse(1494359274.403),
    #         name: "DocPizzaCrustType",
    #         last_updated_date: Time.parse(1494359274.403),
    #         description: "Available crust types"
    #       },
    #       {
    #         version: "$LATEST",
    #         created_date: Time.parse(1494356442.23),
    #         name: "DocPizzaSauceType",
    #         last_updated_date: Time.parse(1494356442.23),
    #         description: "Available pizza sauces"
    #       },
    #       {
    #         version: "$LATEST",
    #         created_date: Time.parse(1494359198.656),
    #         name: "DocPizzaType",
    #         last_updated_date: Time.parse(1494359198.656),
    #         description: "Available pizzas"
    #       }
    #     ]
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "SlotTypeName"
    #   }
    #   options = {}
    #   response = client.get_slot_types(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     slot_types: [
    #       {
    #         name: "SlotTypeName",
    #         description: "Description",
    #         last_updated_date: Time.now,
    #         created_date: Time.now,
    #         version: "Version"
    #       }
    #     ],
    #     next_token: "NextToken"
    #   }
    # @return [Types::GetSlotTypesResponse]
    def get_slot_types(params = {}, options = {})
      request = build_request(:get_slot_types, params)
      request.send_request(options)
    end

    # <p>Use the <code>GetUtterancesView</code> operation to get information
    #       about the utterances that your users have made to your bot. You can use
    #       this list to tune the utterances that your bot responds to.</p>
    #          <p>For example, say that you have created a bot to order flowers.
    #       After your users have used your bot for a while, use the
    #         <code>GetUtterancesView</code> operation to see the requests that they
    #       have made and whether they have been successful. You might find that the
    #       utterance "I want flowers" is not being recognized. You could add this
    #       utterance to the <code>OrderFlowers</code> intent so that your bot
    #       recognizes that utterance.</p>
    #          <p>After you publish a new version of a bot, you can get information
    #       about the old version and the new so that you can compare the performance
    #       across the two versions. </p>
    #          <p>Utterance statistics are generated once a day. Data is available
    #       for the last 15 days. You can request information for up to 5 versions of
    #       your bot in each request. Amazon Lex returns the most frequent utterances
    #       received by the bot in the last 15 days. The response contains information
    #       about a maximum of 100 utterances for each version.</p>
    #          <p>If you set <code>childDirected</code> field to true when you
    #       created your bot, if you are using slot obfuscation with one or more
    #       slots, or if you opted out of participating in improving Amazon Lex, utterances
    #       are not available.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:GetUtterancesView</code> action.</p>
    # @param [Hash, Types::GetUtterancesViewRequest] params
    # @option params [String] :bot_name
    #   <p>The name of the bot for which utterance information should be
    #         returned.</p>
    # @option params [Array<String>] :bot_versions
    #   <p>An array of bot versions for which utterance information should be
    #         returned. The limit is 5 versions per request.</p>
    # @option params [String] :status_type
    #   <p>To return utterances that were recognized and handled, use
    #           <code>Detected</code>. To return utterances that were not recognized,
    #         use <code>Missed</code>.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     bot_name: "BotName", # required
    #     bot_versions: ["Version"], # required
    #     status_type: "Detected" # One of: ["Detected", "Missed"], # required
    #   }
    #   options = {}
    #   response = client.get_utterances_view(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     bot_name: "BotName",
    #     utterances: [
    #       {
    #         bot_version: "Version",
    #         utterances: [
    #           {
    #             utterance_string: "UtteranceString",
    #             count: 1,
    #             distinct_users: 1,
    #             first_uttered_date: Time.now,
    #             last_uttered_date: Time.now
    #           }
    #         ]
    #       }
    #     ]
    #   }
    # @return [Types::GetUtterancesViewResponse]
    def get_utterances_view(params = {}, options = {})
      request = build_request(:get_utterances_view, params)
      request.send_request(options)
    end

    # <p>Gets a list of tags associated with the specified resource. Only bots,
    #       bot aliases, and bot channels can have tags associated with them.</p>
    # @param [Hash, Types::ListTagsForResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get a list of tags
    #         for.</p>
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

    # <p>Creates an Amazon Lex conversational bot or replaces an existing bot.
    #       When you create or update a bot you are only required to specify a name, a
    #       locale, and whether the bot is directed toward children under age 13. You
    #       can use this to add intents later, or to remove intents from an existing
    #       bot. When you create a bot with the minimum information, the bot is
    #       created or updated but Amazon Lex returns the <code></code> response
    #         <code>FAILED</code>. You can build the bot after you add one or more
    #       intents. For more information about Amazon Lex bots, see <a>how-it-works</a>. </p>
    #          <p>If you specify the name of an existing bot, the fields in the
    #       request replace the existing values in the <code>$LATEST</code> version of
    #       the bot. Amazon Lex removes any fields that you don't provide values for in the
    #       request, except for the <code>idleTTLInSeconds</code> and
    #         <code>privacySettings</code> fields, which are set to their default
    #       values. If you don't specify values for required fields, Amazon Lex throws an
    #       exception.</p>
    #          <p>This operation requires permissions for the <code>lex:PutBot</code>
    #       action. For more information, see <a>security-iam</a>.</p>
    # @param [Hash, Types::PutBotRequest] params
    # @option params [String] :name
    #   <p>The name of the bot. The name is <i>not</i> case
    #         sensitive. </p>
    # @option params [String] :description
    #   <p>A description of the bot.</p>
    # @option params [Array<Types::Intent>] :intents
    #   <p>An array of <code>Intent</code> objects. Each intent represents a
    #         command that a user can express. For example, a pizza ordering bot might
    #         support an OrderPizza intent. For more information, see <a>how-it-works</a>.</p>
    # @option params [Boolean] :enable_model_improvements
    #   <p>Set to <code>true</code> to enable access to natural language
    #         understanding improvements. </p>
    #            <p>When you set the <code>enableModelImprovements</code> parameter to
    #           <code>true</code> you can use the
    #           <code>nluIntentConfidenceThreshold</code> parameter to configure
    #         confidence scores. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/confidence-scores.html">Confidence Scores</a>.</p>
    #            <p>You can only set the <code>enableModelImprovements</code> parameter in
    #         certain Regions. If you set the parameter to <code>true</code>, your bot
    #         has access to accuracy improvements.</p>
    #            <p>The Regions where you can set the <code>enableModelImprovements</code>
    #         parameter to <code>true</code> are:</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (us-east-1)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (us-west-2)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
    #               </li>
    #               <li>
    #                  <p>EU (Ireland) (eu-west-1)</p>
    #               </li>
    #            </ul>
    #            <p>In other Regions, the <code>enableModelImprovements</code> parameter
    #         is set to <code>true</code> by default. In these Regions setting the
    #         parameter to <code>false</code> throws a <code>ValidationException</code>
    #         exception.</p>
    # @option params [Float] :nlu_intent_confidence_threshold
    #   <p>Determines the threshold where Amazon Lex will insert the
    #           <code>AMAZON.FallbackIntent</code>,
    #           <code>AMAZON.KendraSearchIntent</code>, or both when returning
    #         alternative intents in a <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or
    #           <a href="https://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> response.
    #           <code>AMAZON.FallbackIntent</code> and
    #           <code>AMAZON.KendraSearchIntent</code> are only inserted if they are
    #         configured for the bot.</p>
    #            <p>You must set the <code>enableModelImprovements</code> parameter to
    #           <code>true</code> to use confidence scores in the following
    #         regions.</p>
    #            <ul>
    #               <li>
    #                  <p>US East (N. Virginia) (us-east-1)</p>
    #               </li>
    #               <li>
    #                  <p>US West (Oregon) (us-west-2)</p>
    #               </li>
    #               <li>
    #                  <p>Asia Pacific (Sydney) (ap-southeast-2)</p>
    #               </li>
    #               <li>
    #                  <p>EU (Ireland) (eu-west-1)</p>
    #               </li>
    #            </ul>
    #            <p>In other Regions, the <code>enableModelImprovements</code> parameter
    #         is set to <code>true</code> by default.</p>
    #            <p>For example, suppose a bot is configured with the confidence threshold
    #         of 0.80 and the <code>AMAZON.FallbackIntent</code>. Amazon Lex returns three
    #         alternative intents with the following confidence scores: IntentA (0.70),
    #         IntentB (0.60), IntentC (0.50). The response from the
    #           <code>PostText</code> operation would be:</p>
    #            <ul>
    #               <li>
    #                  <p>AMAZON.FallbackIntent</p>
    #               </li>
    #               <li>
    #                  <p>IntentA</p>
    #               </li>
    #               <li>
    #                  <p>IntentB</p>
    #               </li>
    #               <li>
    #                  <p>IntentC</p>
    #               </li>
    #            </ul>
    # @option params [Types::Prompt] :clarification_prompt
    #   <p>When Amazon Lex doesn't understand the user's intent, it uses this
    #         message to get clarification. To specify how many times Amazon Lex should
    #         repeat the clarification prompt, use the <code>maxAttempts</code> field.
    #         If Amazon Lex still doesn't understand, it sends the message in the
    #           <code>abortStatement</code> field. </p>
    #            <p>When you create a clarification prompt, make sure that it suggests
    #         the correct response from the user. for example, for a bot that orders
    #         pizza and drinks, you might create this clarification prompt: "What would
    #         you like to do? You can say 'Order a pizza' or 'Order a drink.'"</p>
    #            <p>If you have defined a fallback intent, it will be invoked if the
    #         clarification prompt is repeated the number of times defined in the
    #           <code>maxAttempts</code> field. For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">
    #           AMAZON.FallbackIntent</a>.</p>
    #            <p>If you don't define a clarification prompt, at runtime Amazon Lex will
    #         return a 400 Bad Request exception in three cases: </p>
    #            <ul>
    #               <li>
    #                  <p>Follow-up prompt - When the user responds to a follow-up prompt
    #             but does not provide an intent. For example, in response to a
    #             follow-up prompt that says "Would you like anything else today?" the
    #             user says "Yes." Amazon Lex will return a 400 Bad Request exception because
    #             it does not have a clarification prompt to send to the user to get an
    #             intent.</p>
    #               </li>
    #               <li>
    #                  <p>Lambda function - When using a Lambda function, you return an
    #               <code>ElicitIntent</code> dialog type. Since Amazon Lex does not have a
    #             clarification prompt to get an intent from the user, it returns a 400
    #             Bad Request exception.</p>
    #               </li>
    #               <li>
    #                  <p>PutSession operation - When using the <code>PutSession</code>
    #             operation, you send an <code>ElicitIntent</code> dialog type. Since
    #             Amazon Lex does not have a clarification prompt to get an intent from the
    #             user, it returns a 400 Bad Request exception.</p>
    #               </li>
    #            </ul>
    # @option params [Types::Statement] :abort_statement
    #   <p>When Amazon Lex can't understand the user's input in context, it tries
    #         to elicit the information a few times. After that, Amazon Lex sends the message
    #         defined in <code>abortStatement</code> to the user, and then cancels the
    #         conversation. To set the number of retries, use the
    #           <code>valueElicitationPrompt</code> field for the slot type. </p>
    #            <p>For example, in a pizza ordering bot, Amazon Lex might ask a user "What
    #         type of crust would you like?" If the user's response is not one of the
    #         expected responses (for example, "thin crust, "deep dish," etc.), Amazon Lex
    #         tries to elicit a correct response a few more times. </p>
    #            <p>For example, in a pizza ordering application,
    #           <code>OrderPizza</code> might be one of the intents. This intent might
    #         require the <code>CrustType</code> slot. You specify the
    #           <code>valueElicitationPrompt</code> field when you create the
    #           <code>CrustType</code> slot.</p>
    #            <p>If you have defined a fallback intent the cancel statement will not be
    #         sent to the user, the fallback intent is used instead. For more
    #         information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/built-in-intent-fallback.html">
    #           AMAZON.FallbackIntent</a>.</p>
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   <p>The maximum time in seconds that Amazon Lex retains the data gathered in
    #         a conversation.</p>
    #            <p>A user interaction session remains active for the amount of time
    #         specified. If no conversation occurs during this time, the session expires
    #         and Amazon Lex deletes any data provided before the timeout.</p>
    #            <p>For example, suppose that a user chooses the OrderPizza intent, but
    #         gets sidetracked halfway through placing an order. If the user doesn't
    #         complete the order within the specified time, Amazon Lex discards the slot
    #         information that it gathered, and the user must start over.</p>
    #            <p>If you don't include the <code>idleSessionTTLInSeconds</code>
    #         element in a <code>PutBot</code> operation request, Amazon Lex uses the default
    #         value. This is also true if the request replaces an existing
    #         bot.</p>
    #            <p>The default is 300 seconds (5 minutes).</p>
    # @option params [String] :voice_id
    #   <p>The Amazon Polly voice ID that you want Amazon Lex to use for voice
    #         interactions with the user. The locale configured for the voice must match
    #         the locale of the bot. For more information, see <a href="https://docs.aws.amazon.com/polly/latest/dg/voicelist.html">Voices
    #           in Amazon Polly</a> in the <i>Amazon Polly Developer
    #           Guide</i>.</p>
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new bot, leave the <code>checksum</code> field
    #         blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a bot, set the <code>checksum</code> field
    #         to the checksum of the most recent revision of the <code>$LATEST</code>
    #         version. If you don't specify the <code> checksum</code> field, or if the
    #         checksum does not match the <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    # @option params [String] :process_behavior
    #   <p>If you set the <code>processBehavior</code> element to
    #           <code>BUILD</code>, Amazon Lex builds the bot so that it can be run. If you
    #         set the element to <code>SAVE</code> Amazon Lex saves the bot, but doesn't
    #         build it. </p>
    #            <p>If you don't specify this value, the default value is
    #           <code>BUILD</code>.</p>
    # @option params [String] :locale
    #   <p> Specifies the target locale for the bot. Any intent used in the
    #         bot must be compatible with the locale of the bot. </p>
    #            <p>The default is <code>en-US</code>.</p>
    # @option params [Boolean] :child_directed
    #   <p>For each Amazon Lex bot created with the Amazon Lex Model Building Service,
    #         you must specify whether your use of Amazon Lex is related to a website,
    #         program, or other application that is directed or targeted, in whole or in
    #         part, to children under age 13 and subject to the Children's Online
    #         Privacy Protection Act (COPPA) by specifying <code>true</code> or
    #           <code>false</code> in the <code>childDirected</code> field. By
    #         specifying <code>true</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is</b> related
    #         to a website, program, or other application that is directed or targeted,
    #         in whole or in part, to children under age 13 and subject to COPPA. By
    #         specifying <code>false</code> in the <code>childDirected</code> field, you
    #         confirm that your use of Amazon Lex <b>is not</b>
    #         related to a website, program, or other application that is directed or
    #         targeted, in whole or in part, to children under age 13 and subject to
    #         COPPA. You may not specify a default value for the
    #           <code>childDirected</code> field that does not accurately reflect
    #         whether your use of Amazon Lex is related to a website, program, or other
    #         application that is directed or targeted, in whole or in part, to children
    #         under age 13 and subject to COPPA.</p>
    #            <p>If your use of Amazon Lex relates to a website, program, or other
    #         application that is directed in whole or in part, to children under age
    #         13, you must obtain any required verifiable parental consent under COPPA.
    #         For information regarding the use of Amazon Lex in connection with websites,
    #         programs, or other applications that are directed or targeted, in whole or
    #         in part, to children under age 13, see the <a href="https://aws.amazon.com/lex/faqs#data-security">Amazon Lex FAQ.</a>
    #            </p>
    # @option params [Boolean] :detect_sentiment
    #   <p>When set to <code>true</code> user utterances are sent to Amazon
    #         Comprehend for sentiment analysis. If you don't specify
    #           <code>detectSentiment</code>, the default is <code>false</code>.</p>
    # @option params [Boolean] :create_version
    #   <p>When set to <code>true</code> a new numbered version of the bot is
    #         created. This is the same as calling the <code>CreateBotVersion</code>
    #         operation. If you don't specify <code>createVersion</code>, the default is
    #           <code>false</code>.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to add to the bot. You can only add tags when you
    #         create a bot, you can't use the <code>PutBot</code> operation to update
    #         the tags on a bot. To update tags, use the <code>TagResource</code>
    #         operation.</p>
    # @example To create a bot
    #   # This example shows how to create a bot for ordering pizzas.
    #   params = {
    #     name: "DocOrderPizzaBot",
    #     description: "Orders a pizza from a local pizzeria.",
    #     intents: [
    #       {
    #         intent_name: "DocOrderPizza",
    #         intent_version: "$LATEST"
    #       }
    #     ],
    #     clarification_prompt: {
    #       messages: [
    #         {
    #           content_type: PlainText,
    #           content: "I'm sorry, I didn't hear that. Can you repeat what you just said?"
    #         },
    #         {
    #           content_type: PlainText,
    #           content: "Can you say that again?"
    #         }
    #       ],
    #       max_attempts: 1
    #     },
    #     abort_statement: {
    #       messages: [
    #         {
    #           content_type: PlainText,
    #           content: "I don't understand. Can you try again?"
    #         },
    #         {
    #           content_type: PlainText,
    #           content: "I'm sorry, I don't understand."
    #         }
    #       ]
    #     },
    #     idle_session_ttl_in_seconds: 300,
    #     process_behavior: SAVE,
    #     locale: en-US,
    #     child_directed: true
    #   }
    #   options = {}
    #   response = client.put_bot(params, options)
    #   response.to_h #=>
    #   {
    #     status: NOT_BUILT,
    #     intents: [
    #       {
    #         intent_version: "$LATEST",
    #         intent_name: "DocOrderPizza"
    #       }
    #     ],
    #     name: "DocOrderPizzaBot",
    #     locale: en-US,
    #     checksum: "20172ee3-fa06-49b2-bbc5-667c090303e9",
    #     abort_statement: {
    #       messages: [
    #         {
    #           content: "I don't understand. Can you try again?",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "I'm sorry, I don't understand.",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     version: "$LATEST",
    #     last_updated_date: Time.parse(1494360160.133),
    #     created_date: Time.parse(1494360160.133),
    #     clarification_prompt: {
    #       max_attempts: 1,
    #       messages: [
    #         {
    #           content: "I'm sorry, I didn't hear that. Can you repeate what you just said?",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "Can you say that again?",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     child_directed: true,
    #     idle_session_ttl_in_seconds: 300,
    #     description: "Orders a pizza from a local pizzeria."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "BotName", # required
    #     description: "Description",
    #     intents: [
    #       {
    #         intent_name: "IntentName", # required
    #         intent_version: "Version", # required
    #       }
    #     ],
    #     enable_model_improvements: false,
    #     nlu_intent_confidence_threshold: 1.0,
    #     clarification_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     abort_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     idle_session_ttl_in_seconds: 1,
    #     voice_id: "String",
    #     checksum: "String",
    #     process_behavior: "SAVE" # One of: ["SAVE", "BUILD"],
    #     locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"], # required
    #     child_directed: false, # required
    #     detect_sentiment: false,
    #     create_version: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_bot(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "BotName",
    #     description: "Description",
    #     intents: [
    #       {
    #         intent_name: "IntentName", # required
    #         intent_version: "Version", # required
    #       }
    #     ],
    #     enable_model_improvements: false,
    #     nlu_intent_confidence_threshold: 1.0,
    #     clarification_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     abort_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     status: "BUILDING" # One of: ["BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"],
    #     failure_reason: "String",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     idle_session_ttl_in_seconds: 1,
    #     voice_id: "String",
    #     checksum: "String",
    #     version: "Version",
    #     locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #     child_directed: false,
    #     create_version: false,
    #     detect_sentiment: false,
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::PutBotResponse]
    def put_bot(params = {}, options = {})
      request = build_request(:put_bot, params)
      request.send_request(options)
    end

    # <p>Creates an alias for the specified version of the bot or replaces
    #       an alias for the specified bot. To change the version of the bot that the
    #       alias points to, replace the alias. For more information about aliases,
    #       see <a>versioning-aliases</a>.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:PutBotAlias</code> action. </p>
    # @param [Hash, Types::PutBotAliasRequest] params
    # @option params [String] :name
    #   <p>The name of the alias. The name is <i>not</i> case
    #         sensitive.</p>
    # @option params [String] :description
    #   <p>A description of the alias.</p>
    # @option params [String] :bot_version
    #   <p>The version of the bot.</p>
    # @option params [String] :bot_name
    #   <p>The name of the bot.</p>
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new bot alias, leave the <code>checksum</code>
    #         field blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a bot alias, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    # @option params [Types::ConversationLogsRequest] :conversation_logs
    #   <p>Settings for conversation logs for the alias.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to add to the bot alias. You can only add tags when you
    #         create an alias, you can't use the <code>PutBotAlias</code> operation to
    #         update the tags on a bot alias. To update tags, use the
    #           <code>TagResource</code> operation.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "AliasName", # required
    #     description: "Description",
    #     bot_version: "Version", # required
    #     bot_name: "BotName", # required
    #     checksum: "String",
    #     conversation_logs: {
    #       log_settings: [ # required
    #         {
    #           log_type: "AUDIO" # One of: ["AUDIO", "TEXT"], # required
    #           destination: "CLOUDWATCH_LOGS" # One of: ["CLOUDWATCH_LOGS", "S3"], # required
    #           kms_key_arn: "KmsKeyArn",
    #           resource_arn: "ResourceArn", # required
    #         }
    #       ],
    #       iam_role_arn: "IamRoleArn", # required
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_bot_alias(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "AliasName",
    #     description: "Description",
    #     bot_version: "Version",
    #     bot_name: "BotName",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     checksum: "String",
    #     conversation_logs: {
    #       log_settings: [
    #         {
    #           log_type: "AUDIO" # One of: ["AUDIO", "TEXT"],
    #           destination: "CLOUDWATCH_LOGS" # One of: ["CLOUDWATCH_LOGS", "S3"],
    #           kms_key_arn: "KmsKeyArn",
    #           resource_arn: "ResourceArn",
    #           resource_prefix: "ResourcePrefix"
    #         }
    #       ],
    #       iam_role_arn: "IamRoleArn"
    #     },
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    # @return [Types::PutBotAliasResponse]
    def put_bot_alias(params = {}, options = {})
      request = build_request(:put_bot_alias, params)
      request.send_request(options)
    end

    # <p>Creates an intent or replaces an existing intent.</p>
    #          <p>To define the interaction between the user and your bot, you use
    #       one or more intents. For a pizza ordering bot, for example, you would
    #       create an <code>OrderPizza</code> intent. </p>
    #          <p>To create an intent or replace an existing intent, you must provide
    #       the following:</p>
    #          <ul>
    #             <li>
    #                <p>Intent name. For example, <code>OrderPizza</code>.</p>
    #             </li>
    #             <li>
    #                <p>Sample utterances. For example, "Can I order a pizza, please."
    #           and "I want to order a pizza."</p>
    #             </li>
    #             <li>
    #                <p>Information to be gathered. You specify slot types for the
    #           information that your bot will request from the user. You can specify
    #           standard slot types, such as a date or a time, or custom slot types
    #           such as the size and crust of a pizza.</p>
    #             </li>
    #             <li>
    #                <p>How the intent will be fulfilled. You can provide a Lambda
    #           function or configure the intent to return the intent information to
    #           the client application. If you use a Lambda function, when all of the
    #           intent information is available, Amazon Lex invokes your Lambda function.
    #           If you configure your intent to return the intent information to the
    #           client application. </p>
    #             </li>
    #          </ul>
    #          <p>You can specify other optional information in the request, such
    #       as:</p>
    #          <ul>
    #             <li>
    #                <p>A confirmation prompt to ask the user to confirm an intent. For
    #           example, "Shall I order your pizza?"</p>
    #             </li>
    #             <li>
    #                <p>A conclusion statement to send to the user after the intent has
    #           been fulfilled. For example, "I placed your pizza order."</p>
    #             </li>
    #             <li>
    #                <p>A follow-up prompt that asks the user for additional activity.
    #           For example, asking "Do you want to order a drink with your
    #           pizza?"</p>
    #             </li>
    #          </ul>
    #          <p>If you specify an existing intent name to update the intent, Amazon Lex
    #       replaces the values in the <code>$LATEST</code> version of the intent with
    #       the values in the request. Amazon Lex removes fields that you don't provide in
    #       the request. If you don't specify the required fields, Amazon Lex throws an
    #       exception. When you update the <code>$LATEST</code> version of an intent,
    #       the <code>status</code> field of any bot that uses the
    #         <code>$LATEST</code> version of the intent is set to
    #         <code>NOT_BUILT</code>.</p>
    #          <p>For more information, see <a>how-it-works</a>.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:PutIntent</code> action.</p>
    # @param [Hash, Types::PutIntentRequest] params
    # @option params [String] :name
    #   <p>The name of the intent. The name is <i>not</i> case
    #         sensitive. </p>
    #            <p>The name can't match a built-in intent name, or a built-in intent
    #         name with "AMAZON." removed. For example, because there is a built-in
    #         intent called <code>AMAZON.HelpIntent</code>, you can't create a custom
    #         intent called <code>HelpIntent</code>.</p>
    #            <p>For a list of built-in intents, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    # @option params [String] :description
    #   <p>A description of the intent.</p>
    # @option params [Array<Types::Slot>] :slots
    #   <p>An array of intent slots. At runtime, Amazon Lex elicits required slot
    #         values from the user using prompts defined in the slots. For more
    #         information, see <a>how-it-works</a>. </p>
    # @option params [Array<String>] :sample_utterances
    #   <p>An array of utterances (strings) that a user might say to signal
    #         the intent. For example, "I want {PizzaSize} pizza", "Order {Quantity}
    #         {PizzaSize} pizzas". </p>
    #            <p>In each utterance, a slot name is enclosed in curly braces.
    #       </p>
    # @option params [Types::Prompt] :confirmation_prompt
    #   <p>Prompts the user to confirm the intent. This question should have a
    #         yes or no answer.</p>
    #            <p>Amazon Lex uses this prompt to ensure that the user acknowledges that
    #         the intent is ready for fulfillment. For example, with the
    #           <code>OrderPizza</code> intent, you might want to confirm that the order
    #         is correct before placing it. For other intents, such as intents that
    #         simply respond to user questions, you might not need to ask the user for
    #         confirmation before providing the information. </p>
    #            <note>
    #               <p>You you must provide both the <code>rejectionStatement</code> and
    #           the <code>confirmationPrompt</code>, or neither.</p>
    #            </note>
    # @option params [Types::Statement] :rejection_statement
    #   <p>When the user answers "no" to the question defined in
    #           <code>confirmationPrompt</code>, Amazon Lex responds with this statement to
    #         acknowledge that the intent was canceled. </p>
    #            <note>
    #               <p>You must provide both the <code>rejectionStatement</code> and the
    #             <code>confirmationPrompt</code>, or neither.</p>
    #            </note>
    # @option params [Types::FollowUpPrompt] :follow_up_prompt
    #   <p>Amazon Lex uses this prompt to solicit additional activity after
    #         fulfilling an intent. For example, after the <code>OrderPizza</code>
    #         intent is fulfilled, you might prompt the user to order a drink.</p>
    #            <p>The action that Amazon Lex takes depends on the user's response, as
    #         follows:</p>
    #            <ul>
    #               <li>
    #                  <p>If the user says "Yes" it responds with the clarification
    #             prompt that is configured for the bot.</p>
    #               </li>
    #               <li>
    #                  <p>if the user says "Yes" and continues with an utterance that
    #             triggers an intent it starts a conversation for the intent.</p>
    #               </li>
    #               <li>
    #                  <p>If the user says "No" it responds with the rejection statement
    #             configured for the the follow-up prompt.</p>
    #               </li>
    #               <li>
    #                  <p>If it doesn't recognize the utterance it repeats the follow-up
    #             prompt again.</p>
    #               </li>
    #            </ul>
    #            <p>The <code>followUpPrompt</code> field and the
    #           <code>conclusionStatement</code> field are mutually exclusive. You can
    #         specify only one. </p>
    # @option params [Types::Statement] :conclusion_statement
    #   <p> The statement that you want Amazon Lex to convey to the user after the
    #         intent is successfully fulfilled by the Lambda function. </p>
    #            <p>This element is relevant only if you provide a Lambda function in
    #         the <code>fulfillmentActivity</code>. If you return the intent to the
    #         client application, you can't specify this element.</p>
    #            <note>
    #               <p>The <code>followUpPrompt</code> and
    #             <code>conclusionStatement</code> are mutually exclusive. You can
    #           specify only one.</p>
    #            </note>
    # @option params [Types::CodeHook] :dialog_code_hook
    #   <p> Specifies a Lambda function to invoke for each user input. You can
    #         invoke this Lambda function to personalize user interaction. </p>
    #            <p>For example, suppose your bot determines that the user is John.
    #         Your Lambda function might retrieve John's information from a backend
    #         database and prepopulate some of the values. For example, if you find that
    #         John is gluten intolerant, you might set the corresponding intent slot,
    #           <code>GlutenIntolerant</code>, to true. You might find John's phone
    #         number and set the corresponding session attribute. </p>
    # @option params [Types::FulfillmentActivity] :fulfillment_activity
    #   <p>Required. Describes how the intent is fulfilled. For example, after
    #         a user provides all of the information for a pizza order,
    #           <code>fulfillmentActivity</code> defines how the bot places an order
    #         with a local pizza store. </p>
    #            <p> You might configure Amazon Lex to return all of the intent information
    #         to the client application, or direct it to invoke a Lambda function that
    #         can process the intent (for example, place an order with a pizzeria).
    #       </p>
    # @option params [String] :parent_intent_signature
    #   <p>A unique identifier for the built-in intent to base this intent on.
    #         To find the signature for an intent, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents">Standard Built-in Intents</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new intent, leave the <code>checksum</code> field
    #         blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a intent, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    # @option params [Boolean] :create_version
    #   <p>When set to <code>true</code> a new numbered version of the intent
    #         is created. This is the same as calling the
    #           <code>CreateIntentVersion</code> operation. If you do not specify
    #           <code>createVersion</code>, the default is <code>false</code>.</p>
    # @option params [Types::KendraConfiguration] :kendra_configuration
    #   <p>Configuration information required to use the
    #           <code>AMAZON.KendraSearchIntent</code> intent to connect to an Amazon
    #         Kendra index. For more information, see <a href="http://docs.aws.amazon.com/lex/latest/dg/built-in-intent-kendra-search.html">
    #           AMAZON.KendraSearchIntent</a>.</p>
    # @option params [Array<Types::InputContext>] :input_contexts
    #   <p>An array of <code>InputContext</code> objects that lists the contexts
    #         that must be active for Amazon Lex to choose the intent in a conversation with
    #         the user.</p>
    # @option params [Array<Types::OutputContext>] :output_contexts
    #   <p>An array of <code>OutputContext</code> objects that lists the contexts
    #         that the intent activates when the intent is fulfilled.</p>
    # @example To create an intent
    #   # This example shows how to create an intent for ordering pizzas.
    #   params = {
    #     name: "DocOrderPizza",
    #     description: "Order a pizza from a local pizzeria.",
    #     slots: [
    #       {
    #         name: "Type",
    #         description: "The type of pizza to order.",
    #         slot_constraint: Required,
    #         slot_type: "DocPizzaType",
    #         slot_type_version: "$LATEST",
    #         value_elicitation_prompt: {
    #           messages: [
    #             {
    #               content_type: PlainText,
    #               content: "What type of pizza would you like?"
    #             },
    #             {
    #               content_type: PlainText,
    #               content: "Vegie or cheese pizza?"
    #             },
    #             {
    #               content_type: PlainText,
    #               content: "I can get you a vegie or a cheese pizza."
    #             }
    #           ],
    #           max_attempts: 1
    #         },
    #         priority: 1,
    #         sample_utterances: [
    #           "Get me a {Type} pizza.",
    #           "A {Type} pizza please.",
    #           "I'd like a {Type} pizza."
    #         ]
    #       },
    #       {
    #         name: "Crust",
    #         description: "The type of pizza crust to order.",
    #         slot_constraint: Required,
    #         slot_type: "DocPizzaCrustType",
    #         slot_type_version: "$LATEST",
    #         value_elicitation_prompt: {
    #           messages: [
    #             {
    #               content_type: PlainText,
    #               content: "What type of crust would you like?"
    #             },
    #             {
    #               content_type: PlainText,
    #               content: "Thick or thin crust?"
    #             }
    #           ],
    #           max_attempts: 1
    #         },
    #         priority: 2,
    #         sample_utterances: [
    #           "Make it a {Crust} crust.",
    #           "I'd like a {Crust} crust."
    #         ]
    #       },
    #       {
    #         name: "Sauce",
    #         description: "The type of sauce to use on the pizza.",
    #         slot_constraint: Required,
    #         slot_type: "DocPizzaSauceType",
    #         slot_type_version: "$LATEST",
    #         value_elicitation_prompt: {
    #           messages: [
    #             {
    #               content_type: PlainText,
    #               content: "White or red sauce?"
    #             },
    #             {
    #               content_type: PlainText,
    #               content: "Garlic or tomato sauce?"
    #             }
    #           ],
    #           max_attempts: 1
    #         },
    #         priority: 3,
    #         sample_utterances: [
    #           "Make it {Sauce} sauce.",
    #           "I'd like {Sauce} sauce."
    #         ]
    #       }
    #     ],
    #     sample_utterances: [
    #       "Order me a pizza.",
    #       "Order me a {Type} pizza.",
    #       "I want a {Crust} crust {Type} pizza",
    #       "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
    #     ],
    #     confirmation_prompt: {
    #       messages: [
    #         {
    #           content_type: PlainText,
    #           content: "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?"
    #         }
    #       ],
    #       max_attempts: 1
    #     },
    #     rejection_statement: {
    #       messages: [
    #         {
    #           content_type: PlainText,
    #           content: "Ok, I'll cancel your order."
    #         },
    #         {
    #           content_type: PlainText,
    #           content: "I cancelled your order."
    #         }
    #       ]
    #     },
    #     conclusion_statement: {
    #       messages: [
    #         {
    #           content_type: PlainText,
    #           content: "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce."
    #         },
    #         {
    #           content_type: PlainText,
    #           content: "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way."
    #         }
    #       ],
    #       response_card: "foo"
    #     },
    #     fulfillment_activity: {
    #       type: ReturnIntent
    #     }
    #   }
    #   options = {}
    #   response = client.put_intent(params, options)
    #   response.to_h #=>
    #   {
    #     confirmation_prompt: {
    #       max_attempts: 1,
    #       messages: [
    #         {
    #           content: "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     name: "DocOrderPizza",
    #     checksum: "ca9bc13d-afc8-4706-bbaf-091f7a5935d6",
    #     conclusion_statement: {
    #       messages: [
    #         {
    #           content: "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.",
    #           content_type: PlainText
    #         }
    #       ],
    #       response_card: "foo"
    #     },
    #     version: "$LATEST",
    #     rejection_statement: {
    #       messages: [
    #         {
    #           content: "Ok, I'll cancel your order.",
    #           content_type: PlainText
    #         },
    #         {
    #           content: "I cancelled your order.",
    #           content_type: PlainText
    #         }
    #       ]
    #     },
    #     created_date: Time.parse(1494359783.453),
    #     last_updated_date: Time.parse(1494359783.453),
    #     sample_utterances: [
    #       "Order me a pizza.",
    #       "Order me a {Type} pizza.",
    #       "I want a {Crust} crust {Type} pizza",
    #       "I want a {Crust} crust {Type} pizza with {Sauce} sauce."
    #     ],
    #     slots: [
    #       {
    #         slot_type: "DocPizzaSauceType",
    #         name: "Sauce",
    #         slot_constraint: Required,
    #         value_elicitation_prompt: {
    #           max_attempts: 1,
    #           messages: [
    #             {
    #               content: "White or red sauce?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "Garlic or tomato sauce?",
    #               content_type: PlainText
    #             }
    #           ]
    #         },
    #         priority: 3,
    #         slot_type_version: "$LATEST",
    #         sample_utterances: [
    #           "Make it {Sauce} sauce.",
    #           "I'd like {Sauce} sauce."
    #         ],
    #         description: "The type of sauce to use on the pizza."
    #       },
    #       {
    #         slot_type: "DocPizzaType",
    #         name: "Type",
    #         slot_constraint: Required,
    #         value_elicitation_prompt: {
    #           max_attempts: 1,
    #           messages: [
    #             {
    #               content: "What type of pizza would you like?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "Vegie or cheese pizza?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "I can get you a vegie or a cheese pizza.",
    #               content_type: PlainText
    #             }
    #           ]
    #         },
    #         priority: 1,
    #         slot_type_version: "$LATEST",
    #         sample_utterances: [
    #           "Get me a {Type} pizza.",
    #           "A {Type} pizza please.",
    #           "I'd like a {Type} pizza."
    #         ],
    #         description: "The type of pizza to order."
    #       },
    #       {
    #         slot_type: "DocPizzaCrustType",
    #         name: "Crust",
    #         slot_constraint: Required,
    #         value_elicitation_prompt: {
    #           max_attempts: 1,
    #           messages: [
    #             {
    #               content: "What type of crust would you like?",
    #               content_type: PlainText
    #             },
    #             {
    #               content: "Thick or thin crust?",
    #               content_type: PlainText
    #             }
    #           ]
    #         },
    #         priority: 2,
    #         slot_type_version: "$LATEST",
    #         sample_utterances: [
    #           "Make it a {Crust} crust.",
    #           "I'd like a {Crust} crust."
    #         ],
    #         description: "The type of pizza crust to order."
    #       }
    #     ],
    #     fulfillment_activity: {
    #       type: ReturnIntent
    #     },
    #     description: "Order a pizza from a local pizzeria."
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "IntentName", # required
    #     description: "Description",
    #     slots: [
    #       {
    #         name: "SlotName", # required
    #         description: "Description",
    #         slot_constraint: "Required" # One of: ["Required", "Optional"], # required
    #         slot_type: "CustomOrBuiltinSlotTypeName",
    #         slot_type_version: "Version",
    #         value_elicitation_prompt: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #               content: "ContentString", # required
    #               group_number: 1
    #             }
    #           ],
    #           max_attempts: 1, # required
    #           response_card: "ResponseCard"
    #         },
    #         priority: 1,
    #         sample_utterances: ["Utterance"],
    #         response_card: "ResponseCard",
    #         obfuscation_setting: "NONE" # One of: ["NONE", "DEFAULT_OBFUSCATION"],
    #         default_value_spec: {
    #           default_value_list: [ # required
    #             {
    #               default_value: "SlotDefaultValueString", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     sample_utterances: ["Utterance"],
    #     confirmation_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     rejection_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     follow_up_prompt: {
    #       prompt: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         max_attempts: 1, # required
    #         response_card: "ResponseCard"
    #       },
    #       rejection_statement: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         response_card: "ResponseCard"
    #       }
    #     },
    #     conclusion_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     dialog_code_hook: {
    #       uri: "LambdaARN", # required
    #       message_version: "MessageVersion", # required
    #     },
    #     fulfillment_activity: {
    #       type: "ReturnIntent" # One of: ["ReturnIntent", "CodeHook"], # required
    #       code_hook: {
    #         uri: "LambdaARN", # required
    #         message_version: "MessageVersion", # required
    #       }
    #     },
    #     parent_intent_signature: "BuiltinIntentSignature",
    #     checksum: "String",
    #     create_version: false,
    #     kendra_configuration: {
    #       kendra_index: "KendraIndexArn", # required
    #       query_filter_string: "QueryFilterString",
    #       role: "roleArn", # required
    #     },
    #     input_contexts: [
    #       {
    #         name: "InputContextName", # required
    #       }
    #     ],
    #     output_contexts: [
    #       {
    #         name: "OutputContextName", # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1, # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_intent(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "IntentName",
    #     description: "Description",
    #     slots: [
    #       {
    #         name: "SlotName", # required
    #         description: "Description",
    #         slot_constraint: "Required" # One of: ["Required", "Optional"], # required
    #         slot_type: "CustomOrBuiltinSlotTypeName",
    #         slot_type_version: "Version",
    #         value_elicitation_prompt: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #               content: "ContentString", # required
    #               group_number: 1
    #             }
    #           ],
    #           max_attempts: 1, # required
    #           response_card: "ResponseCard"
    #         },
    #         priority: 1,
    #         sample_utterances: ["Utterance"],
    #         response_card: "ResponseCard",
    #         obfuscation_setting: "NONE" # One of: ["NONE", "DEFAULT_OBFUSCATION"],
    #         default_value_spec: {
    #           default_value_list: [ # required
    #             {
    #               default_value: "SlotDefaultValueString", # required
    #             }
    #           ]
    #         }
    #       }
    #     ],
    #     sample_utterances: ["Utterance"],
    #     confirmation_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard"
    #     },
    #     rejection_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     follow_up_prompt: {
    #       prompt: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         max_attempts: 1, # required
    #         response_card: "ResponseCard"
    #       },
    #       rejection_statement: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #             content: "ContentString", # required
    #             group_number: 1
    #           }
    #         ],
    #         response_card: "ResponseCard"
    #       }
    #     },
    #     conclusion_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText" # One of: ["PlainText", "SSML", "CustomPayload"], # required
    #           content: "ContentString", # required
    #           group_number: 1
    #         }
    #       ],
    #       response_card: "ResponseCard"
    #     },
    #     dialog_code_hook: {
    #       uri: "LambdaARN", # required
    #       message_version: "MessageVersion", # required
    #     },
    #     fulfillment_activity: {
    #       type: "ReturnIntent" # One of: ["ReturnIntent", "CodeHook"], # required
    #       code_hook: {
    #         uri: "LambdaARN", # required
    #         message_version: "MessageVersion", # required
    #       }
    #     },
    #     parent_intent_signature: "BuiltinIntentSignature",
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     version: "Version",
    #     checksum: "String",
    #     create_version: false,
    #     kendra_configuration: {
    #       kendra_index: "KendraIndexArn", # required
    #       query_filter_string: "QueryFilterString",
    #       role: "roleArn", # required
    #     },
    #     input_contexts: [
    #       {
    #         name: "InputContextName", # required
    #       }
    #     ],
    #     output_contexts: [
    #       {
    #         name: "OutputContextName", # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1, # required
    #       }
    #     ]
    #   }
    # @return [Types::PutIntentResponse]
    def put_intent(params = {}, options = {})
      request = build_request(:put_intent, params)
      request.send_request(options)
    end

    # <p>Creates a custom slot type or replaces an existing custom slot
    #       type.</p>
    #          <p>To create a custom slot type, specify a name for the slot type and
    #       a set of enumeration values, which are the values that a slot of this type
    #       can assume. For more information, see <a>how-it-works</a>.</p>
    #          <p>If you specify the name of an existing slot type, the fields in the
    #       request replace the existing values in the <code>$LATEST</code> version of
    #       the slot type. Amazon Lex removes the fields that you don't provide in the
    #       request. If you don't specify required fields, Amazon Lex throws an exception.
    #       When you update the <code>$LATEST</code> version of a slot type, if a bot
    #       uses the <code>$LATEST</code> version of an intent that contains the slot
    #       type, the bot's <code>status</code> field is set to
    #       <code>NOT_BUILT</code>.</p>
    #          <p>This operation requires permissions for the
    #         <code>lex:PutSlotType</code> action.</p>
    # @param [Hash, Types::PutSlotTypeRequest] params
    # @option params [String] :name
    #   <p>The name of the slot type. The name is <i>not</i>
    #         case sensitive. </p>
    #            <p>The name can't match a built-in slot type name, or a built-in slot
    #         type name with "AMAZON." removed. For example, because there is a built-in
    #         slot type called <code>AMAZON.DATE</code>, you can't create a custom slot
    #         type called <code>DATE</code>.</p>
    #            <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills
    #           Kit</i>.</p>
    # @option params [String] :description
    #   <p>A description of the slot type.</p>
    # @option params [Array<Types::EnumerationValue>] :enumeration_values
    #   <p>A list of <code>EnumerationValue</code> objects that defines the
    #         values that the slot type can take. Each value can have a list of
    #           <code>synonyms</code>, which are additional values that help train the
    #         machine learning model about the values that it resolves for a slot. </p>
    #            <p>A regular expression slot type doesn't require enumeration values.
    #         All other slot types require a list of enumeration values.</p>
    #            <p>When Amazon Lex resolves a slot value, it generates a resolution list
    #         that contains up to five possible values for the slot. If you are using a
    #         Lambda function, this resolution list is passed to the function. If you
    #         are not using a Lambda function you can choose to return the value that
    #         the user entered or the first value in the resolution list as the slot
    #         value. The <code>valueSelectionStrategy</code> field indicates the option
    #         to use. </p>
    # @option params [String] :checksum
    #   <p>Identifies a specific revision of the <code>$LATEST</code>
    #         version.</p>
    #            <p>When you create a new slot type, leave the <code>checksum</code>
    #         field blank. If you specify a checksum you get a
    #           <code>BadRequestException</code> exception.</p>
    #            <p>When you want to update a slot type, set the <code>checksum</code>
    #         field to the checksum of the most recent revision of the
    #           <code>$LATEST</code> version. If you don't specify the <code>
    #           checksum</code> field, or if the checksum does not match the
    #           <code>$LATEST</code> version, you get a
    #           <code>PreconditionFailedException</code> exception.</p>
    # @option params [String] :value_selection_strategy
    #   <p>Determines the slot resolution strategy that Amazon Lex uses to return
    #         slot type values. The field can be set to one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ORIGINAL_VALUE</code> - Returns the value entered by the
    #             user, if the user value is similar to the slot value.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TOP_RESOLUTION</code> - If there is a resolution list for
    #             the slot, return the first value in the resolution list as the slot
    #             type value. If there is no resolution list, null is
    #             returned.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify the <code>valueSelectionStrategy</code>, the
    #         default is <code>ORIGINAL_VALUE</code>.</p>
    # @option params [Boolean] :create_version
    #   <p>When set to <code>true</code> a new numbered version of the slot
    #         type is created. This is the same as calling the
    #           <code>CreateSlotTypeVersion</code> operation. If you do not specify
    #           <code>createVersion</code>, the default is <code>false</code>.</p>
    # @option params [String] :parent_slot_type_signature
    #   <p>The built-in slot type used as the parent of the slot type. When you
    #         define a parent slot type, the new slot type has all of the same
    #         configuration as the parent.</p>
    #            <p>Only <code>AMAZON.AlphaNumeric</code> is supported.</p>
    # @option params [Array<Types::SlotTypeConfiguration>] :slot_type_configurations
    #   <p>Configuration information that extends the parent built-in slot type.
    #         The configuration is added to the settings for the parent slot
    #         type.</p>
    # @example To Create a Slot Type
    #   # This example shows how to create a slot type that describes pizza sauces.
    #   params = {
    #     name: "PizzaSauceType",
    #     description: "Available pizza sauces",
    #     enumeration_values: [
    #       {
    #         value: "red"
    #       },
    #       {
    #         value: "white"
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_slot_type(params, options)
    #   response.to_h #=>
    #   {
    #     enumeration_values: [
    #       {
    #         value: "red"
    #       },
    #       {
    #         value: "white"
    #       }
    #     ],
    #     name: "DocPizzaSauceType",
    #     checksum: "cfd00ed1-775d-4357-947c-aca7e73b44ba",
    #     version: "$LATEST",
    #     last_updated_date: Time.parse(1494356442.23),
    #     created_date: Time.parse(1494356442.23),
    #     description: "Available pizza sauces"
    #   }
    # @example Request syntax with placeholder values
    #   params = {
    #     name: "SlotTypeName", # required
    #     description: "Description",
    #     enumeration_values: [
    #       {
    #         value: "Value", # required
    #         synonyms: ["Value"]
    #       }
    #     ],
    #     checksum: "String",
    #     value_selection_strategy: "ORIGINAL_VALUE" # One of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"],
    #     create_version: false,
    #     parent_slot_type_signature: "CustomOrBuiltinSlotTypeName",
    #     slot_type_configurations: [
    #       {
    #         regex_configuration: {
    #           pattern: "RegexPattern", # required
    #         }
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.put_slot_type(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "SlotTypeName",
    #     description: "Description",
    #     enumeration_values: [
    #       {
    #         value: "Value", # required
    #         synonyms: ["Value"]
    #       }
    #     ],
    #     last_updated_date: Time.now,
    #     created_date: Time.now,
    #     version: "Version",
    #     checksum: "String",
    #     value_selection_strategy: "ORIGINAL_VALUE" # One of: ["ORIGINAL_VALUE", "TOP_RESOLUTION"],
    #     create_version: false,
    #     parent_slot_type_signature: "CustomOrBuiltinSlotTypeName",
    #     slot_type_configurations: [
    #       {
    #         regex_configuration: {
    #           pattern: "RegexPattern", # required
    #         }
    #       }
    #     ]
    #   }
    # @return [Types::PutSlotTypeResponse]
    def put_slot_type(params = {}, options = {})
      request = build_request(:put_slot_type, params)
      request.send_request(options)
    end

    # <p>Starts a job to import a resource to Amazon Lex.</p>
    # @param [Hash, Types::StartImportRequest] params
    # @option params [String] :payload
    #   <p>A zip archive in binary format. The archive should contain one file, a
    #         JSON file containing the resource to import. The resource should match the
    #         type specified in the <code>resourceType</code> field.</p>
    # @option params [String] :resource_type
    #   <p>Specifies the type of resource to export. Each resource also
    #         exports any resources that it depends on. </p>
    #            <ul>
    #               <li>
    #                  <p>A bot exports dependent intents.</p>
    #               </li>
    #               <li>
    #                  <p>An intent exports dependent slot types.</p>
    #               </li>
    #            </ul>
    # @option params [String] :merge_strategy
    #   <p>Specifies the action that the <code>StartImport</code> operation
    #         should take when there is an existing resource with the same
    #         name.</p>
    #            <ul>
    #               <li>
    #                  <p>FAIL_ON_CONFLICT - The import operation is stopped on the first
    #             conflict between a resource in the import file and an existing
    #             resource. The name of the resource causing the conflict is in the
    #               <code>failureReason</code> field of the response to the
    #               <code>GetImport</code> operation.</p>
    #                  <p>OVERWRITE_LATEST - The import operation proceeds even if there
    #             is a conflict with an existing resource. The $LASTEST version of the
    #             existing resource is overwritten with the data from the import
    #             file.</p>
    #               </li>
    #            </ul>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tags to add to the imported bot. You can only add tags when
    #         you import a bot, you can't add tags to an intent or slot type.</p>
    # @example Request syntax with placeholder values
    #   params = {
    #     payload: "data", # required
    #     resource_type: "BOT" # One of: ["BOT", "INTENT", "SLOT_TYPE"], # required
    #     merge_strategy: "OVERWRITE_LATEST" # One of: ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"], # required
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ]
    #   }
    #   options = {}
    #   response = client.start_import(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     name: "Name",
    #     resource_type: "BOT" # One of: ["BOT", "INTENT", "SLOT_TYPE"],
    #     merge_strategy: "OVERWRITE_LATEST" # One of: ["OVERWRITE_LATEST", "FAIL_ON_CONFLICT"],
    #     import_id: "String",
    #     import_status: "IN_PROGRESS" # One of: ["IN_PROGRESS", "COMPLETE", "FAILED"],
    #     tags: [
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #     ],
    #     created_date: Time.now
    #   }
    # @return [Types::StartImportResponse]
    def start_import(params = {}, options = {})
      request = build_request(:start_import, params)
      request.send_request(options)
    end

    # <p>Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2. Migrate your bot when
    #       you want to take advantage of the new features of Amazon Lex V2.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/lex/latest/dg/migrate.html">Migrating a bot</a> in the <i>Amazon Lex
    #         developer guide</i>.</p>
    # @param [Hash, Types::StartMigrationRequest] params
    # @option params [String] :v1_bot_name
    #   <p>The name of the Amazon Lex V1 bot that you are migrating to Amazon Lex V2.</p>
    # @option params [String] :v1_bot_version
    #   <p>The version of the bot to migrate to Amazon Lex V2. You can migrate the
    #           <code>$LATEST</code> version as well as any numbered version.</p>
    # @option params [String] :v2_bot_name
    #   <p>The name of the Amazon Lex V2 bot that you are migrating the Amazon Lex V1 bot to. </p>
    #            <ul>
    #               <li>
    #                  <p>If the Amazon Lex V2 bot doesn't exist, you must use the
    #               <code>CREATE_NEW</code> migration strategy.</p>
    #               </li>
    #               <li>
    #                  <p>If the Amazon Lex V2 bot exists, you must use the
    #               <code>UPDATE_EXISTING</code> migration strategy to change the
    #             contents of the Amazon Lex V2 bot.</p>
    #               </li>
    #            </ul>
    # @option params [String] :v2_bot_role
    #   <p>The IAM role that Amazon Lex uses to run the Amazon Lex V2 bot.</p>
    # @option params [String] :migration_strategy
    #   <p>The strategy used to conduct the migration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATE_NEW</code> - Creates a new Amazon Lex V2 bot and migrates
    #             the Amazon Lex V1 bot to the new bot.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UPDATE_EXISTING</code> - Overwrites the existing Amazon Lex V2 bot
    #             metadata and the locale being migrated. It doesn't change any other
    #             locales in the Amazon Lex V2 bot. If the locale doesn't exist, a new locale
    #             is created in the Amazon Lex V2 bot.</p>
    #               </li>
    #            </ul>
    # @example Request syntax with placeholder values
    #   params = {
    #     v1_bot_name: "BotName", # required
    #     v1_bot_version: "Version", # required
    #     v2_bot_name: "V2BotName", # required
    #     v2_bot_role: "IamRoleArn", # required
    #     migration_strategy: "CREATE_NEW" # One of: ["CREATE_NEW", "UPDATE_EXISTING"], # required
    #   }
    #   options = {}
    #   response = client.start_migration(params, options)
    # @example Response structure with placeholder values
    #   response.to_h #=>
    #   {
    #     v1_bot_name: "BotName",
    #     v1_bot_version: "Version",
    #     v1_bot_locale: "de-DE" # One of: ["de-DE", "en-AU", "en-GB", "en-IN", "en-US", "es-419", "es-ES", "es-US", "fr-FR", "fr-CA", "it-IT", "ja-JP", "ko-KR"],
    #     v2_bot_id: "V2BotId",
    #     v2_bot_role: "IamRoleArn",
    #     migration_id: "MigrationId",
    #     migration_strategy: "CREATE_NEW" # One of: ["CREATE_NEW", "UPDATE_EXISTING"],
    #     migration_timestamp: Time.now
    #   }
    # @return [Types::StartMigrationResponse]
    def start_migration(params = {}, options = {})
      request = build_request(:start_migration, params)
      request.send_request(options)
    end

    # <p>Adds the specified tags to the specified resource. If a tag key
    #       already exists, the existing value is replaced with the new value.</p>
    # @param [Hash, Types::TagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #         to tag.</p>
    # @option params [Array<Types::Tag>] :tags
    #   <p>A list of tag keys to add to the resource. If a tag key already
    #         exists, the existing value is replaced with the new value.</p>
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

    # <p>Removes tags from a bot, bot alias or bot channel.</p>
    # @param [Hash, Types::UntagResourceRequest] params
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to remove the tags
    #         from.</p>
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the resource. If a tag key does not
    #         exist on the resource, it is ignored.</p>
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
      context[:gem_name] = 'aws-sdk-lexmodelbuildingservice'
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
