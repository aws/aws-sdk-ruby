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
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexruntimeservice)

module Aws::LexRuntimeService
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :lexruntimeservice

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

    # Sends user input text to Amazon Lex at runtime. Amazon Lex uses the
    # machine learning model that the service built for the application to
    # interpret user input.
    #
    # In response, Amazon Lex returns the next message to convey to the user
    # (based on the context of the user interaction) and whether to expect a
    # user response to the message (`dialogState`). For example, consider
    # the following response messages:
    #
    # * "What pizza toppings would you like?" – In this case, the
    #   `dialogState` would be `ElicitSlot` (that is, a user response is
    #   expected).
    #
    # * "Your order has been placed." – In this case, Amazon Lex returns
    #   one of the following `dialogState` values depending on how the
    #   intent fulfillment is configured (see `fulfillmentActivity` in
    #   `CreateIntent`):
    #
    #   * `FulFilled` – The intent fulfillment is configured through a
    #     Lambda function.
    #
    #   * `ReadyForFulfilment` – The intent's `fulfillmentActivity` is to
    #     simply return the intent data back to the client application.
    #
    # @option params [required, String] :bot_name
    #   Name of the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias
    #   Alias of the Amazon Lex bot.
    #
    # @option params [required, String] :user_id
    #   User ID of your client application. Typically, each of your
    #   application users should have a unique ID. Note the following
    #   considerations:
    #
    #   * If you want a user to start a conversation on one mobile device and
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
    #   A session represents the dialog between a user and Amazon Lex. At
    #   runtime, a client application can pass contextual information (session
    #   attributes) in the request. For example, `"FirstName" : "Joe"`. Amazon
    #   Lex passes these session attributes to the AWS Lambda functions
    #   configured for the intent (see `dialogCodeHook` and
    #   `fulfillmentActivity.codeHook` in `CreateIntent`).
    #
    #   In your Lambda function, you can use the session attributes for
    #   customization. Some examples are:
    #
    #   * In a pizza ordering application, if you can pass user location as a
    #     session attribute (for example, `"Location" : "111 Maple street"`),
    #     your Lambda function might use this information to determine the
    #     closest pizzeria to place the order.
    #
    #   * Use session attributes to personalize prompts. For example, you pass
    #     in user name as a session attribute (`"FirstName" : "Joe"`), you
    #     might configure subsequent prompts to refer to this attribute, as
    #     `$session.FirstName"`. At runtime, Amazon Lex substitutes a real
    #     value when it generates a prompt, such as "Hello Joe, what would
    #     you like to order?"
    #
    #   <note markdown="1"> Amazon Lex does not persist session attributes.
    #
    #    If the intent is configured without a Lambda function to process the
    #   intent (that is, the client application to process the intent), Amazon
    #   Lex simply returns the session attributes back to the client
    #   application.
    #
    #    If the intent is configured with a Lambda function to process the
    #   intent, Amazon Lex passes the incoming session attributes to the
    #   Lambda function. The Lambda function must return these session
    #   attributes if you want Amazon Lex to return them back to the client.
    #
    #    </note>
    #
    # @option params [required, String] :input_text
    #   Text user entered (Amazon Lex interprets this text).
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
      context[:gem_name] = 'aws-sdk-lexruntimeservice'
      context[:gem_version] = '1.0.0.rc1'
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
