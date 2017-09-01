# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/idempotency_token.rb'
require 'aws-sdk-core/plugins/jsonvalue_converter.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lex)

module Aws::Lex
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :lex

    set_api(ClientApi::API)

    add_plugin(Seahorse::Client::Plugins::ContentLength)
    add_plugin(Aws::Plugins::CredentialsConfiguration)
    add_plugin(Aws::Plugins::Logging)
    add_plugin(Aws::Plugins::ParamConverter)
    add_plugin(Aws::Plugins::ParamValidator)
    add_plugin(Aws::Plugins::UserAgent)
    add_plugin(Aws::Plugins::HelpfulSocketErrors)
    add_plugin(Aws::Plugins::RetryErrors)
    add_plugin(Aws::Plugins::GlobalConfiguration)
    add_plugin(Aws::Plugins::RegionalEndpoint)
    add_plugin(Aws::Plugins::ResponsePaging)
    add_plugin(Aws::Plugins::StubResponses)
    add_plugin(Aws::Plugins::IdempotencyToken)
    add_plugin(Aws::Plugins::JsonvalueConverter)
    add_plugin(Aws::Plugins::SignatureV4)
    add_plugin(Aws::Plugins::Protocols::RestJson)

    # @option options [required, Aws::CredentialProvider] :credentials
    #   Your AWS credentials. This can be an instance of any one of the
    #   following classes:
    #
    #   * `Aws::Credentials` - Used for configuring static, non-refreshing
    #     credentials.
    #
    #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
    #     from an EC2 IMDS on an EC2 instance.
    #
    #   * `Aws::SharedCredentials` - Used for loading credentials from a
    #     shared file, such as `~/.aws/config`.
    #
    #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
    #
    #   When `:credentials` are not configured directly, the following
    #   locations will be searched for credentials:
    #
    #   * `Aws.config[:credentials]`
    #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
    #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #   * EC2 IMDS instance profile - When used by default, the timeouts are
    #     very aggressive. Construct and pass an instance of
    #     `Aws::InstanceProfileCredentails` to enable retries and extended
    #     timeouts.
    #
    # @option options [required, String] :region
    #   The AWS region to connect to.  The configured `:region` is
    #   used to determine the service `:endpoint`. When not passed,
    #   a default `:region` is search for in the following locations:
    #
    #   * `Aws.config[:region]`
    #   * `ENV['AWS_REGION']`
    #   * `ENV['AMAZON_REGION']`
    #   * `ENV['AWS_DEFAULT_REGION']`
    #   * `~/.aws/credentials`
    #   * `~/.aws/config`
    #
    # @option options [String] :access_key_id
    #
    # @option options [Boolean] :convert_params (true)
    #   When `true`, an attempt is made to coerce request parameters into
    #   the required types.
    #
    # @option options [String] :endpoint
    #   The client endpoint is normally constructed from the `:region`
    #   option. You should only configure an `:endpoint` when connecting
    #   to test endpoints. This should be avalid HTTP(S) URI.
    #
    # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
    #   The log formatter.
    #
    # @option options [Symbol] :log_level (:info)
    #   The log level to send messages to the `:logger` at.
    #
    # @option options [Logger] :logger
    #   The Logger instance to send log messages to.  If this option
    #   is not set, logging will be disabled.
    #
    # @option options [String] :profile ("default")
    #   Used when loading credentials from the shared credentials file
    #   at HOME/.aws/credentials.  When not specified, 'default' is used.
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [String] :secret_access_key
    #
    # @option options [String] :session_token
    #
    # @option options [Boolean] :stub_responses (false)
    #   Causes the client to return stubbed responses. By default
    #   fake responses are generated and returned. You can specify
    #   the response data to return or errors to raise by calling
    #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
    #
    #   ** Please note ** When response stubbing is enabled, no HTTP
    #   requests are made, and retries are disabled.
    #
    # @option options [Boolean] :validate_params (true)
    #   When `true`, request parameters are validated before
    #   sending the request.
    #
    def initialize(*args)
      super
    end

    # @!group API Operations

    # Sends user input (text or speech) to Amazon Lex. Clients use this API
    # to send requests to Amazon Lex at runtime. Amazon Lex interprets the
    # user input using the machine learning model that it built for the bot.
    #
    # In response, Amazon Lex returns the next message to convey to the
    # user. Consider the following example messages:
    #
    # * For a user input "I would like a pizza," Amazon Lex might return a
    #   response with a message eliciting slot data (for example,
    #   `PizzaSize`): "What size pizza would you like?".
    #
    # * After the user provides all of the pizza order information, Amazon
    #   Lex might return a response with a message to get user confirmation:
    #   "Order the pizza?".
    #
    # * After the user replies "Yes" to the confirmation prompt, Amazon
    #   Lex might return a conclusion statement: "Thank you, your cheese
    #   pizza has been ordered.".
    #
    # Not all Amazon Lex messages require a response from the user. For
    # example, conclusion statements do not require a response. Some
    # messages require only a yes or no response. In addition to the
    # `message`, Amazon Lex provides additional context about the message in
    # the response that you can use to enhance client behavior, such as
    # displaying the appropriate client user interface. Consider the
    # following examples:
    #
    # * If the message is to elicit slot data, Amazon Lex returns the
    #   following context information:
    #
    #   * `x-amz-lex-dialog-state` header set to `ElicitSlot`
    #
    #   * `x-amz-lex-intent-name` header set to the intent name in the
    #     current context
    #
    #   * `x-amz-lex-slot-to-elicit` header set to the slot name for which
    #     the `message` is eliciting information
    #
    #   * `x-amz-lex-slots` header set to a map of slots configured for the
    #     intent with their current values
    #
    # * If the message is a confirmation prompt, the
    #   `x-amz-lex-dialog-state` header is set to `Confirmation` and the
    #   `x-amz-lex-slot-to-elicit` header is omitted.
    #
    # * If the message is a clarification prompt configured for the intent,
    #   indicating that the user intent is not understood, the
    #   `x-amz-dialog-state` header is set to `ElicitIntent` and the
    #   `x-amz-slot-to-elicit` header is omitted.
    #
    # In addition, Amazon Lex also returns your application-specific
    # `sessionAttributes`. For more information, see [Managing Conversation
    # Context][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html
    #
    # @option params [required, String] :bot_name
    #   Name of the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias
    #   Alias of the Amazon Lex bot.
    #
    # @option params [required, String] :user_id
    #   ID of the client application user. Typically, each of your application
    #   users should have a unique ID. The application developer decides the
    #   user IDs. At runtime, each request must include the user ID. Note the
    #   following considerations:
    #
    #   * If you want a user to start conversation on one device and continue
    #     the conversation on another device, you might choose a user-specific
    #     identifier, such as the user's login, or Amazon Cognito user ID
    #     (assuming your application is using Amazon Cognito).
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, you might choose
    #     device-specific identifier, such as device ID, or some globally
    #     unique identifier.
    #
    # @option params [String] :session_attributes
    #   You pass this value in the `x-amz-lex-session-attributes` HTTP header.
    #   The value must be map (keys and values must be strings) that is JSON
    #   serialized and then base64 encoded.
    #
    #   A session represents dialog between a user and Amazon Lex. At runtime,
    #   a client application can pass contextual information, in the request
    #   to Amazon Lex. For example,
    #
    #   * You might use session attributes to track the requestID of user
    #     requests.
    #
    #   * In Getting Started Exercise 1, the example bot uses the price
    #     session attribute to maintain the price of flowers ordered (for
    #     example, "price":25). The code hook (Lambda function) sets this
    #     attribute based on the type of flowers ordered. For more
    #     information, see [Review the Details of Information Flow][1].
    #
    #   * In the BookTrip bot exercise, the bot uses the `currentReservation`
    #     session attribute to maintains the slot data during the in-progress
    #     conversation to book a hotel or book a car. For more information,
    #     see [Details of Information Flow][2].
    #
    #   Amazon Lex passes these session attributes to the Lambda functions
    #   configured for the intent In the your Lambda function, you can use the
    #   session attributes for initialization and customization (prompts).
    #   Some examples are:
    #
    #   * Initialization - In a pizza ordering bot, if you pass user location
    #     (for example, `"Location : 111 Maple Street"`), then your Lambda
    #     function might use this information to determine the closest
    #     pizzeria to place the order (and perhaps set the storeAddress slot
    #     value as well).
    #
    #     Personalized prompts - For example, you can configure prompts to
    #     refer to the user by name (for example, "Hey \[firstName\], what
    #     toppings would you like?"). You can pass the user's name as a
    #     session attribute ("firstName": "Joe") so that Amazon Lex can
    #     substitute the placeholder to provide a personalized prompt to the
    #     user ("Hey Joe, what toppings would you like?").
    #
    #   <note markdown="1"> Amazon Lex does not persist session attributes.
    #
    #    If you configured a code hook for the intent, Amazon Lex passes the
    #   incoming session attributes to the Lambda function. The Lambda
    #   function must return these session attributes if you want Amazon Lex
    #   to return them to the client.
    #
    #    If there is no code hook configured for the intent Amazon Lex simply
    #   returns the session attributes to the client application.
    #
    #    </note>
    #
    #   **SDK automatically handles json encoding and base64 encoding for you
    #   when the required value (Hash, Array, etc.) is provided according to
    #   the description.**
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html
    #   [2]: http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html
    #
    # @option params [required, String] :content_type
    #   You pass this values as the `Content-Type` HTTP header.
    #
    #   Indicates the audio format or text. The header value must start with
    #   one of the following prefixes:
    #
    #   * PCM format
    #
    #     * audio/l16; rate=16000; channels=1
    #
    #     * audio/x-l16; sample-rate=16000; channel-count=1
    #
    #   * Opus format
    #
    #     * audio/x-cbr-opus-with-preamble; preamble-size=0; bit-rate=1;
    #       frame-size-milliseconds=1.1
    #
    #     ^
    #
    #   * Text format
    #
    #     * text/plain; charset=utf-8
    #
    #     ^
    #
    # @option params [String] :accept
    #   You pass this value as the `Accept` HTTP header.
    #
    #   The message Amazon Lex returns in the response can be either text or
    #   speech based on the `Accept` HTTP header value in the request.
    #
    #   * If the value is `text/plain; charset=utf-8`, Amazon Lex returns text
    #     in the response.
    #
    #   * If the value begins with `audio/`, Amazon Lex returns speech in the
    #     response. Amazon Lex uses Amazon Polly to generate the speech (using
    #     the configuration you specified in the `Accept` header). For
    #     example, if you specify `audio/mpeg` as the value, Amazon Lex
    #     returns speech in the MPEG format.
    #
    #     The following are the accepted values:
    #
    #     * audio/mpeg
    #
    #     * audio/ogg
    #
    #     * audio/pcm
    #
    #     * text/plain; charset=utf-8
    #
    #     * audio/* (defaults to mpeg)
    #
    # @option params [required, String, IO] :input_stream
    #   User input in PCM or Opus audio format or text format as described in
    #   the `Content-Type` HTTP header.
    #
    # @return [Types::PostContentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostContentResponse#content_type #content_type} => String
    #   * {Types::PostContentResponse#intent_name #intent_name} => String
    #   * {Types::PostContentResponse#slots #slots} => String
    #   * {Types::PostContentResponse#session_attributes #session_attributes} => String
    #   * {Types::PostContentResponse#message #message} => String
    #   * {Types::PostContentResponse#dialog_state #dialog_state} => String
    #   * {Types::PostContentResponse#slot_to_elicit #slot_to_elicit} => String
    #   * {Types::PostContentResponse#input_transcript #input_transcript} => String
    #   * {Types::PostContentResponse#audio_stream #audio_stream} => IO
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_content({
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: "String",
    #     content_type: "HttpContentType", # required
    #     accept: "Accept",
    #     input_stream: "data", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.content_type #=> String
    #   resp.intent_name #=> String
    #   resp.slots #=> String
    #   resp.session_attributes #=> String
    #   resp.message #=> String
    #   resp.dialog_state #=> String, one of "ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"
    #   resp.slot_to_elicit #=> String
    #   resp.input_transcript #=> String
    #   resp.audio_stream #=> IO
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostContent AWS API Documentation
    #
    # @overload post_content(params = {})
    # @param [Hash] params ({})
    def post_content(params = {}, options = {}, &block)
      req = build_request(:post_content, params)
      req.send_request(options, &block)
    end

    # Sends user input (text-only) to Amazon Lex. Client applications can
    # use this API to send requests to Amazon Lex at runtime. Amazon Lex
    # then interprets the user input using the machine learning model it
    # built for the bot.
    #
    # In response, Amazon Lex returns the next `message` to convey to the
    # user an optional `responseCard` to display. Consider the following
    # example messages:
    #
    # * For a user input "I would like a pizza", Amazon Lex might return a
    #   response with a message eliciting slot data (for example,
    #   PizzaSize): "What size pizza would you like?"
    #
    # * After the user provides all of the pizza order information, Amazon
    #   Lex might return a response with a message to obtain user
    #   confirmation "Proceed with the pizza order?".
    #
    # * After the user replies to a confirmation prompt with a "yes",
    #   Amazon Lex might return a conclusion statement: "Thank you, your
    #   cheese pizza has been ordered.".
    #
    # Not all Amazon Lex messages require a user response. For example, a
    # conclusion statement does not require a response. Some messages
    # require only a "yes" or "no" user response. In addition to the
    # `message`, Amazon Lex provides additional context about the message in
    # the response that you might use to enhance client behavior, for
    # example, to display the appropriate client user interface. These are
    # the `slotToElicit`, `dialogState`, `intentName`, and `slots` fields in
    # the response. Consider the following examples:
    #
    # * If the message is to elicit slot data, Amazon Lex returns the
    #   following context information:
    #
    #   * `dialogState` set to ElicitSlot
    #
    #   * `intentName` set to the intent name in the current context
    #
    #   * `slotToElicit` set to the slot name for which the `message` is
    #     eliciting information
    #
    #   * `slots` set to a map of slots, configured for the intent, with
    #     currently known values
    #
    # * If the message is a confirmation prompt, the `dialogState` is set to
    #   ConfirmIntent and `SlotToElicit` is set to null.
    #
    # * If the message is a clarification prompt (configured for the intent)
    #   that indicates that user intent is not understood, the `dialogState`
    #   is set to ElicitIntent and `slotToElicit` is set to null.
    #
    # In addition, Amazon Lex also returns your application-specific
    # `sessionAttributes`. For more information, see [Managing Conversation
    # Context][1].
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/lex/latest/dg/context-mgmt.html
    #
    # @option params [required, String] :bot_name
    #   The name of the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias
    #   The alias of the Amazon Lex bot.
    #
    # @option params [required, String] :user_id
    #   The ID of the client application user. The application developer
    #   decides the user IDs. At runtime, each request must include the user
    #   ID. Typically, each of your application users should have a unique ID.
    #   Note the following considerations:
    #
    #   * If you want a user to start a conversation on one device and
    #     continue the conversation on another device, you might choose a
    #     user-specific identifier, such as a login or Amazon Cognito user ID
    #     (assuming your application is using Amazon Cognito).
    #
    #   * If you want the same user to be able to have two independent
    #     conversations on two different devices, you might choose a
    #     device-specific identifier, such as device ID, or some globally
    #     unique identifier.
    #
    # @option params [Hash<String,String>] :session_attributes
    #   By using session attributes, a client application can pass contextual
    #   information in the request to Amazon Lex For example,
    #
    #   * In Getting Started Exercise 1, the example bot uses the `price`
    #     session attribute to maintain the price of the flowers ordered (for
    #     example, "Price":25). The code hook (the Lambda function) sets
    #     this attribute based on the type of flowers ordered. For more
    #     information, see [Review the Details of Information Flow][1].
    #
    #   * In the BookTrip bot exercise, the bot uses the `currentReservation`
    #     session attribute to maintain slot data during the in-progress
    #     conversation to book a hotel or book a car. For more information,
    #     see [Details of Information Flow][2].
    #
    #   * You might use the session attributes (key, value pairs) to track the
    #     requestID of user requests.
    #
    #   Amazon Lex simply passes these session attributes to the Lambda
    #   functions configured for the intent.
    #
    #   In your Lambda function, you can also use the session attributes for
    #   initialization and customization (prompts and response cards). Some
    #   examples are:
    #
    #   * Initialization - In a pizza ordering bot, if you can pass the user
    #     location as a session attribute (for example, `"Location" : "111
    #     Maple street"`), then your Lambda function might use this
    #     information to determine the closest pizzeria to place the order
    #     (perhaps to set the storeAddress slot value).
    #
    #   * Personalize prompts - For example, you can configure prompts to
    #     refer to the user name. (For example, "Hey \[FirstName\], what
    #     toppings would you like?"). You can pass the user name as a session
    #     attribute (`"FirstName" : "Joe"`) so that Amazon Lex can substitute
    #     the placeholder to provide a personalize prompt to the user ("Hey
    #     Joe, what toppings would you like?").
    #
    #   <note markdown="1"> Amazon Lex does not persist session attributes.
    #
    #    If you configure a code hook for the intent, Amazon Lex passes the
    #   incoming session attributes to the Lambda function. If you want Amazon
    #   Lex to return these session attributes back to the client, the Lambda
    #   function must return them.
    #
    #    If there is no code hook configured for the intent, Amazon Lex simply
    #   returns the session attributes back to the client application.
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/gs-bp-details-after-lambda.html
    #   [2]: http://docs.aws.amazon.com/lex/latest/dg/book-trip-detail-flow.html
    #
    # @option params [required, String] :input_text
    #   The text that the user entered (Amazon Lex interprets this text).
    #
    # @return [Types::PostTextResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PostTextResponse#intent_name #intent_name} => String
    #   * {Types::PostTextResponse#slots #slots} => Hash&lt;String,String&gt;
    #   * {Types::PostTextResponse#session_attributes #session_attributes} => Hash&lt;String,String&gt;
    #   * {Types::PostTextResponse#message #message} => String
    #   * {Types::PostTextResponse#dialog_state #dialog_state} => String
    #   * {Types::PostTextResponse#slot_to_elicit #slot_to_elicit} => String
    #   * {Types::PostTextResponse#response_card #response_card} => Types::ResponseCard
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_text({
    #     bot_name: "BotName", # required
    #     bot_alias: "BotAlias", # required
    #     user_id: "UserId", # required
    #     session_attributes: {
    #       "String" => "String",
    #     },
    #     input_text: "Text", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.intent_name #=> String
    #   resp.slots #=> Hash
    #   resp.slots["String"] #=> String
    #   resp.session_attributes #=> Hash
    #   resp.session_attributes["String"] #=> String
    #   resp.message #=> String
    #   resp.dialog_state #=> String, one of "ElicitIntent", "ConfirmIntent", "ElicitSlot", "Fulfilled", "ReadyForFulfillment", "Failed"
    #   resp.slot_to_elicit #=> String
    #   resp.response_card.version #=> String
    #   resp.response_card.content_type #=> String, one of "application/vnd.amazonaws.card.generic"
    #   resp.response_card.generic_attachments #=> Array
    #   resp.response_card.generic_attachments[0].title #=> String
    #   resp.response_card.generic_attachments[0].sub_title #=> String
    #   resp.response_card.generic_attachments[0].attachment_link_url #=> String
    #   resp.response_card.generic_attachments[0].image_url #=> String
    #   resp.response_card.generic_attachments[0].buttons #=> Array
    #   resp.response_card.generic_attachments[0].buttons[0].text #=> String
    #   resp.response_card.generic_attachments[0].buttons[0].value #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/runtime.lex-2016-11-28/PostText AWS API Documentation
    #
    # @overload post_text(params = {})
    # @param [Hash] params ({})
    def post_text(params = {}, options = {})
      req = build_request(:post_text, params)
      req.send_request(options)
    end

    # @!endgroup

    # @param params ({})
    # @api private
    def build_request(operation_name, params = {})
      handlers = @handlers.for(operation_name)
      context = Seahorse::Client::RequestContext.new(
        operation_name: operation_name,
        operation: config.api.operation(operation_name),
        client: self,
        params: params,
        config: config)
      context[:gem_name] = 'aws-sdk-lex'
      context[:gem_version] = '1.1.0'
      Seahorse::Client::Request.new(handlers, context)
    end

    # @api private
    # @deprecated
    def waiter_names
      []
    end

    class << self

      # @api private
      attr_reader :identifier

      # @api private
      def errors_module
        Errors
      end

    end
  end
end
