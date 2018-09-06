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
require 'aws-sdk-core/plugins/client_metrics_plugin.rb'
require 'aws-sdk-core/plugins/client_metrics_send_plugin.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/rest_json.rb'

Aws::Plugins::GlobalConfiguration.add_identifier(:lexmodelbuildingservice)

module Aws::LexModelBuildingService
  class Client < Seahorse::Client::Base

    include Aws::ClientStubs

    @identifier = :lexmodelbuildingservice

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
    add_plugin(Aws::Plugins::ClientMetricsPlugin)
    add_plugin(Aws::Plugins::ClientMetricsSendPlugin)
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
    # @option options [] :client_side_monitoring (false)
    #   When `true`, client-side metrics will be collected for all API requests from
    #   this client.
    #
    # @option options [] :client_side_monitoring_client_id ("")
    #   Allows you to provide an identifier for this client which will be attached to
    #   all generated client side metrics. Defaults to an empty string.
    #
    # @option options [] :client_side_monitoring_port (31000)
    #   Required for publishing client metrics. The port that the client side monitoring
    #   agent is running on, where client metrics will be published via UDP.
    #
    # @option options [] :client_side_monitoring_publisher (Aws::ClientSideMonitoring::Publisher)
    #   Allows you to provide a custom client-side monitoring publisher class. By default,
    #   will use the Client Side Monitoring Agent Publisher.
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
    # @option options [Float] :retry_base_delay (0.3)
    #   The base delay in seconds used by the default backoff function.
    #
    # @option options [Symbol] :retry_jitter (:none)
    #   A delay randomiser function used by the default backoff function. Some predefined functions can be referenced by name - :none, :equal, :full, otherwise a Proc that takes and returns a number.
    #
    #   @see https://www.awsarchitectureblog.com/2015/03/backoff.html
    #
    # @option options [Integer] :retry_limit (3)
    #   The maximum number of times to retry failed requests.  Only
    #   ~ 500 level server errors and certain ~ 400 level client errors
    #   are retried.  Generally, these are throttling errors, data
    #   checksum errors, networking errors, timeout errors and auth
    #   errors from expired credentials.
    #
    # @option options [Integer] :retry_max_delay (0)
    #   The maximum number of seconds to delay between retries (0 for no limit) used by the default backoff function.
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

    # Creates a new version of the bot based on the `$LATEST` version. If
    # the `$LATEST` version of this resource hasn't changed since you
    # created the last version, Amazon Lex doesn't create a new version. It
    # returns the last created version.
    #
    # <note markdown="1"> You can update only the `$LATEST` version of the bot. You can't
    # update the numbered versions that you create with the
    # `CreateBotVersion` operation.
    #
    #  </note>
    #
    # When you create the first version of a bot, Amazon Lex sets the
    # version to 1. Subsequent versions increment by 1. For more
    # information, see versioning-intro.
    #
    # This operation requires permission for the `lex:CreateBotVersion`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the bot that you want to create a new version of. The name
    #   is case sensitive.
    #
    # @option params [String] :checksum
    #   Identifies a specific revision of the `$LATEST` version of the bot. If
    #   you specify a checksum and the `$LATEST` version of the bot has a
    #   different checksum, a `PreconditionFailedException` exception is
    #   returned and Amazon Lex doesn't publish a new version. If you don't
    #   specify a checksum, Amazon Lex publishes the `$LATEST` version.
    #
    # @return [Types::CreateBotVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateBotVersionResponse#name #name} => String
    #   * {Types::CreateBotVersionResponse#description #description} => String
    #   * {Types::CreateBotVersionResponse#intents #intents} => Array&lt;Types::Intent&gt;
    #   * {Types::CreateBotVersionResponse#clarification_prompt #clarification_prompt} => Types::Prompt
    #   * {Types::CreateBotVersionResponse#abort_statement #abort_statement} => Types::Statement
    #   * {Types::CreateBotVersionResponse#status #status} => String
    #   * {Types::CreateBotVersionResponse#failure_reason #failure_reason} => String
    #   * {Types::CreateBotVersionResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::CreateBotVersionResponse#created_date #created_date} => Time
    #   * {Types::CreateBotVersionResponse#idle_session_ttl_in_seconds #idle_session_ttl_in_seconds} => Integer
    #   * {Types::CreateBotVersionResponse#voice_id #voice_id} => String
    #   * {Types::CreateBotVersionResponse#checksum #checksum} => String
    #   * {Types::CreateBotVersionResponse#version #version} => String
    #   * {Types::CreateBotVersionResponse#locale #locale} => String
    #   * {Types::CreateBotVersionResponse#child_directed #child_directed} => Boolean
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_bot_version({
    #     name: "BotName", # required
    #     checksum: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.intents #=> Array
    #   resp.intents[0].intent_name #=> String
    #   resp.intents[0].intent_version #=> String
    #   resp.clarification_prompt.messages #=> Array
    #   resp.clarification_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.clarification_prompt.messages[0].content #=> String
    #   resp.clarification_prompt.messages[0].group_number #=> Integer
    #   resp.clarification_prompt.max_attempts #=> Integer
    #   resp.clarification_prompt.response_card #=> String
    #   resp.abort_statement.messages #=> Array
    #   resp.abort_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.abort_statement.messages[0].content #=> String
    #   resp.abort_statement.messages[0].group_number #=> Integer
    #   resp.abort_statement.response_card #=> String
    #   resp.status #=> String, one of "BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"
    #   resp.failure_reason #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.idle_session_ttl_in_seconds #=> Integer
    #   resp.voice_id #=> String
    #   resp.checksum #=> String
    #   resp.version #=> String
    #   resp.locale #=> String, one of "en-US", "en-GB", "de-DE"
    #   resp.child_directed #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateBotVersion AWS API Documentation
    #
    # @overload create_bot_version(params = {})
    # @param [Hash] params ({})
    def create_bot_version(params = {}, options = {})
      req = build_request(:create_bot_version, params)
      req.send_request(options)
    end

    # Creates a new version of an intent based on the `$LATEST` version of
    # the intent. If the `$LATEST` version of this intent hasn't changed
    # since you last updated it, Amazon Lex doesn't create a new version.
    # It returns the last version you created.
    #
    # <note markdown="1"> You can update only the `$LATEST` version of the intent. You can't
    # update the numbered versions that you create with the
    # `CreateIntentVersion` operation.
    #
    #  </note>
    #
    # When you create a version of an intent, Amazon Lex sets the version to
    # 1. Subsequent versions increment by 1. For more information, see
    # versioning-intro.
    #
    # This operation requires permissions to perform the
    # `lex:CreateIntentVersion` action.
    #
    # @option params [required, String] :name
    #   The name of the intent that you want to create a new version of. The
    #   name is case sensitive.
    #
    # @option params [String] :checksum
    #   Checksum of the `$LATEST` version of the intent that should be used to
    #   create the new version. If you specify a checksum and the `$LATEST`
    #   version of the intent has a different checksum, Amazon Lex returns a
    #   `PreconditionFailedException` exception and doesn't publish a new
    #   version. If you don't specify a checksum, Amazon Lex publishes the
    #   `$LATEST` version.
    #
    # @return [Types::CreateIntentVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateIntentVersionResponse#name #name} => String
    #   * {Types::CreateIntentVersionResponse#description #description} => String
    #   * {Types::CreateIntentVersionResponse#slots #slots} => Array&lt;Types::Slot&gt;
    #   * {Types::CreateIntentVersionResponse#sample_utterances #sample_utterances} => Array&lt;String&gt;
    #   * {Types::CreateIntentVersionResponse#confirmation_prompt #confirmation_prompt} => Types::Prompt
    #   * {Types::CreateIntentVersionResponse#rejection_statement #rejection_statement} => Types::Statement
    #   * {Types::CreateIntentVersionResponse#follow_up_prompt #follow_up_prompt} => Types::FollowUpPrompt
    #   * {Types::CreateIntentVersionResponse#conclusion_statement #conclusion_statement} => Types::Statement
    #   * {Types::CreateIntentVersionResponse#dialog_code_hook #dialog_code_hook} => Types::CodeHook
    #   * {Types::CreateIntentVersionResponse#fulfillment_activity #fulfillment_activity} => Types::FulfillmentActivity
    #   * {Types::CreateIntentVersionResponse#parent_intent_signature #parent_intent_signature} => String
    #   * {Types::CreateIntentVersionResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::CreateIntentVersionResponse#created_date #created_date} => Time
    #   * {Types::CreateIntentVersionResponse#version #version} => String
    #   * {Types::CreateIntentVersionResponse#checksum #checksum} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_intent_version({
    #     name: "IntentName", # required
    #     checksum: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.slots #=> Array
    #   resp.slots[0].name #=> String
    #   resp.slots[0].description #=> String
    #   resp.slots[0].slot_constraint #=> String, one of "Required", "Optional"
    #   resp.slots[0].slot_type #=> String
    #   resp.slots[0].slot_type_version #=> String
    #   resp.slots[0].value_elicitation_prompt.messages #=> Array
    #   resp.slots[0].value_elicitation_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.slots[0].value_elicitation_prompt.messages[0].content #=> String
    #   resp.slots[0].value_elicitation_prompt.messages[0].group_number #=> Integer
    #   resp.slots[0].value_elicitation_prompt.max_attempts #=> Integer
    #   resp.slots[0].value_elicitation_prompt.response_card #=> String
    #   resp.slots[0].priority #=> Integer
    #   resp.slots[0].sample_utterances #=> Array
    #   resp.slots[0].sample_utterances[0] #=> String
    #   resp.slots[0].response_card #=> String
    #   resp.sample_utterances #=> Array
    #   resp.sample_utterances[0] #=> String
    #   resp.confirmation_prompt.messages #=> Array
    #   resp.confirmation_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.confirmation_prompt.messages[0].content #=> String
    #   resp.confirmation_prompt.messages[0].group_number #=> Integer
    #   resp.confirmation_prompt.max_attempts #=> Integer
    #   resp.confirmation_prompt.response_card #=> String
    #   resp.rejection_statement.messages #=> Array
    #   resp.rejection_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.rejection_statement.messages[0].content #=> String
    #   resp.rejection_statement.messages[0].group_number #=> Integer
    #   resp.rejection_statement.response_card #=> String
    #   resp.follow_up_prompt.prompt.messages #=> Array
    #   resp.follow_up_prompt.prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.follow_up_prompt.prompt.messages[0].content #=> String
    #   resp.follow_up_prompt.prompt.messages[0].group_number #=> Integer
    #   resp.follow_up_prompt.prompt.max_attempts #=> Integer
    #   resp.follow_up_prompt.prompt.response_card #=> String
    #   resp.follow_up_prompt.rejection_statement.messages #=> Array
    #   resp.follow_up_prompt.rejection_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.follow_up_prompt.rejection_statement.messages[0].content #=> String
    #   resp.follow_up_prompt.rejection_statement.messages[0].group_number #=> Integer
    #   resp.follow_up_prompt.rejection_statement.response_card #=> String
    #   resp.conclusion_statement.messages #=> Array
    #   resp.conclusion_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.conclusion_statement.messages[0].content #=> String
    #   resp.conclusion_statement.messages[0].group_number #=> Integer
    #   resp.conclusion_statement.response_card #=> String
    #   resp.dialog_code_hook.uri #=> String
    #   resp.dialog_code_hook.message_version #=> String
    #   resp.fulfillment_activity.type #=> String, one of "ReturnIntent", "CodeHook"
    #   resp.fulfillment_activity.code_hook.uri #=> String
    #   resp.fulfillment_activity.code_hook.message_version #=> String
    #   resp.parent_intent_signature #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.checksum #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateIntentVersion AWS API Documentation
    #
    # @overload create_intent_version(params = {})
    # @param [Hash] params ({})
    def create_intent_version(params = {}, options = {})
      req = build_request(:create_intent_version, params)
      req.send_request(options)
    end

    # Creates a new version of a slot type based on the `$LATEST` version of
    # the specified slot type. If the `$LATEST` version of this resource has
    # not changed since the last version that you created, Amazon Lex
    # doesn't create a new version. It returns the last version that you
    # created.
    #
    # <note markdown="1"> You can update only the `$LATEST` version of a slot type. You can't
    # update the numbered versions that you create with the
    # `CreateSlotTypeVersion` operation.
    #
    #  </note>
    #
    # When you create a version of a slot type, Amazon Lex sets the version
    # to 1. Subsequent versions increment by 1. For more information, see
    # versioning-intro.
    #
    # This operation requires permissions for the
    # `lex:CreateSlotTypeVersion` action.
    #
    # @option params [required, String] :name
    #   The name of the slot type that you want to create a new version for.
    #   The name is case sensitive.
    #
    # @option params [String] :checksum
    #   Checksum for the `$LATEST` version of the slot type that you want to
    #   publish. If you specify a checksum and the `$LATEST` version of the
    #   slot type has a different checksum, Amazon Lex returns a
    #   `PreconditionFailedException` exception and doesn't publish the new
    #   version. If you don't specify a checksum, Amazon Lex publishes the
    #   `$LATEST` version.
    #
    # @return [Types::CreateSlotTypeVersionResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::CreateSlotTypeVersionResponse#name #name} => String
    #   * {Types::CreateSlotTypeVersionResponse#description #description} => String
    #   * {Types::CreateSlotTypeVersionResponse#enumeration_values #enumeration_values} => Array&lt;Types::EnumerationValue&gt;
    #   * {Types::CreateSlotTypeVersionResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::CreateSlotTypeVersionResponse#created_date #created_date} => Time
    #   * {Types::CreateSlotTypeVersionResponse#version #version} => String
    #   * {Types::CreateSlotTypeVersionResponse#checksum #checksum} => String
    #   * {Types::CreateSlotTypeVersionResponse#value_selection_strategy #value_selection_strategy} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_slot_type_version({
    #     name: "SlotTypeName", # required
    #     checksum: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.enumeration_values #=> Array
    #   resp.enumeration_values[0].value #=> String
    #   resp.enumeration_values[0].synonyms #=> Array
    #   resp.enumeration_values[0].synonyms[0] #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.checksum #=> String
    #   resp.value_selection_strategy #=> String, one of "ORIGINAL_VALUE", "TOP_RESOLUTION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateSlotTypeVersion AWS API Documentation
    #
    # @overload create_slot_type_version(params = {})
    # @param [Hash] params ({})
    def create_slot_type_version(params = {}, options = {})
      req = build_request(:create_slot_type_version, params)
      req.send_request(options)
    end

    # Deletes all versions of the bot, including the `$LATEST` version. To
    # delete a specific version of the bot, use the DeleteBotVersion
    # operation.
    #
    # If a bot has an alias, you can't delete it. Instead, the `DeleteBot`
    # operation returns a `ResourceInUseException` exception that includes a
    # reference to the alias that refers to the bot. To remove the reference
    # to the bot, delete the alias. If you get the same exception again,
    # delete the referring alias until the `DeleteBot` operation is
    # successful.
    #
    # This operation requires permissions for the `lex:DeleteBot` action.
    #
    # @option params [required, String] :name
    #   The name of the bot. The name is case sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot({
    #     name: "BotName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBot AWS API Documentation
    #
    # @overload delete_bot(params = {})
    # @param [Hash] params ({})
    def delete_bot(params = {}, options = {})
      req = build_request(:delete_bot, params)
      req.send_request(options)
    end

    # Deletes an alias for the specified bot.
    #
    # You can't delete an alias that is used in the association between a
    # bot and a messaging channel. If an alias is used in a channel
    # association, the `DeleteBot` operation returns a
    # `ResourceInUseException` exception that includes a reference to the
    # channel association that refers to the bot. You can remove the
    # reference to the alias by deleting the channel association. If you get
    # the same exception again, delete the referring association until the
    # `DeleteBotAlias` operation is successful.
    #
    # @option params [required, String] :name
    #   The name of the alias to delete. The name is case sensitive.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot that the alias points to.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_alias({
    #     name: "AliasName", # required
    #     bot_name: "BotName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotAlias AWS API Documentation
    #
    # @overload delete_bot_alias(params = {})
    # @param [Hash] params ({})
    def delete_bot_alias(params = {}, options = {})
      req = build_request(:delete_bot_alias, params)
      req.send_request(options)
    end

    # Deletes the association between an Amazon Lex bot and a messaging
    # platform.
    #
    # This operation requires permission for the
    # `lex:DeleteBotChannelAssociation` action.
    #
    # @option params [required, String] :name
    #   The name of the association. The name is case sensitive.
    #
    # @option params [required, String] :bot_name
    #   The name of the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias
    #   An alias that points to the specific version of the Amazon Lex bot to
    #   which this association is being made.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_channel_association({
    #     name: "BotChannelName", # required
    #     bot_name: "BotName", # required
    #     bot_alias: "AliasName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotChannelAssociation AWS API Documentation
    #
    # @overload delete_bot_channel_association(params = {})
    # @param [Hash] params ({})
    def delete_bot_channel_association(params = {}, options = {})
      req = build_request(:delete_bot_channel_association, params)
      req.send_request(options)
    end

    # Deletes a specific version of a bot. To delete all versions of a bot,
    # use the DeleteBot operation.
    #
    # This operation requires permissions for the `lex:DeleteBotVersion`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the bot.
    #
    # @option params [required, String] :version
    #   The version of the bot to delete. You cannot delete the `$LATEST`
    #   version of the bot. To delete the `$LATEST` version, use the DeleteBot
    #   operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_bot_version({
    #     name: "BotName", # required
    #     version: "NumericalVersion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotVersion AWS API Documentation
    #
    # @overload delete_bot_version(params = {})
    # @param [Hash] params ({})
    def delete_bot_version(params = {}, options = {})
      req = build_request(:delete_bot_version, params)
      req.send_request(options)
    end

    # Deletes all versions of the intent, including the `$LATEST` version.
    # To delete a specific version of the intent, use the
    # DeleteIntentVersion operation.
    #
    # You can delete a version of an intent only if it is not referenced. To
    # delete an intent that is referred to in one or more bots (see
    # how-it-works), you must remove those references first.
    #
    # <note markdown="1"> If you get the `ResourceInUseException` exception, it provides an
    # example reference that shows where the intent is referenced. To remove
    # the reference to the intent, either update the bot or delete it. If
    # you get the same exception when you attempt to delete the intent
    # again, repeat until the intent has no references and the call to
    # `DeleteIntent` is successful.
    #
    #  </note>
    #
    # This operation requires permission for the `lex:DeleteIntent` action.
    #
    # @option params [required, String] :name
    #   The name of the intent. The name is case sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_intent({
    #     name: "IntentName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteIntent AWS API Documentation
    #
    # @overload delete_intent(params = {})
    # @param [Hash] params ({})
    def delete_intent(params = {}, options = {})
      req = build_request(:delete_intent, params)
      req.send_request(options)
    end

    # Deletes a specific version of an intent. To delete all versions of a
    # intent, use the DeleteIntent operation.
    #
    # This operation requires permissions for the `lex:DeleteIntentVersion`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the intent.
    #
    # @option params [required, String] :version
    #   The version of the intent to delete. You cannot delete the `$LATEST`
    #   version of the intent. To delete the `$LATEST` version, use the
    #   DeleteIntent operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_intent_version({
    #     name: "IntentName", # required
    #     version: "NumericalVersion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteIntentVersion AWS API Documentation
    #
    # @overload delete_intent_version(params = {})
    # @param [Hash] params ({})
    def delete_intent_version(params = {}, options = {})
      req = build_request(:delete_intent_version, params)
      req.send_request(options)
    end

    # Deletes all versions of the slot type, including the `$LATEST`
    # version. To delete a specific version of the slot type, use the
    # DeleteSlotTypeVersion operation.
    #
    # You can delete a version of a slot type only if it is not referenced.
    # To delete a slot type that is referred to in one or more intents, you
    # must remove those references first.
    #
    # <note markdown="1"> If you get the `ResourceInUseException` exception, the exception
    # provides an example reference that shows the intent where the slot
    # type is referenced. To remove the reference to the slot type, either
    # update the intent or delete it. If you get the same exception when you
    # attempt to delete the slot type again, repeat until the slot type has
    # no references and the `DeleteSlotType` call is successful.
    #
    #  </note>
    #
    # This operation requires permission for the `lex:DeleteSlotType`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the slot type. The name is case sensitive.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot_type({
    #     name: "SlotTypeName", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteSlotType AWS API Documentation
    #
    # @overload delete_slot_type(params = {})
    # @param [Hash] params ({})
    def delete_slot_type(params = {}, options = {})
      req = build_request(:delete_slot_type, params)
      req.send_request(options)
    end

    # Deletes a specific version of a slot type. To delete all versions of a
    # slot type, use the DeleteSlotType operation.
    #
    # This operation requires permissions for the
    # `lex:DeleteSlotTypeVersion` action.
    #
    # @option params [required, String] :name
    #   The name of the slot type.
    #
    # @option params [required, String] :version
    #   The version of the slot type to delete. You cannot delete the
    #   `$LATEST` version of the slot type. To delete the `$LATEST` version,
    #   use the DeleteSlotType operation.
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_slot_type_version({
    #     name: "SlotTypeName", # required
    #     version: "NumericalVersion", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteSlotTypeVersion AWS API Documentation
    #
    # @overload delete_slot_type_version(params = {})
    # @param [Hash] params ({})
    def delete_slot_type_version(params = {}, options = {})
      req = build_request(:delete_slot_type_version, params)
      req.send_request(options)
    end

    # Deletes stored utterances.
    #
    # Amazon Lex stores the utterances that users send to your bot.
    # Utterances are stored for 15 days for use with the GetUtterancesView
    # operation, and then stored indefinitely for use in improving the
    # ability of your bot to respond to user input.
    #
    # Use the `DeleteStoredUtterances` operation to manually delete stored
    # utterances for a specific user.
    #
    # This operation requires permissions for the `lex:DeleteUtterances`
    # action.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot that stored the utterances.
    #
    # @option params [required, String] :user_id
    #   The unique identifier for the user that made the utterances. This is
    #   the user ID that was sent in the [PostContent][1] or [PostText][2]
    #   operation request that contained the utterance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html
    #   [2]: http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html
    #
    # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_utterances({
    #     bot_name: "BotName", # required
    #     user_id: "UserId", # required
    #   })
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteUtterances AWS API Documentation
    #
    # @overload delete_utterances(params = {})
    # @param [Hash] params ({})
    def delete_utterances(params = {}, options = {})
      req = build_request(:delete_utterances, params)
      req.send_request(options)
    end

    # Returns metadata information for a specific bot. You must provide the
    # bot name and the bot version or alias.
    #
    # This operation requires permissions for the `lex:GetBot` action.
    #
    # @option params [required, String] :name
    #   The name of the bot. The name is case sensitive.
    #
    # @option params [required, String] :version_or_alias
    #   The version or alias of the bot.
    #
    # @return [Types::GetBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotResponse#name #name} => String
    #   * {Types::GetBotResponse#description #description} => String
    #   * {Types::GetBotResponse#intents #intents} => Array&lt;Types::Intent&gt;
    #   * {Types::GetBotResponse#clarification_prompt #clarification_prompt} => Types::Prompt
    #   * {Types::GetBotResponse#abort_statement #abort_statement} => Types::Statement
    #   * {Types::GetBotResponse#status #status} => String
    #   * {Types::GetBotResponse#failure_reason #failure_reason} => String
    #   * {Types::GetBotResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::GetBotResponse#created_date #created_date} => Time
    #   * {Types::GetBotResponse#idle_session_ttl_in_seconds #idle_session_ttl_in_seconds} => Integer
    #   * {Types::GetBotResponse#voice_id #voice_id} => String
    #   * {Types::GetBotResponse#checksum #checksum} => String
    #   * {Types::GetBotResponse#version #version} => String
    #   * {Types::GetBotResponse#locale #locale} => String
    #   * {Types::GetBotResponse#child_directed #child_directed} => Boolean
    #
    #
    # @example Example: To get information about a bot
    #
    #   # This example shows how to get configuration information for a bot.
    #
    #   resp = client.get_bot({
    #     name: "DocOrderPizza", 
    #     version_or_alias: "$LATEST", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "$LATEST", 
    #     name: "DocOrderPizzaBot", 
    #     abort_statement: {
    #       messages: [
    #         {
    #           content: "I don't understand. Can you try again?", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "I'm sorry, I don't understand.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     checksum: "20172ee3-fa06-49b2-bbc5-667c090303e9", 
    #     child_directed: true, 
    #     clarification_prompt: {
    #       max_attempts: 1, 
    #       messages: [
    #         {
    #           content: "I'm sorry, I didn't hear that. Can you repeate what you just said?", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "Can you say that again?", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     created_date: Time.parse(1494360160.133), 
    #     description: "Orders a pizza from a local pizzeria.", 
    #     idle_session_ttl_in_seconds: 300, 
    #     intents: [
    #       {
    #         intent_name: "DocOrderPizza", 
    #         intent_version: "$LATEST", 
    #       }, 
    #     ], 
    #     last_updated_date: Time.parse(1494360160.133), 
    #     locale: "en-US", 
    #     status: "NOT_BUILT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot({
    #     name: "BotName", # required
    #     version_or_alias: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.intents #=> Array
    #   resp.intents[0].intent_name #=> String
    #   resp.intents[0].intent_version #=> String
    #   resp.clarification_prompt.messages #=> Array
    #   resp.clarification_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.clarification_prompt.messages[0].content #=> String
    #   resp.clarification_prompt.messages[0].group_number #=> Integer
    #   resp.clarification_prompt.max_attempts #=> Integer
    #   resp.clarification_prompt.response_card #=> String
    #   resp.abort_statement.messages #=> Array
    #   resp.abort_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.abort_statement.messages[0].content #=> String
    #   resp.abort_statement.messages[0].group_number #=> Integer
    #   resp.abort_statement.response_card #=> String
    #   resp.status #=> String, one of "BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"
    #   resp.failure_reason #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.idle_session_ttl_in_seconds #=> Integer
    #   resp.voice_id #=> String
    #   resp.checksum #=> String
    #   resp.version #=> String
    #   resp.locale #=> String, one of "en-US", "en-GB", "de-DE"
    #   resp.child_directed #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBot AWS API Documentation
    #
    # @overload get_bot(params = {})
    # @param [Hash] params ({})
    def get_bot(params = {}, options = {})
      req = build_request(:get_bot, params)
      req.send_request(options)
    end

    # Returns information about an Amazon Lex bot alias. For more
    # information about aliases, see versioning-aliases.
    #
    # This operation requires permissions for the `lex:GetBotAlias` action.
    #
    # @option params [required, String] :name
    #   The name of the bot alias. The name is case sensitive.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot.
    #
    # @return [Types::GetBotAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotAliasResponse#name #name} => String
    #   * {Types::GetBotAliasResponse#description #description} => String
    #   * {Types::GetBotAliasResponse#bot_version #bot_version} => String
    #   * {Types::GetBotAliasResponse#bot_name #bot_name} => String
    #   * {Types::GetBotAliasResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::GetBotAliasResponse#created_date #created_date} => Time
    #   * {Types::GetBotAliasResponse#checksum #checksum} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_alias({
    #     name: "AliasName", # required
    #     bot_name: "BotName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.bot_version #=> String
    #   resp.bot_name #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.checksum #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAlias AWS API Documentation
    #
    # @overload get_bot_alias(params = {})
    # @param [Hash] params ({})
    def get_bot_alias(params = {}, options = {})
      req = build_request(:get_bot_alias, params)
      req.send_request(options)
    end

    # Returns a list of aliases for a specified Amazon Lex bot.
    #
    # This operation requires permissions for the `lex:GetBotAliases`
    # action.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot.
    #
    # @option params [String] :next_token
    #   A pagination token for fetching the next page of aliases. If the
    #   response to this call is truncated, Amazon Lex returns a pagination
    #   token in the response. To fetch the next page of aliases, specify the
    #   pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of aliases to return in the response. The default
    #   is 50. .
    #
    # @option params [String] :name_contains
    #   Substring to match in bot alias names. An alias will be returned if
    #   any part of its name matches the substring. For example, "xyz"
    #   matches both "xyzabc" and "abcxyz."
    #
    # @return [Types::GetBotAliasesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotAliasesResponse#bot_aliases #bot_aliases} => Array&lt;Types::BotAliasMetadata&gt;
    #   * {Types::GetBotAliasesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_aliases({
    #     bot_name: "BotName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "AliasName",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_aliases #=> Array
    #   resp.bot_aliases[0].name #=> String
    #   resp.bot_aliases[0].description #=> String
    #   resp.bot_aliases[0].bot_version #=> String
    #   resp.bot_aliases[0].bot_name #=> String
    #   resp.bot_aliases[0].last_updated_date #=> Time
    #   resp.bot_aliases[0].created_date #=> Time
    #   resp.bot_aliases[0].checksum #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAliases AWS API Documentation
    #
    # @overload get_bot_aliases(params = {})
    # @param [Hash] params ({})
    def get_bot_aliases(params = {}, options = {})
      req = build_request(:get_bot_aliases, params)
      req.send_request(options)
    end

    # Returns information about the association between an Amazon Lex bot
    # and a messaging platform.
    #
    # This operation requires permissions for the
    # `lex:GetBotChannelAssociation` action.
    #
    # @option params [required, String] :name
    #   The name of the association between the bot and the channel. The name
    #   is case sensitive.
    #
    # @option params [required, String] :bot_name
    #   The name of the Amazon Lex bot.
    #
    # @option params [required, String] :bot_alias
    #   An alias pointing to the specific version of the Amazon Lex bot to
    #   which this association is being made.
    #
    # @return [Types::GetBotChannelAssociationResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotChannelAssociationResponse#name #name} => String
    #   * {Types::GetBotChannelAssociationResponse#description #description} => String
    #   * {Types::GetBotChannelAssociationResponse#bot_alias #bot_alias} => String
    #   * {Types::GetBotChannelAssociationResponse#bot_name #bot_name} => String
    #   * {Types::GetBotChannelAssociationResponse#created_date #created_date} => Time
    #   * {Types::GetBotChannelAssociationResponse#type #type} => String
    #   * {Types::GetBotChannelAssociationResponse#bot_configuration #bot_configuration} => Hash&lt;String,String&gt;
    #   * {Types::GetBotChannelAssociationResponse#status #status} => String
    #   * {Types::GetBotChannelAssociationResponse#failure_reason #failure_reason} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_channel_association({
    #     name: "BotChannelName", # required
    #     bot_name: "BotName", # required
    #     bot_alias: "AliasName", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.bot_alias #=> String
    #   resp.bot_name #=> String
    #   resp.created_date #=> Time
    #   resp.type #=> String, one of "Facebook", "Slack", "Twilio-Sms", "Kik"
    #   resp.bot_configuration #=> Hash
    #   resp.bot_configuration["String"] #=> String
    #   resp.status #=> String, one of "IN_PROGRESS", "CREATED", "FAILED"
    #   resp.failure_reason #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociation AWS API Documentation
    #
    # @overload get_bot_channel_association(params = {})
    # @param [Hash] params ({})
    def get_bot_channel_association(params = {}, options = {})
      req = build_request(:get_bot_channel_association, params)
      req.send_request(options)
    end

    # Returns a list of all of the channels associated with the specified
    # bot.
    #
    # The `GetBotChannelAssociations` operation requires permissions for the
    # `lex:GetBotChannelAssociations` action.
    #
    # @option params [required, String] :bot_name
    #   The name of the Amazon Lex bot in the association.
    #
    # @option params [required, String] :bot_alias
    #   An alias pointing to the specific version of the Amazon Lex bot to
    #   which this association is being made.
    #
    # @option params [String] :next_token
    #   A pagination token for fetching the next page of associations. If the
    #   response to this call is truncated, Amazon Lex returns a pagination
    #   token in the response. To fetch the next page of associations, specify
    #   the pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of associations to return in the response. The
    #   default is 50.
    #
    # @option params [String] :name_contains
    #   Substring to match in channel association names. An association will
    #   be returned if any part of its name matches the substring. For
    #   example, "xyz" matches both "xyzabc" and "abcxyz." To return all
    #   bot channel associations, use a hyphen ("-") as the `nameContains`
    #   parameter.
    #
    # @return [Types::GetBotChannelAssociationsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotChannelAssociationsResponse#bot_channel_associations #bot_channel_associations} => Array&lt;Types::BotChannelAssociation&gt;
    #   * {Types::GetBotChannelAssociationsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_channel_associations({
    #     bot_name: "BotName", # required
    #     bot_alias: "AliasNameOrListAll", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "BotChannelName",
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_channel_associations #=> Array
    #   resp.bot_channel_associations[0].name #=> String
    #   resp.bot_channel_associations[0].description #=> String
    #   resp.bot_channel_associations[0].bot_alias #=> String
    #   resp.bot_channel_associations[0].bot_name #=> String
    #   resp.bot_channel_associations[0].created_date #=> Time
    #   resp.bot_channel_associations[0].type #=> String, one of "Facebook", "Slack", "Twilio-Sms", "Kik"
    #   resp.bot_channel_associations[0].bot_configuration #=> Hash
    #   resp.bot_channel_associations[0].bot_configuration["String"] #=> String
    #   resp.bot_channel_associations[0].status #=> String, one of "IN_PROGRESS", "CREATED", "FAILED"
    #   resp.bot_channel_associations[0].failure_reason #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociations AWS API Documentation
    #
    # @overload get_bot_channel_associations(params = {})
    # @param [Hash] params ({})
    def get_bot_channel_associations(params = {}, options = {})
      req = build_request(:get_bot_channel_associations, params)
      req.send_request(options)
    end

    # Gets information about all of the versions of a bot.
    #
    # The `GetBotVersions` operation returns a `BotMetadata` object for each
    # version of a bot. For example, if a bot has three numbered versions,
    # the `GetBotVersions` operation returns four `BotMetadata` objects in
    # the response, one for each numbered version and one for the `$LATEST`
    # version.
    #
    # The `GetBotVersions` operation always returns at least one version,
    # the `$LATEST` version.
    #
    # This operation requires permissions for the `lex:GetBotVersions`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the bot for which versions should be returned.
    #
    # @option params [String] :next_token
    #   A pagination token for fetching the next page of bot versions. If the
    #   response to this call is truncated, Amazon Lex returns a pagination
    #   token in the response. To fetch the next page of versions, specify the
    #   pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bot versions to return in the response. The
    #   default is 10.
    #
    # @return [Types::GetBotVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotVersionsResponse#bots #bots} => Array&lt;Types::BotMetadata&gt;
    #   * {Types::GetBotVersionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bot_versions({
    #     name: "BotName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.bots #=> Array
    #   resp.bots[0].name #=> String
    #   resp.bots[0].description #=> String
    #   resp.bots[0].status #=> String, one of "BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"
    #   resp.bots[0].last_updated_date #=> Time
    #   resp.bots[0].created_date #=> Time
    #   resp.bots[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotVersions AWS API Documentation
    #
    # @overload get_bot_versions(params = {})
    # @param [Hash] params ({})
    def get_bot_versions(params = {}, options = {})
      req = build_request(:get_bot_versions, params)
      req.send_request(options)
    end

    # Returns bot information as follows:
    #
    # * If you provide the `nameContains` field, the response includes
    #   information for the `$LATEST` version of all bots whose name
    #   contains the specified string.
    #
    # * If you don't specify the `nameContains` field, the operation
    #   returns information about the `$LATEST` version of all of your bots.
    #
    # This operation requires permission for the `lex:GetBots` action.
    #
    # @option params [String] :next_token
    #   A pagination token that fetches the next page of bots. If the response
    #   to this call is truncated, Amazon Lex returns a pagination token in
    #   the response. To fetch the next page of bots, specify the pagination
    #   token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of bots to return in the response that the request
    #   will return. The default is 10.
    #
    # @option params [String] :name_contains
    #   Substring to match in bot names. A bot will be returned if any part of
    #   its name matches the substring. For example, "xyz" matches both
    #   "xyzabc" and "abcxyz."
    #
    # @return [Types::GetBotsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBotsResponse#bots #bots} => Array&lt;Types::BotMetadata&gt;
    #   * {Types::GetBotsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To get a list of bots
    #
    #   # This example shows how to get a list of all of the bots in your account.
    #
    #   resp = client.get_bots({
    #     max_results: 5, 
    #     next_token: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     bots: [
    #       {
    #         version: "$LATEST", 
    #         name: "DocOrderPizzaBot", 
    #         created_date: Time.parse(1494360160.133), 
    #         description: "Orders a pizza from a local pizzeria.", 
    #         last_updated_date: Time.parse(1494360160.133), 
    #         status: "NOT_BUILT", 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_bots({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "BotName",
    #   })
    #
    # @example Response structure
    #
    #   resp.bots #=> Array
    #   resp.bots[0].name #=> String
    #   resp.bots[0].description #=> String
    #   resp.bots[0].status #=> String, one of "BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"
    #   resp.bots[0].last_updated_date #=> Time
    #   resp.bots[0].created_date #=> Time
    #   resp.bots[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBots AWS API Documentation
    #
    # @overload get_bots(params = {})
    # @param [Hash] params ({})
    def get_bots(params = {}, options = {})
      req = build_request(:get_bots, params)
      req.send_request(options)
    end

    # Returns information about a built-in intent.
    #
    # This operation requires permission for the `lex:GetBuiltinIntent`
    # action.
    #
    # @option params [required, String] :signature
    #   The unique identifier for a built-in intent. To find the signature for
    #   an intent, see [Standard Built-in Intents][1] in the *Alexa Skills
    #   Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #
    # @return [Types::GetBuiltinIntentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBuiltinIntentResponse#signature #signature} => String
    #   * {Types::GetBuiltinIntentResponse#supported_locales #supported_locales} => Array&lt;String&gt;
    #   * {Types::GetBuiltinIntentResponse#slots #slots} => Array&lt;Types::BuiltinIntentSlot&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_builtin_intent({
    #     signature: "BuiltinIntentSignature", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.signature #=> String
    #   resp.supported_locales #=> Array
    #   resp.supported_locales[0] #=> String, one of "en-US", "en-GB", "de-DE"
    #   resp.slots #=> Array
    #   resp.slots[0].name #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntent AWS API Documentation
    #
    # @overload get_builtin_intent(params = {})
    # @param [Hash] params ({})
    def get_builtin_intent(params = {}, options = {})
      req = build_request(:get_builtin_intent, params)
      req.send_request(options)
    end

    # Gets a list of built-in intents that meet the specified criteria.
    #
    # This operation requires permission for the `lex:GetBuiltinIntents`
    # action.
    #
    # @option params [String] :locale
    #   A list of locales that the intent supports.
    #
    # @option params [String] :signature_contains
    #   Substring to match in built-in intent signatures. An intent will be
    #   returned if any part of its signature matches the substring. For
    #   example, "xyz" matches both "xyzabc" and "abcxyz." To find the
    #   signature for an intent, see [Standard Built-in Intents][1] in the
    #   *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #
    # @option params [String] :next_token
    #   A pagination token that fetches the next page of intents. If this API
    #   call is truncated, Amazon Lex returns a pagination token in the
    #   response. To fetch the next page of intents, use the pagination token
    #   in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of intents to return in the response. The default
    #   is 10.
    #
    # @return [Types::GetBuiltinIntentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBuiltinIntentsResponse#intents #intents} => Array&lt;Types::BuiltinIntentMetadata&gt;
    #   * {Types::GetBuiltinIntentsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_builtin_intents({
    #     locale: "en-US", # accepts en-US, en-GB, de-DE
    #     signature_contains: "String",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.intents #=> Array
    #   resp.intents[0].signature #=> String
    #   resp.intents[0].supported_locales #=> Array
    #   resp.intents[0].supported_locales[0] #=> String, one of "en-US", "en-GB", "de-DE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntents AWS API Documentation
    #
    # @overload get_builtin_intents(params = {})
    # @param [Hash] params ({})
    def get_builtin_intents(params = {}, options = {})
      req = build_request(:get_builtin_intents, params)
      req.send_request(options)
    end

    # Gets a list of built-in slot types that meet the specified criteria.
    #
    # For a list of built-in slot types, see [Slot Type Reference][1] in the
    # *Alexa Skills Kit*.
    #
    # This operation requires permission for the `lex:GetBuiltInSlotTypes`
    # action.
    #
    #
    #
    # [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference
    #
    # @option params [String] :locale
    #   A list of locales that the slot type supports.
    #
    # @option params [String] :signature_contains
    #   Substring to match in built-in slot type signatures. A slot type will
    #   be returned if any part of its signature matches the substring. For
    #   example, "xyz" matches both "xyzabc" and "abcxyz."
    #
    # @option params [String] :next_token
    #   A pagination token that fetches the next page of slot types. If the
    #   response to this API call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of slot
    #   types, specify the pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of slot types to return in the response. The
    #   default is 10.
    #
    # @return [Types::GetBuiltinSlotTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetBuiltinSlotTypesResponse#slot_types #slot_types} => Array&lt;Types::BuiltinSlotTypeMetadata&gt;
    #   * {Types::GetBuiltinSlotTypesResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_builtin_slot_types({
    #     locale: "en-US", # accepts en-US, en-GB, de-DE
    #     signature_contains: "String",
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_types #=> Array
    #   resp.slot_types[0].signature #=> String
    #   resp.slot_types[0].supported_locales #=> Array
    #   resp.slot_types[0].supported_locales[0] #=> String, one of "en-US", "en-GB", "de-DE"
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinSlotTypes AWS API Documentation
    #
    # @overload get_builtin_slot_types(params = {})
    # @param [Hash] params ({})
    def get_builtin_slot_types(params = {}, options = {})
      req = build_request(:get_builtin_slot_types, params)
      req.send_request(options)
    end

    # Exports the contents of a Amazon Lex resource in a specified format.
    #
    # @option params [required, String] :name
    #   The name of the bot to export.
    #
    # @option params [required, String] :version
    #   The version of the bot to export.
    #
    # @option params [required, String] :resource_type
    #   The type of resource to export.
    #
    # @option params [required, String] :export_type
    #   The format of the exported data.
    #
    # @return [Types::GetExportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetExportResponse#name #name} => String
    #   * {Types::GetExportResponse#version #version} => String
    #   * {Types::GetExportResponse#resource_type #resource_type} => String
    #   * {Types::GetExportResponse#export_type #export_type} => String
    #   * {Types::GetExportResponse#export_status #export_status} => String
    #   * {Types::GetExportResponse#failure_reason #failure_reason} => String
    #   * {Types::GetExportResponse#url #url} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_export({
    #     name: "Name", # required
    #     version: "NumericalVersion", # required
    #     resource_type: "BOT", # required, accepts BOT, INTENT, SLOT_TYPE
    #     export_type: "ALEXA_SKILLS_KIT", # required, accepts ALEXA_SKILLS_KIT, LEX
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.version #=> String
    #   resp.resource_type #=> String, one of "BOT", "INTENT", "SLOT_TYPE"
    #   resp.export_type #=> String, one of "ALEXA_SKILLS_KIT", "LEX"
    #   resp.export_status #=> String, one of "IN_PROGRESS", "READY", "FAILED"
    #   resp.failure_reason #=> String
    #   resp.url #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetExport AWS API Documentation
    #
    # @overload get_export(params = {})
    # @param [Hash] params ({})
    def get_export(params = {}, options = {})
      req = build_request(:get_export, params)
      req.send_request(options)
    end

    # Gets information about an import job started with the `StartImport`
    # operation.
    #
    # @option params [required, String] :import_id
    #   The identifier of the import job information to return.
    #
    # @return [Types::GetImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetImportResponse#name #name} => String
    #   * {Types::GetImportResponse#resource_type #resource_type} => String
    #   * {Types::GetImportResponse#merge_strategy #merge_strategy} => String
    #   * {Types::GetImportResponse#import_id #import_id} => String
    #   * {Types::GetImportResponse#import_status #import_status} => String
    #   * {Types::GetImportResponse#failure_reason #failure_reason} => Array&lt;String&gt;
    #   * {Types::GetImportResponse#created_date #created_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_import({
    #     import_id: "String", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.resource_type #=> String, one of "BOT", "INTENT", "SLOT_TYPE"
    #   resp.merge_strategy #=> String, one of "OVERWRITE_LATEST", "FAIL_ON_CONFLICT"
    #   resp.import_id #=> String
    #   resp.import_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.failure_reason #=> Array
    #   resp.failure_reason[0] #=> String
    #   resp.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetImport AWS API Documentation
    #
    # @overload get_import(params = {})
    # @param [Hash] params ({})
    def get_import(params = {}, options = {})
      req = build_request(:get_import, params)
      req.send_request(options)
    end

    # Returns information about an intent. In addition to the intent name,
    # you must specify the intent version.
    #
    # This operation requires permissions to perform the `lex:GetIntent`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the intent. The name is case sensitive.
    #
    # @option params [required, String] :version
    #   The version of the intent.
    #
    # @return [Types::GetIntentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntentResponse#name #name} => String
    #   * {Types::GetIntentResponse#description #description} => String
    #   * {Types::GetIntentResponse#slots #slots} => Array&lt;Types::Slot&gt;
    #   * {Types::GetIntentResponse#sample_utterances #sample_utterances} => Array&lt;String&gt;
    #   * {Types::GetIntentResponse#confirmation_prompt #confirmation_prompt} => Types::Prompt
    #   * {Types::GetIntentResponse#rejection_statement #rejection_statement} => Types::Statement
    #   * {Types::GetIntentResponse#follow_up_prompt #follow_up_prompt} => Types::FollowUpPrompt
    #   * {Types::GetIntentResponse#conclusion_statement #conclusion_statement} => Types::Statement
    #   * {Types::GetIntentResponse#dialog_code_hook #dialog_code_hook} => Types::CodeHook
    #   * {Types::GetIntentResponse#fulfillment_activity #fulfillment_activity} => Types::FulfillmentActivity
    #   * {Types::GetIntentResponse#parent_intent_signature #parent_intent_signature} => String
    #   * {Types::GetIntentResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::GetIntentResponse#created_date #created_date} => Time
    #   * {Types::GetIntentResponse#version #version} => String
    #   * {Types::GetIntentResponse#checksum #checksum} => String
    #
    #
    # @example Example: To get a information about an intent
    #
    #   # This example shows how to get information about an intent.
    #
    #   resp = client.get_intent({
    #     version: "$LATEST", 
    #     name: "DocOrderPizza", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "$LATEST", 
    #     name: "DocOrderPizza", 
    #     checksum: "ca9bc13d-afc8-4706-bbaf-091f7a5935d6", 
    #     conclusion_statement: {
    #       messages: [
    #         {
    #           content: "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #       response_card: "foo", 
    #     }, 
    #     confirmation_prompt: {
    #       max_attempts: 1, 
    #       messages: [
    #         {
    #           content: "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     created_date: Time.parse(1494359783.453), 
    #     description: "Order a pizza from a local pizzeria.", 
    #     fulfillment_activity: {
    #       type: "ReturnIntent", 
    #     }, 
    #     last_updated_date: Time.parse(1494359783.453), 
    #     rejection_statement: {
    #       messages: [
    #         {
    #           content: "Ok, I'll cancel your order.", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "I cancelled your order.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     sample_utterances: [
    #       "Order me a pizza.", 
    #       "Order me a {Type} pizza.", 
    #       "I want a {Crust} crust {Type} pizza", 
    #       "I want a {Crust} crust {Type} pizza with {Sauce} sauce.", 
    #     ], 
    #     slots: [
    #       {
    #         name: "Type", 
    #         description: "The type of pizza to order.", 
    #         priority: 1, 
    #         sample_utterances: [
    #           "Get me a {Type} pizza.", 
    #           "A {Type} pizza please.", 
    #           "I'd like a {Type} pizza.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "What type of pizza would you like?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Vegie or cheese pizza?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "I can get you a vegie or a cheese pizza.", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         name: "Crust", 
    #         description: "The type of pizza crust to order.", 
    #         priority: 2, 
    #         sample_utterances: [
    #           "Make it a {Crust} crust.", 
    #           "I'd like a {Crust} crust.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaCrustType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "What type of crust would you like?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Thick or thin crust?", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         name: "Sauce", 
    #         description: "The type of sauce to use on the pizza.", 
    #         priority: 3, 
    #         sample_utterances: [
    #           "Make it {Sauce} sauce.", 
    #           "I'd like {Sauce} sauce.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaSauceType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "White or red sauce?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Garlic or tomato sauce?", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_intent({
    #     name: "IntentName", # required
    #     version: "Version", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.slots #=> Array
    #   resp.slots[0].name #=> String
    #   resp.slots[0].description #=> String
    #   resp.slots[0].slot_constraint #=> String, one of "Required", "Optional"
    #   resp.slots[0].slot_type #=> String
    #   resp.slots[0].slot_type_version #=> String
    #   resp.slots[0].value_elicitation_prompt.messages #=> Array
    #   resp.slots[0].value_elicitation_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.slots[0].value_elicitation_prompt.messages[0].content #=> String
    #   resp.slots[0].value_elicitation_prompt.messages[0].group_number #=> Integer
    #   resp.slots[0].value_elicitation_prompt.max_attempts #=> Integer
    #   resp.slots[0].value_elicitation_prompt.response_card #=> String
    #   resp.slots[0].priority #=> Integer
    #   resp.slots[0].sample_utterances #=> Array
    #   resp.slots[0].sample_utterances[0] #=> String
    #   resp.slots[0].response_card #=> String
    #   resp.sample_utterances #=> Array
    #   resp.sample_utterances[0] #=> String
    #   resp.confirmation_prompt.messages #=> Array
    #   resp.confirmation_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.confirmation_prompt.messages[0].content #=> String
    #   resp.confirmation_prompt.messages[0].group_number #=> Integer
    #   resp.confirmation_prompt.max_attempts #=> Integer
    #   resp.confirmation_prompt.response_card #=> String
    #   resp.rejection_statement.messages #=> Array
    #   resp.rejection_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.rejection_statement.messages[0].content #=> String
    #   resp.rejection_statement.messages[0].group_number #=> Integer
    #   resp.rejection_statement.response_card #=> String
    #   resp.follow_up_prompt.prompt.messages #=> Array
    #   resp.follow_up_prompt.prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.follow_up_prompt.prompt.messages[0].content #=> String
    #   resp.follow_up_prompt.prompt.messages[0].group_number #=> Integer
    #   resp.follow_up_prompt.prompt.max_attempts #=> Integer
    #   resp.follow_up_prompt.prompt.response_card #=> String
    #   resp.follow_up_prompt.rejection_statement.messages #=> Array
    #   resp.follow_up_prompt.rejection_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.follow_up_prompt.rejection_statement.messages[0].content #=> String
    #   resp.follow_up_prompt.rejection_statement.messages[0].group_number #=> Integer
    #   resp.follow_up_prompt.rejection_statement.response_card #=> String
    #   resp.conclusion_statement.messages #=> Array
    #   resp.conclusion_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.conclusion_statement.messages[0].content #=> String
    #   resp.conclusion_statement.messages[0].group_number #=> Integer
    #   resp.conclusion_statement.response_card #=> String
    #   resp.dialog_code_hook.uri #=> String
    #   resp.dialog_code_hook.message_version #=> String
    #   resp.fulfillment_activity.type #=> String, one of "ReturnIntent", "CodeHook"
    #   resp.fulfillment_activity.code_hook.uri #=> String
    #   resp.fulfillment_activity.code_hook.message_version #=> String
    #   resp.parent_intent_signature #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.checksum #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntent AWS API Documentation
    #
    # @overload get_intent(params = {})
    # @param [Hash] params ({})
    def get_intent(params = {}, options = {})
      req = build_request(:get_intent, params)
      req.send_request(options)
    end

    # Gets information about all of the versions of an intent.
    #
    # The `GetIntentVersions` operation returns an `IntentMetadata` object
    # for each version of an intent. For example, if an intent has three
    # numbered versions, the `GetIntentVersions` operation returns four
    # `IntentMetadata` objects in the response, one for each numbered
    # version and one for the `$LATEST` version.
    #
    # The `GetIntentVersions` operation always returns at least one version,
    # the `$LATEST` version.
    #
    # This operation requires permissions for the `lex:GetIntentVersions`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the intent for which versions should be returned.
    #
    # @option params [String] :next_token
    #   A pagination token for fetching the next page of intent versions. If
    #   the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of versions,
    #   specify the pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of intent versions to return in the response. The
    #   default is 10.
    #
    # @return [Types::GetIntentVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntentVersionsResponse#intents #intents} => Array&lt;Types::IntentMetadata&gt;
    #   * {Types::GetIntentVersionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_intent_versions({
    #     name: "IntentName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.intents #=> Array
    #   resp.intents[0].name #=> String
    #   resp.intents[0].description #=> String
    #   resp.intents[0].last_updated_date #=> Time
    #   resp.intents[0].created_date #=> Time
    #   resp.intents[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentVersions AWS API Documentation
    #
    # @overload get_intent_versions(params = {})
    # @param [Hash] params ({})
    def get_intent_versions(params = {}, options = {})
      req = build_request(:get_intent_versions, params)
      req.send_request(options)
    end

    # Returns intent information as follows:
    #
    # * If you specify the `nameContains` field, returns the `$LATEST`
    #   version of all intents that contain the specified string.
    #
    # * If you don't specify the `nameContains` field, returns information
    #   about the `$LATEST` version of all intents.
    #
    # The operation requires permission for the `lex:GetIntents` action.
    #
    # @option params [String] :next_token
    #   A pagination token that fetches the next page of intents. If the
    #   response to this API call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of intents,
    #   specify the pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of intents to return in the response. The default
    #   is 10.
    #
    # @option params [String] :name_contains
    #   Substring to match in intent names. An intent will be returned if any
    #   part of its name matches the substring. For example, "xyz" matches
    #   both "xyzabc" and "abcxyz."
    #
    # @return [Types::GetIntentsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetIntentsResponse#intents #intents} => Array&lt;Types::IntentMetadata&gt;
    #   * {Types::GetIntentsResponse#next_token #next_token} => String
    #
    #
    # @example Example: To get a list of intents
    #
    #   # This example shows how to get a list of all of the intents in your account.
    #
    #   resp = client.get_intents({
    #     max_results: 10, 
    #     next_token: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     intents: [
    #       {
    #         version: "$LATEST", 
    #         name: "DocOrderPizza", 
    #         created_date: Time.parse(1494359783.453), 
    #         description: "Order a pizza from a local pizzeria.", 
    #         last_updated_date: Time.parse(1494359783.453), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_intents({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "IntentName",
    #   })
    #
    # @example Response structure
    #
    #   resp.intents #=> Array
    #   resp.intents[0].name #=> String
    #   resp.intents[0].description #=> String
    #   resp.intents[0].last_updated_date #=> Time
    #   resp.intents[0].created_date #=> Time
    #   resp.intents[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntents AWS API Documentation
    #
    # @overload get_intents(params = {})
    # @param [Hash] params ({})
    def get_intents(params = {}, options = {})
      req = build_request(:get_intents, params)
      req.send_request(options)
    end

    # Returns information about a specific version of a slot type. In
    # addition to specifying the slot type name, you must specify the slot
    # type version.
    #
    # This operation requires permissions for the `lex:GetSlotType` action.
    #
    # @option params [required, String] :name
    #   The name of the slot type. The name is case sensitive.
    #
    # @option params [required, String] :version
    #   The version of the slot type.
    #
    # @return [Types::GetSlotTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSlotTypeResponse#name #name} => String
    #   * {Types::GetSlotTypeResponse#description #description} => String
    #   * {Types::GetSlotTypeResponse#enumeration_values #enumeration_values} => Array&lt;Types::EnumerationValue&gt;
    #   * {Types::GetSlotTypeResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::GetSlotTypeResponse#created_date #created_date} => Time
    #   * {Types::GetSlotTypeResponse#version #version} => String
    #   * {Types::GetSlotTypeResponse#checksum #checksum} => String
    #   * {Types::GetSlotTypeResponse#value_selection_strategy #value_selection_strategy} => String
    #
    #
    # @example Example: To get information about a slot type
    #
    #   # This example shows how to get information about a slot type.
    #
    #   resp = client.get_slot_type({
    #     version: "$LATEST", 
    #     name: "DocPizzaCrustType", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "$LATEST", 
    #     name: "DocPizzaCrustType", 
    #     checksum: "210b3d5a-90a3-4b22-ac7e-f50c2c71095f", 
    #     created_date: Time.parse(1494359274.403), 
    #     description: "Available crust types", 
    #     enumeration_values: [
    #       {
    #         value: "thick", 
    #       }, 
    #       {
    #         value: "thin", 
    #       }, 
    #     ], 
    #     last_updated_date: Time.parse(1494359274.403), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_slot_type({
    #     name: "SlotTypeName", # required
    #     version: "Version", # required
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.enumeration_values #=> Array
    #   resp.enumeration_values[0].value #=> String
    #   resp.enumeration_values[0].synonyms #=> Array
    #   resp.enumeration_values[0].synonyms[0] #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.checksum #=> String
    #   resp.value_selection_strategy #=> String, one of "ORIGINAL_VALUE", "TOP_RESOLUTION"
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotType AWS API Documentation
    #
    # @overload get_slot_type(params = {})
    # @param [Hash] params ({})
    def get_slot_type(params = {}, options = {})
      req = build_request(:get_slot_type, params)
      req.send_request(options)
    end

    # Gets information about all versions of a slot type.
    #
    # The `GetSlotTypeVersions` operation returns a `SlotTypeMetadata`
    # object for each version of a slot type. For example, if a slot type
    # has three numbered versions, the `GetSlotTypeVersions` operation
    # returns four `SlotTypeMetadata` objects in the response, one for each
    # numbered version and one for the `$LATEST` version.
    #
    # The `GetSlotTypeVersions` operation always returns at least one
    # version, the `$LATEST` version.
    #
    # This operation requires permissions for the `lex:GetSlotTypeVersions`
    # action.
    #
    # @option params [required, String] :name
    #   The name of the slot type for which versions should be returned.
    #
    # @option params [String] :next_token
    #   A pagination token for fetching the next page of slot type versions.
    #   If the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of versions,
    #   specify the pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of slot type versions to return in the response.
    #   The default is 10.
    #
    # @return [Types::GetSlotTypeVersionsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSlotTypeVersionsResponse#slot_types #slot_types} => Array&lt;Types::SlotTypeMetadata&gt;
    #   * {Types::GetSlotTypeVersionsResponse#next_token #next_token} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_slot_type_versions({
    #     name: "SlotTypeName", # required
    #     next_token: "NextToken",
    #     max_results: 1,
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_types #=> Array
    #   resp.slot_types[0].name #=> String
    #   resp.slot_types[0].description #=> String
    #   resp.slot_types[0].last_updated_date #=> Time
    #   resp.slot_types[0].created_date #=> Time
    #   resp.slot_types[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypeVersions AWS API Documentation
    #
    # @overload get_slot_type_versions(params = {})
    # @param [Hash] params ({})
    def get_slot_type_versions(params = {}, options = {})
      req = build_request(:get_slot_type_versions, params)
      req.send_request(options)
    end

    # Returns slot type information as follows:
    #
    # * If you specify the `nameContains` field, returns the `$LATEST`
    #   version of all slot types that contain the specified string.
    #
    # * If you don't specify the `nameContains` field, returns information
    #   about the `$LATEST` version of all slot types.
    #
    # The operation requires permission for the `lex:GetSlotTypes` action.
    #
    # @option params [String] :next_token
    #   A pagination token that fetches the next page of slot types. If the
    #   response to this API call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch next page of slot types,
    #   specify the pagination token in the next request.
    #
    # @option params [Integer] :max_results
    #   The maximum number of slot types to return in the response. The
    #   default is 10.
    #
    # @option params [String] :name_contains
    #   Substring to match in slot type names. A slot type will be returned if
    #   any part of its name matches the substring. For example, "xyz"
    #   matches both "xyzabc" and "abcxyz."
    #
    # @return [Types::GetSlotTypesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetSlotTypesResponse#slot_types #slot_types} => Array&lt;Types::SlotTypeMetadata&gt;
    #   * {Types::GetSlotTypesResponse#next_token #next_token} => String
    #
    #
    # @example Example: To get a list of slot types
    #
    #   # This example shows how to get a list of all of the slot types in your account.
    #
    #   resp = client.get_slot_types({
    #     max_results: 10, 
    #     next_token: "", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     slot_types: [
    #       {
    #         version: "$LATEST", 
    #         name: "DocPizzaCrustType", 
    #         created_date: Time.parse(1494359274.403), 
    #         description: "Available crust types", 
    #         last_updated_date: Time.parse(1494359274.403), 
    #       }, 
    #       {
    #         version: "$LATEST", 
    #         name: "DocPizzaSauceType", 
    #         created_date: Time.parse(1494356442.23), 
    #         description: "Available pizza sauces", 
    #         last_updated_date: Time.parse(1494356442.23), 
    #       }, 
    #       {
    #         version: "$LATEST", 
    #         name: "DocPizzaType", 
    #         created_date: Time.parse(1494359198.656), 
    #         description: "Available pizzas", 
    #         last_updated_date: Time.parse(1494359198.656), 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_slot_types({
    #     next_token: "NextToken",
    #     max_results: 1,
    #     name_contains: "SlotTypeName",
    #   })
    #
    # @example Response structure
    #
    #   resp.slot_types #=> Array
    #   resp.slot_types[0].name #=> String
    #   resp.slot_types[0].description #=> String
    #   resp.slot_types[0].last_updated_date #=> Time
    #   resp.slot_types[0].created_date #=> Time
    #   resp.slot_types[0].version #=> String
    #   resp.next_token #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypes AWS API Documentation
    #
    # @overload get_slot_types(params = {})
    # @param [Hash] params ({})
    def get_slot_types(params = {}, options = {})
      req = build_request(:get_slot_types, params)
      req.send_request(options)
    end

    # Use the `GetUtterancesView` operation to get information about the
    # utterances that your users have made to your bot. You can use this
    # list to tune the utterances that your bot responds to.
    #
    # For example, say that you have created a bot to order flowers. After
    # your users have used your bot for a while, use the `GetUtterancesView`
    # operation to see the requests that they have made and whether they
    # have been successful. You might find that the utterance "I want
    # flowers" is not being recognized. You could add this utterance to the
    # `OrderFlowers` intent so that your bot recognizes that utterance.
    #
    # After you publish a new version of a bot, you can get information
    # about the old version and the new so that you can compare the
    # performance across the two versions.
    #
    # <note markdown="1"> Utterance statistics are generated once a day. Data is available for
    # the last 15 days. You can request information for up to 5 versions in
    # each request. The response contains information about a maximum of 100
    # utterances for each version.
    #
    #  </note>
    #
    # This operation requires permissions for the `lex:GetUtterancesView`
    # action.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot for which utterance information should be
    #   returned.
    #
    # @option params [required, Array<String>] :bot_versions
    #   An array of bot versions for which utterance information should be
    #   returned. The limit is 5 versions per request.
    #
    # @option params [required, String] :status_type
    #   To return utterances that were recognized and handled, use`Detected`.
    #   To return utterances that were not recognized, use `Missed`.
    #
    # @return [Types::GetUtterancesViewResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::GetUtterancesViewResponse#bot_name #bot_name} => String
    #   * {Types::GetUtterancesViewResponse#utterances #utterances} => Array&lt;Types::UtteranceList&gt;
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_utterances_view({
    #     bot_name: "BotName", # required
    #     bot_versions: ["Version"], # required
    #     status_type: "Detected", # required, accepts Detected, Missed
    #   })
    #
    # @example Response structure
    #
    #   resp.bot_name #=> String
    #   resp.utterances #=> Array
    #   resp.utterances[0].bot_version #=> String
    #   resp.utterances[0].utterances #=> Array
    #   resp.utterances[0].utterances[0].utterance_string #=> String
    #   resp.utterances[0].utterances[0].count #=> Integer
    #   resp.utterances[0].utterances[0].distinct_users #=> Integer
    #   resp.utterances[0].utterances[0].first_uttered_date #=> Time
    #   resp.utterances[0].utterances[0].last_uttered_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetUtterancesView AWS API Documentation
    #
    # @overload get_utterances_view(params = {})
    # @param [Hash] params ({})
    def get_utterances_view(params = {}, options = {})
      req = build_request(:get_utterances_view, params)
      req.send_request(options)
    end

    # Creates an Amazon Lex conversational bot or replaces an existing bot.
    # When you create or update a bot you are only required to specify a
    # name, a locale, and whether the bot is directed toward children under
    # age 13. You can use this to add intents later, or to remove intents
    # from an existing bot. When you create a bot with the minimum
    # information, the bot is created or updated but Amazon Lex returns the
    # ` response FAILED. You can build the bot after you add one or more
    # intents. For more information about Amazon Lex bots, see how-it-works.
    # </p> If you specify the name of an existing bot, the fields in the
    # request replace the existing values in the $LATEST version of the bot.
    # Amazon Lex removes any fields that you don't provide values for in the
    # request, except for the idleTTLInSeconds and privacySettings fields,
    # which are set to their default values. If you don't specify values for
    # required fields, Amazon Lex throws an exception. This operation
    # requires permissions for the lex:PutBot action. For more information,
    # see auth-and-access-control.
    # `
    #
    # @option params [required, String] :name
    #   The name of the bot. The name is *not* case sensitive.
    #
    # @option params [String] :description
    #   A description of the bot.
    #
    # @option params [Array<Types::Intent>] :intents
    #   An array of `Intent` objects. Each intent represents a command that a
    #   user can express. For example, a pizza ordering bot might support an
    #   OrderPizza intent. For more information, see how-it-works.
    #
    # @option params [Types::Prompt] :clarification_prompt
    #   When Amazon Lex doesn't understand the user's intent, it uses this
    #   message to get clarification. To specify how many times Amazon Lex
    #   should repeate the clarification prompt, use the `maxAttempts` field.
    #   If Amazon Lex still doesn't understand, it sends the message in the
    #   `abortStatement` field.
    #
    #   When you create a clarification prompt, make sure that it suggests the
    #   correct response from the user. for example, for a bot that orders
    #   pizza and drinks, you might create this clarification prompt: "What
    #   would you like to do? You can say 'Order a pizza' or 'Order a
    #   drink.'"
    #
    # @option params [Types::Statement] :abort_statement
    #   When Amazon Lex can't understand the user's input in context, it
    #   tries to elicit the information a few times. After that, Amazon Lex
    #   sends the message defined in `abortStatement` to the user, and then
    #   aborts the conversation. To set the number of retries, use the
    #   `valueElicitationPrompt` field for the slot type.
    #
    #   For example, in a pizza ordering bot, Amazon Lex might ask a user
    #   "What type of crust would you like?" If the user's response is not
    #   one of the expected responses (for example, "thin crust, "deep
    #   dish," etc.), Amazon Lex tries to elicit a correct response a few
    #   more times.
    #
    #   For example, in a pizza ordering application, `OrderPizza` might be
    #   one of the intents. This intent might require the `CrustType` slot.
    #   You specify the `valueElicitationPrompt` field when you create the
    #   `CrustType` slot.
    #
    # @option params [Integer] :idle_session_ttl_in_seconds
    #   The maximum time in seconds that Amazon Lex retains the data gathered
    #   in a conversation.
    #
    #   A user interaction session remains active for the amount of time
    #   specified. If no conversation occurs during this time, the session
    #   expires and Amazon Lex deletes any data provided before the timeout.
    #
    #   For example, suppose that a user chooses the OrderPizza intent, but
    #   gets sidetracked halfway through placing an order. If the user
    #   doesn't complete the order within the specified time, Amazon Lex
    #   discards the slot information that it gathered, and the user must
    #   start over.
    #
    #   If you don't include the `idleSessionTTLInSeconds` element in a
    #   `PutBot` operation request, Amazon Lex uses the default value. This is
    #   also true if the request replaces an existing bot.
    #
    #   The default is 300 seconds (5 minutes).
    #
    # @option params [String] :voice_id
    #   The Amazon Polly voice ID that you want Amazon Lex to use for voice
    #   interactions with the user. The locale configured for the voice must
    #   match the locale of the bot. For more information, see [Available
    #   Voices][1] in the *Amazon Polly Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/voicelist.html
    #
    # @option params [String] :checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new bot, leave the `checksum` field blank. If you
    #   specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a bot, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If you
    #   don't specify the ` checksum` field, or if the checksum does not
    #   match the `$LATEST` version, you get a `PreconditionFailedException`
    #   exception.
    #
    # @option params [String] :process_behavior
    #   If you set the `processBehavior` element to `BUILD`, Amazon Lex builds
    #   the bot so that it can be run. If you set the element to `SAVE` Amazon
    #   Lex saves the bot, but doesn't build it.
    #
    #   If you don't specify this value, the default value is `BUILD`.
    #
    # @option params [required, String] :locale
    #   Specifies the target locale for the bot. Any intent used in the bot
    #   must be compatible with the locale of the bot.
    #
    #   The default is `en-US`.
    #
    # @option params [required, Boolean] :child_directed
    #   For each Amazon Lex bot created with the Amazon Lex Model Building
    #   Service, you must specify whether your use of Amazon Lex is related to
    #   a website, program, or other application that is directed or targeted,
    #   in whole or in part, to children under age 13 and subject to the
    #   Children's Online Privacy Protection Act (COPPA) by specifying `true`
    #   or `false` in the `childDirected` field. By specifying `true` in the
    #   `childDirected` field, you confirm that your use of Amazon Lex **is**
    #   related to a website, program, or other application that is directed
    #   or targeted, in whole or in part, to children under age 13 and subject
    #   to COPPA. By specifying `false` in the `childDirected` field, you
    #   confirm that your use of Amazon Lex **is not** related to a website,
    #   program, or other application that is directed or targeted, in whole
    #   or in part, to children under age 13 and subject to COPPA. You may not
    #   specify a default value for the `childDirected` field that does not
    #   accurately reflect whether your use of Amazon Lex is related to a
    #   website, program, or other application that is directed or targeted,
    #   in whole or in part, to children under age 13 and subject to COPPA.
    #
    #   If your use of Amazon Lex relates to a website, program, or other
    #   application that is directed in whole or in part, to children under
    #   age 13, you must obtain any required verifiable parental consent under
    #   COPPA. For information regarding the use of Amazon Lex in connection
    #   with websites, programs, or other applications that are directed or
    #   targeted, in whole or in part, to children under age 13, see the
    #   [Amazon Lex FAQ.][1]
    #
    #
    #
    #   [1]: https://aws.amazon.com/lex/faqs#data-security
    #
    # @option params [Boolean] :create_version
    #
    # @return [Types::PutBotResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutBotResponse#name #name} => String
    #   * {Types::PutBotResponse#description #description} => String
    #   * {Types::PutBotResponse#intents #intents} => Array&lt;Types::Intent&gt;
    #   * {Types::PutBotResponse#clarification_prompt #clarification_prompt} => Types::Prompt
    #   * {Types::PutBotResponse#abort_statement #abort_statement} => Types::Statement
    #   * {Types::PutBotResponse#status #status} => String
    #   * {Types::PutBotResponse#failure_reason #failure_reason} => String
    #   * {Types::PutBotResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::PutBotResponse#created_date #created_date} => Time
    #   * {Types::PutBotResponse#idle_session_ttl_in_seconds #idle_session_ttl_in_seconds} => Integer
    #   * {Types::PutBotResponse#voice_id #voice_id} => String
    #   * {Types::PutBotResponse#checksum #checksum} => String
    #   * {Types::PutBotResponse#version #version} => String
    #   * {Types::PutBotResponse#locale #locale} => String
    #   * {Types::PutBotResponse#child_directed #child_directed} => Boolean
    #   * {Types::PutBotResponse#create_version #create_version} => Boolean
    #
    #
    # @example Example: To create a bot
    #
    #   # This example shows how to create a bot for ordering pizzas.
    #
    #   resp = client.put_bot({
    #     name: "DocOrderPizzaBot", 
    #     abort_statement: {
    #       messages: [
    #         {
    #           content: "I don't understand. Can you try again?", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "I'm sorry, I don't understand.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     child_directed: true, 
    #     clarification_prompt: {
    #       max_attempts: 1, 
    #       messages: [
    #         {
    #           content: "I'm sorry, I didn't hear that. Can you repeate what you just said?", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "Can you say that again?", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     description: "Orders a pizza from a local pizzeria.", 
    #     idle_session_ttl_in_seconds: 300, 
    #     intents: [
    #       {
    #         intent_name: "DocOrderPizza", 
    #         intent_version: "$LATEST", 
    #       }, 
    #     ], 
    #     locale: "en-US", 
    #     process_behavior: "SAVE", 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "$LATEST", 
    #     name: "DocOrderPizzaBot", 
    #     abort_statement: {
    #       messages: [
    #         {
    #           content: "I don't understand. Can you try again?", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "I'm sorry, I don't understand.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     checksum: "20172ee3-fa06-49b2-bbc5-667c090303e9", 
    #     child_directed: true, 
    #     clarification_prompt: {
    #       max_attempts: 1, 
    #       messages: [
    #         {
    #           content: "I'm sorry, I didn't hear that. Can you repeate what you just said?", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "Can you say that again?", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     created_date: Time.parse(1494360160.133), 
    #     description: "Orders a pizza from a local pizzeria.", 
    #     idle_session_ttl_in_seconds: 300, 
    #     intents: [
    #       {
    #         intent_name: "DocOrderPizza", 
    #         intent_version: "$LATEST", 
    #       }, 
    #     ], 
    #     last_updated_date: Time.parse(1494360160.133), 
    #     locale: "en-US", 
    #     status: "NOT_BUILT", 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bot({
    #     name: "BotName", # required
    #     description: "Description",
    #     intents: [
    #       {
    #         intent_name: "IntentName", # required
    #         intent_version: "Version", # required
    #       },
    #     ],
    #     clarification_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #           content: "ContentString", # required
    #           group_number: 1,
    #         },
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard",
    #     },
    #     abort_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #           content: "ContentString", # required
    #           group_number: 1,
    #         },
    #       ],
    #       response_card: "ResponseCard",
    #     },
    #     idle_session_ttl_in_seconds: 1,
    #     voice_id: "String",
    #     checksum: "String",
    #     process_behavior: "SAVE", # accepts SAVE, BUILD
    #     locale: "en-US", # required, accepts en-US, en-GB, de-DE
    #     child_directed: false, # required
    #     create_version: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.intents #=> Array
    #   resp.intents[0].intent_name #=> String
    #   resp.intents[0].intent_version #=> String
    #   resp.clarification_prompt.messages #=> Array
    #   resp.clarification_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.clarification_prompt.messages[0].content #=> String
    #   resp.clarification_prompt.messages[0].group_number #=> Integer
    #   resp.clarification_prompt.max_attempts #=> Integer
    #   resp.clarification_prompt.response_card #=> String
    #   resp.abort_statement.messages #=> Array
    #   resp.abort_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.abort_statement.messages[0].content #=> String
    #   resp.abort_statement.messages[0].group_number #=> Integer
    #   resp.abort_statement.response_card #=> String
    #   resp.status #=> String, one of "BUILDING", "READY", "READY_BASIC_TESTING", "FAILED", "NOT_BUILT"
    #   resp.failure_reason #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.idle_session_ttl_in_seconds #=> Integer
    #   resp.voice_id #=> String
    #   resp.checksum #=> String
    #   resp.version #=> String
    #   resp.locale #=> String, one of "en-US", "en-GB", "de-DE"
    #   resp.child_directed #=> Boolean
    #   resp.create_version #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBot AWS API Documentation
    #
    # @overload put_bot(params = {})
    # @param [Hash] params ({})
    def put_bot(params = {}, options = {})
      req = build_request(:put_bot, params)
      req.send_request(options)
    end

    # Creates an alias for the specified version of the bot or replaces an
    # alias for the specified bot. To change the version of the bot that the
    # alias points to, replace the alias. For more information about
    # aliases, see versioning-aliases.
    #
    # This operation requires permissions for the `lex:PutBotAlias` action.
    #
    # @option params [required, String] :name
    #   The name of the alias. The name is *not* case sensitive.
    #
    # @option params [String] :description
    #   A description of the alias.
    #
    # @option params [required, String] :bot_version
    #   The version of the bot.
    #
    # @option params [required, String] :bot_name
    #   The name of the bot.
    #
    # @option params [String] :checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new bot alias, leave the `checksum` field blank. If
    #   you specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a bot alias, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If you
    #   don't specify the ` checksum` field, or if the checksum does not
    #   match the `$LATEST` version, you get a `PreconditionFailedException`
    #   exception.
    #
    # @return [Types::PutBotAliasResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutBotAliasResponse#name #name} => String
    #   * {Types::PutBotAliasResponse#description #description} => String
    #   * {Types::PutBotAliasResponse#bot_version #bot_version} => String
    #   * {Types::PutBotAliasResponse#bot_name #bot_name} => String
    #   * {Types::PutBotAliasResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::PutBotAliasResponse#created_date #created_date} => Time
    #   * {Types::PutBotAliasResponse#checksum #checksum} => String
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_bot_alias({
    #     name: "AliasName", # required
    #     description: "Description",
    #     bot_version: "Version", # required
    #     bot_name: "BotName", # required
    #     checksum: "String",
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.bot_version #=> String
    #   resp.bot_name #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.checksum #=> String
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBotAlias AWS API Documentation
    #
    # @overload put_bot_alias(params = {})
    # @param [Hash] params ({})
    def put_bot_alias(params = {}, options = {})
      req = build_request(:put_bot_alias, params)
      req.send_request(options)
    end

    # Creates an intent or replaces an existing intent.
    #
    # To define the interaction between the user and your bot, you use one
    # or more intents. For a pizza ordering bot, for example, you would
    # create an `OrderPizza` intent.
    #
    # To create an intent or replace an existing intent, you must provide
    # the following:
    #
    # * Intent name. For example, `OrderPizza`.
    #
    # * Sample utterances. For example, "Can I order a pizza, please." and
    #   "I want to order a pizza."
    #
    # * Information to be gathered. You specify slot types for the
    #   information that your bot will request from the user. You can
    #   specify standard slot types, such as a date or a time, or custom
    #   slot types such as the size and crust of a pizza.
    #
    # * How the intent will be fulfilled. You can provide a Lambda function
    #   or configure the intent to return the intent information to the
    #   client application. If you use a Lambda function, when all of the
    #   intent information is available, Amazon Lex invokes your Lambda
    #   function. If you configure your intent to return the intent
    #   information to the client application.
    #
    # You can specify other optional information in the request, such as:
    #
    # * A confirmation prompt to ask the user to confirm an intent. For
    #   example, "Shall I order your pizza?"
    #
    # * A conclusion statement to send to the user after the intent has been
    #   fulfilled. For example, "I placed your pizza order."
    #
    # * A follow-up prompt that asks the user for additional activity. For
    #   example, asking "Do you want to order a drink with your pizza?"
    #
    # If you specify an existing intent name to update the intent, Amazon
    # Lex replaces the values in the `$LATEST` version of the intent with
    # the values in the request. Amazon Lex removes fields that you don't
    # provide in the request. If you don't specify the required fields,
    # Amazon Lex throws an exception. When you update the `$LATEST` version
    # of an intent, the `status` field of any bot that uses the `$LATEST`
    # version of the intent is set to `NOT_BUILT`.
    #
    # For more information, see how-it-works.
    #
    # This operation requires permissions for the `lex:PutIntent` action.
    #
    # @option params [required, String] :name
    #   The name of the intent. The name is *not* case sensitive.
    #
    #   The name can't match a built-in intent name, or a built-in intent
    #   name with "AMAZON." removed. For example, because there is a
    #   built-in intent called `AMAZON.HelpIntent`, you can't create a custom
    #   intent called `HelpIntent`.
    #
    #   For a list of built-in intents, see [Standard Built-in Intents][1] in
    #   the *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #
    # @option params [String] :description
    #   A description of the intent.
    #
    # @option params [Array<Types::Slot>] :slots
    #   An array of intent slots. At runtime, Amazon Lex elicits required slot
    #   values from the user using prompts defined in the slots. For more
    #   information, see how-it-works.
    #
    # @option params [Array<String>] :sample_utterances
    #   An array of utterances (strings) that a user might say to signal the
    #   intent. For example, "I want \\\{PizzaSize\\} pizza", "Order
    #   \\\{Quantity\\} \\\{PizzaSize\\} pizzas".
    #
    #   In each utterance, a slot name is enclosed in curly braces.
    #
    # @option params [Types::Prompt] :confirmation_prompt
    #   Prompts the user to confirm the intent. This question should have a
    #   yes or no answer.
    #
    #   Amazon Lex uses this prompt to ensure that the user acknowledges that
    #   the intent is ready for fulfillment. For example, with the
    #   `OrderPizza` intent, you might want to confirm that the order is
    #   correct before placing it. For other intents, such as intents that
    #   simply respond to user questions, you might not need to ask the user
    #   for confirmation before providing the information.
    #
    #   <note markdown="1"> You you must provide both the `rejectionStatement` and the
    #   `confirmationPrompt`, or neither.
    #
    #    </note>
    #
    # @option params [Types::Statement] :rejection_statement
    #   When the user answers "no" to the question defined in
    #   `confirmationPrompt`, Amazon Lex responds with this statement to
    #   acknowledge that the intent was canceled.
    #
    #   <note markdown="1"> You must provide both the `rejectionStatement` and the
    #   `confirmationPrompt`, or neither.
    #
    #    </note>
    #
    # @option params [Types::FollowUpPrompt] :follow_up_prompt
    #   Amazon Lex uses this prompt to solicit additional activity after
    #   fulfilling an intent. For example, after the `OrderPizza` intent is
    #   fulfilled, you might prompt the user to order a drink.
    #
    #   The action that Amazon Lex takes depends on the user's response, as
    #   follows:
    #
    #   * If the user says "Yes" it responds with the clarification prompt
    #     that is configured for the bot.
    #
    #   * if the user says "Yes" and continues with an utterance that
    #     triggers an intent it starts a conversation for the intent.
    #
    #   * If the user says "No" it responds with the rejection statement
    #     configured for the the follow-up prompt.
    #
    #   * If it doesn't recognize the utterance it repeats the follow-up
    #     prompt again.
    #
    #   The `followUpPrompt` field and the `conclusionStatement` field are
    #   mutually exclusive. You can specify only one.
    #
    # @option params [Types::Statement] :conclusion_statement
    #   The statement that you want Amazon Lex to convey to the user after the
    #   intent is successfully fulfilled by the Lambda function.
    #
    #   This element is relevant only if you provide a Lambda function in the
    #   `fulfillmentActivity`. If you return the intent to the client
    #   application, you can't specify this element.
    #
    #   <note markdown="1"> The `followUpPrompt` and `conclusionStatement` are mutually exclusive.
    #   You can specify only one.
    #
    #    </note>
    #
    # @option params [Types::CodeHook] :dialog_code_hook
    #   Specifies a Lambda function to invoke for each user input. You can
    #   invoke this Lambda function to personalize user interaction.
    #
    #   For example, suppose your bot determines that the user is John. Your
    #   Lambda function might retrieve John's information from a backend
    #   database and prepopulate some of the values. For example, if you find
    #   that John is gluten intolerant, you might set the corresponding intent
    #   slot, `GlutenIntolerant`, to true. You might find John's phone number
    #   and set the corresponding session attribute.
    #
    # @option params [Types::FulfillmentActivity] :fulfillment_activity
    #   Required. Describes how the intent is fulfilled. For example, after a
    #   user provides all of the information for a pizza order,
    #   `fulfillmentActivity` defines how the bot places an order with a local
    #   pizza store.
    #
    #   You might configure Amazon Lex to return all of the intent information
    #   to the client application, or direct it to invoke a Lambda function
    #   that can process the intent (for example, place an order with a
    #   pizzeria).
    #
    # @option params [String] :parent_intent_signature
    #   A unique identifier for the built-in intent to base this intent on. To
    #   find the signature for an intent, see [Standard Built-in Intents][1]
    #   in the *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #
    # @option params [String] :checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new intent, leave the `checksum` field blank. If you
    #   specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a intent, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If you
    #   don't specify the ` checksum` field, or if the checksum does not
    #   match the `$LATEST` version, you get a `PreconditionFailedException`
    #   exception.
    #
    # @option params [Boolean] :create_version
    #
    # @return [Types::PutIntentResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutIntentResponse#name #name} => String
    #   * {Types::PutIntentResponse#description #description} => String
    #   * {Types::PutIntentResponse#slots #slots} => Array&lt;Types::Slot&gt;
    #   * {Types::PutIntentResponse#sample_utterances #sample_utterances} => Array&lt;String&gt;
    #   * {Types::PutIntentResponse#confirmation_prompt #confirmation_prompt} => Types::Prompt
    #   * {Types::PutIntentResponse#rejection_statement #rejection_statement} => Types::Statement
    #   * {Types::PutIntentResponse#follow_up_prompt #follow_up_prompt} => Types::FollowUpPrompt
    #   * {Types::PutIntentResponse#conclusion_statement #conclusion_statement} => Types::Statement
    #   * {Types::PutIntentResponse#dialog_code_hook #dialog_code_hook} => Types::CodeHook
    #   * {Types::PutIntentResponse#fulfillment_activity #fulfillment_activity} => Types::FulfillmentActivity
    #   * {Types::PutIntentResponse#parent_intent_signature #parent_intent_signature} => String
    #   * {Types::PutIntentResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::PutIntentResponse#created_date #created_date} => Time
    #   * {Types::PutIntentResponse#version #version} => String
    #   * {Types::PutIntentResponse#checksum #checksum} => String
    #   * {Types::PutIntentResponse#create_version #create_version} => Boolean
    #
    #
    # @example Example: To create an intent
    #
    #   # This example shows how to create an intent for ordering pizzas.
    #
    #   resp = client.put_intent({
    #     name: "DocOrderPizza", 
    #     conclusion_statement: {
    #       messages: [
    #         {
    #           content: "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #       response_card: "foo", 
    #     }, 
    #     confirmation_prompt: {
    #       max_attempts: 1, 
    #       messages: [
    #         {
    #           content: "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     description: "Order a pizza from a local pizzeria.", 
    #     fulfillment_activity: {
    #       type: "ReturnIntent", 
    #     }, 
    #     rejection_statement: {
    #       messages: [
    #         {
    #           content: "Ok, I'll cancel your order.", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "I cancelled your order.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     sample_utterances: [
    #       "Order me a pizza.", 
    #       "Order me a {Type} pizza.", 
    #       "I want a {Crust} crust {Type} pizza", 
    #       "I want a {Crust} crust {Type} pizza with {Sauce} sauce.", 
    #     ], 
    #     slots: [
    #       {
    #         name: "Type", 
    #         description: "The type of pizza to order.", 
    #         priority: 1, 
    #         sample_utterances: [
    #           "Get me a {Type} pizza.", 
    #           "A {Type} pizza please.", 
    #           "I'd like a {Type} pizza.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "What type of pizza would you like?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Vegie or cheese pizza?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "I can get you a vegie or a cheese pizza.", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         name: "Crust", 
    #         description: "The type of pizza crust to order.", 
    #         priority: 2, 
    #         sample_utterances: [
    #           "Make it a {Crust} crust.", 
    #           "I'd like a {Crust} crust.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaCrustType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "What type of crust would you like?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Thick or thin crust?", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         name: "Sauce", 
    #         description: "The type of sauce to use on the pizza.", 
    #         priority: 3, 
    #         sample_utterances: [
    #           "Make it {Sauce} sauce.", 
    #           "I'd like {Sauce} sauce.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaSauceType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "White or red sauce?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Garlic or tomato sauce?", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "$LATEST", 
    #     name: "DocOrderPizza", 
    #     checksum: "ca9bc13d-afc8-4706-bbaf-091f7a5935d6", 
    #     conclusion_statement: {
    #       messages: [
    #         {
    #           content: "All right, I ordered  you a {Crust} crust {Type} pizza with {Sauce} sauce.", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "OK, your {Crust} crust {Type} pizza with {Sauce} sauce is on the way.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #       response_card: "foo", 
    #     }, 
    #     confirmation_prompt: {
    #       max_attempts: 1, 
    #       messages: [
    #         {
    #           content: "Should I order  your {Crust} crust {Type} pizza with {Sauce} sauce?", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     created_date: Time.parse(1494359783.453), 
    #     description: "Order a pizza from a local pizzeria.", 
    #     fulfillment_activity: {
    #       type: "ReturnIntent", 
    #     }, 
    #     last_updated_date: Time.parse(1494359783.453), 
    #     rejection_statement: {
    #       messages: [
    #         {
    #           content: "Ok, I'll cancel your order.", 
    #           content_type: "PlainText", 
    #         }, 
    #         {
    #           content: "I cancelled your order.", 
    #           content_type: "PlainText", 
    #         }, 
    #       ], 
    #     }, 
    #     sample_utterances: [
    #       "Order me a pizza.", 
    #       "Order me a {Type} pizza.", 
    #       "I want a {Crust} crust {Type} pizza", 
    #       "I want a {Crust} crust {Type} pizza with {Sauce} sauce.", 
    #     ], 
    #     slots: [
    #       {
    #         name: "Sauce", 
    #         description: "The type of sauce to use on the pizza.", 
    #         priority: 3, 
    #         sample_utterances: [
    #           "Make it {Sauce} sauce.", 
    #           "I'd like {Sauce} sauce.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaSauceType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "White or red sauce?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Garlic or tomato sauce?", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         name: "Type", 
    #         description: "The type of pizza to order.", 
    #         priority: 1, 
    #         sample_utterances: [
    #           "Get me a {Type} pizza.", 
    #           "A {Type} pizza please.", 
    #           "I'd like a {Type} pizza.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "What type of pizza would you like?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Vegie or cheese pizza?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "I can get you a vegie or a cheese pizza.", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #       {
    #         name: "Crust", 
    #         description: "The type of pizza crust to order.", 
    #         priority: 2, 
    #         sample_utterances: [
    #           "Make it a {Crust} crust.", 
    #           "I'd like a {Crust} crust.", 
    #         ], 
    #         slot_constraint: "Required", 
    #         slot_type: "DocPizzaCrustType", 
    #         slot_type_version: "$LATEST", 
    #         value_elicitation_prompt: {
    #           max_attempts: 1, 
    #           messages: [
    #             {
    #               content: "What type of crust would you like?", 
    #               content_type: "PlainText", 
    #             }, 
    #             {
    #               content: "Thick or thin crust?", 
    #               content_type: "PlainText", 
    #             }, 
    #           ], 
    #         }, 
    #       }, 
    #     ], 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_intent({
    #     name: "IntentName", # required
    #     description: "Description",
    #     slots: [
    #       {
    #         name: "SlotName", # required
    #         description: "Description",
    #         slot_constraint: "Required", # required, accepts Required, Optional
    #         slot_type: "CustomOrBuiltinSlotTypeName",
    #         slot_type_version: "Version",
    #         value_elicitation_prompt: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #               content: "ContentString", # required
    #               group_number: 1,
    #             },
    #           ],
    #           max_attempts: 1, # required
    #           response_card: "ResponseCard",
    #         },
    #         priority: 1,
    #         sample_utterances: ["Utterance"],
    #         response_card: "ResponseCard",
    #       },
    #     ],
    #     sample_utterances: ["Utterance"],
    #     confirmation_prompt: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #           content: "ContentString", # required
    #           group_number: 1,
    #         },
    #       ],
    #       max_attempts: 1, # required
    #       response_card: "ResponseCard",
    #     },
    #     rejection_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #           content: "ContentString", # required
    #           group_number: 1,
    #         },
    #       ],
    #       response_card: "ResponseCard",
    #     },
    #     follow_up_prompt: {
    #       prompt: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #             content: "ContentString", # required
    #             group_number: 1,
    #           },
    #         ],
    #         max_attempts: 1, # required
    #         response_card: "ResponseCard",
    #       },
    #       rejection_statement: { # required
    #         messages: [ # required
    #           {
    #             content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #             content: "ContentString", # required
    #             group_number: 1,
    #           },
    #         ],
    #         response_card: "ResponseCard",
    #       },
    #     },
    #     conclusion_statement: {
    #       messages: [ # required
    #         {
    #           content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #           content: "ContentString", # required
    #           group_number: 1,
    #         },
    #       ],
    #       response_card: "ResponseCard",
    #     },
    #     dialog_code_hook: {
    #       uri: "LambdaARN", # required
    #       message_version: "MessageVersion", # required
    #     },
    #     fulfillment_activity: {
    #       type: "ReturnIntent", # required, accepts ReturnIntent, CodeHook
    #       code_hook: {
    #         uri: "LambdaARN", # required
    #         message_version: "MessageVersion", # required
    #       },
    #     },
    #     parent_intent_signature: "BuiltinIntentSignature",
    #     checksum: "String",
    #     create_version: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.slots #=> Array
    #   resp.slots[0].name #=> String
    #   resp.slots[0].description #=> String
    #   resp.slots[0].slot_constraint #=> String, one of "Required", "Optional"
    #   resp.slots[0].slot_type #=> String
    #   resp.slots[0].slot_type_version #=> String
    #   resp.slots[0].value_elicitation_prompt.messages #=> Array
    #   resp.slots[0].value_elicitation_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.slots[0].value_elicitation_prompt.messages[0].content #=> String
    #   resp.slots[0].value_elicitation_prompt.messages[0].group_number #=> Integer
    #   resp.slots[0].value_elicitation_prompt.max_attempts #=> Integer
    #   resp.slots[0].value_elicitation_prompt.response_card #=> String
    #   resp.slots[0].priority #=> Integer
    #   resp.slots[0].sample_utterances #=> Array
    #   resp.slots[0].sample_utterances[0] #=> String
    #   resp.slots[0].response_card #=> String
    #   resp.sample_utterances #=> Array
    #   resp.sample_utterances[0] #=> String
    #   resp.confirmation_prompt.messages #=> Array
    #   resp.confirmation_prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.confirmation_prompt.messages[0].content #=> String
    #   resp.confirmation_prompt.messages[0].group_number #=> Integer
    #   resp.confirmation_prompt.max_attempts #=> Integer
    #   resp.confirmation_prompt.response_card #=> String
    #   resp.rejection_statement.messages #=> Array
    #   resp.rejection_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.rejection_statement.messages[0].content #=> String
    #   resp.rejection_statement.messages[0].group_number #=> Integer
    #   resp.rejection_statement.response_card #=> String
    #   resp.follow_up_prompt.prompt.messages #=> Array
    #   resp.follow_up_prompt.prompt.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.follow_up_prompt.prompt.messages[0].content #=> String
    #   resp.follow_up_prompt.prompt.messages[0].group_number #=> Integer
    #   resp.follow_up_prompt.prompt.max_attempts #=> Integer
    #   resp.follow_up_prompt.prompt.response_card #=> String
    #   resp.follow_up_prompt.rejection_statement.messages #=> Array
    #   resp.follow_up_prompt.rejection_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.follow_up_prompt.rejection_statement.messages[0].content #=> String
    #   resp.follow_up_prompt.rejection_statement.messages[0].group_number #=> Integer
    #   resp.follow_up_prompt.rejection_statement.response_card #=> String
    #   resp.conclusion_statement.messages #=> Array
    #   resp.conclusion_statement.messages[0].content_type #=> String, one of "PlainText", "SSML", "CustomPayload"
    #   resp.conclusion_statement.messages[0].content #=> String
    #   resp.conclusion_statement.messages[0].group_number #=> Integer
    #   resp.conclusion_statement.response_card #=> String
    #   resp.dialog_code_hook.uri #=> String
    #   resp.dialog_code_hook.message_version #=> String
    #   resp.fulfillment_activity.type #=> String, one of "ReturnIntent", "CodeHook"
    #   resp.fulfillment_activity.code_hook.uri #=> String
    #   resp.fulfillment_activity.code_hook.message_version #=> String
    #   resp.parent_intent_signature #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.checksum #=> String
    #   resp.create_version #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutIntent AWS API Documentation
    #
    # @overload put_intent(params = {})
    # @param [Hash] params ({})
    def put_intent(params = {}, options = {})
      req = build_request(:put_intent, params)
      req.send_request(options)
    end

    # Creates a custom slot type or replaces an existing custom slot type.
    #
    # To create a custom slot type, specify a name for the slot type and a
    # set of enumeration values, which are the values that a slot of this
    # type can assume. For more information, see how-it-works.
    #
    # If you specify the name of an existing slot type, the fields in the
    # request replace the existing values in the `$LATEST` version of the
    # slot type. Amazon Lex removes the fields that you don't provide in
    # the request. If you don't specify required fields, Amazon Lex throws
    # an exception. When you update the `$LATEST` version of a slot type, if
    # a bot uses the `$LATEST` version of an intent that contains the slot
    # type, the bot's `status` field is set to `NOT_BUILT`.
    #
    # This operation requires permissions for the `lex:PutSlotType` action.
    #
    # @option params [required, String] :name
    #   The name of the slot type. The name is *not* case sensitive.
    #
    #   The name can't match a built-in slot type name, or a built-in slot
    #   type name with "AMAZON." removed. For example, because there is a
    #   built-in slot type called `AMAZON.DATE`, you can't create a custom
    #   slot type called `DATE`.
    #
    #   For a list of built-in slot types, see [Slot Type Reference][1] in the
    #   *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference
    #
    # @option params [String] :description
    #   A description of the slot type.
    #
    # @option params [Array<Types::EnumerationValue>] :enumeration_values
    #   A list of `EnumerationValue` objects that defines the values that the
    #   slot type can take. Each value can have a list of `synonyms`, which
    #   are additional values that help train the machine learning model about
    #   the values that it resolves for a slot.
    #
    #   When Amazon Lex resolves a slot value, it generates a resolution list
    #   that contains up to five possible values for the slot. If you are
    #   using a Lambda function, this resolution list is passed to the
    #   function. If you are not using a Lambda function you can choose to
    #   return the value that the user entered or the first value in the
    #   resolution list as the slot value. The `valueSelectionStrategy` field
    #   indicates the option to use.
    #
    # @option params [String] :checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new slot type, leave the `checksum` field blank. If
    #   you specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a slot type, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If you
    #   don't specify the ` checksum` field, or if the checksum does not
    #   match the `$LATEST` version, you get a `PreconditionFailedException`
    #   exception.
    #
    # @option params [String] :value_selection_strategy
    #   Determines the slot resolution strategy that Amazon Lex uses to return
    #   slot type values. The field can be set to one of the following values:
    #
    #   * `ORIGINAL_VALUE` - Returns the value entered by the user, if the
    #     user value is similar to the slot value.
    #
    #   * `TOP_RESOLUTION` - If there is a resolution list for the slot,
    #     return the first value in the resolution list as the slot type
    #     value. If there is no resolution list, null is returned.
    #
    #   If you don't specify the `valueSelectionStrategy`, the default is
    #   `ORIGINAL_VALUE`.
    #
    # @option params [Boolean] :create_version
    #
    # @return [Types::PutSlotTypeResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::PutSlotTypeResponse#name #name} => String
    #   * {Types::PutSlotTypeResponse#description #description} => String
    #   * {Types::PutSlotTypeResponse#enumeration_values #enumeration_values} => Array&lt;Types::EnumerationValue&gt;
    #   * {Types::PutSlotTypeResponse#last_updated_date #last_updated_date} => Time
    #   * {Types::PutSlotTypeResponse#created_date #created_date} => Time
    #   * {Types::PutSlotTypeResponse#version #version} => String
    #   * {Types::PutSlotTypeResponse#checksum #checksum} => String
    #   * {Types::PutSlotTypeResponse#value_selection_strategy #value_selection_strategy} => String
    #   * {Types::PutSlotTypeResponse#create_version #create_version} => Boolean
    #
    #
    # @example Example: To Create a Slot Type
    #
    #   # This example shows how to create a slot type that describes pizza sauces.
    #
    #   resp = client.put_slot_type({
    #     name: "PizzaSauceType", 
    #     description: "Available pizza sauces", 
    #     enumeration_values: [
    #       {
    #         value: "red", 
    #       }, 
    #       {
    #         value: "white", 
    #       }, 
    #     ], 
    #   })
    #
    #   resp.to_h outputs the following:
    #   {
    #     version: "$LATEST", 
    #     name: "DocPizzaSauceType", 
    #     checksum: "cfd00ed1-775d-4357-947c-aca7e73b44ba", 
    #     created_date: Time.parse(1494356442.23), 
    #     description: "Available pizza sauces", 
    #     enumeration_values: [
    #       {
    #         value: "red", 
    #       }, 
    #       {
    #         value: "white", 
    #       }, 
    #     ], 
    #     last_updated_date: Time.parse(1494356442.23), 
    #   }
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_slot_type({
    #     name: "SlotTypeName", # required
    #     description: "Description",
    #     enumeration_values: [
    #       {
    #         value: "Value", # required
    #         synonyms: ["Value"],
    #       },
    #     ],
    #     checksum: "String",
    #     value_selection_strategy: "ORIGINAL_VALUE", # accepts ORIGINAL_VALUE, TOP_RESOLUTION
    #     create_version: false,
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.description #=> String
    #   resp.enumeration_values #=> Array
    #   resp.enumeration_values[0].value #=> String
    #   resp.enumeration_values[0].synonyms #=> Array
    #   resp.enumeration_values[0].synonyms[0] #=> String
    #   resp.last_updated_date #=> Time
    #   resp.created_date #=> Time
    #   resp.version #=> String
    #   resp.checksum #=> String
    #   resp.value_selection_strategy #=> String, one of "ORIGINAL_VALUE", "TOP_RESOLUTION"
    #   resp.create_version #=> Boolean
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutSlotType AWS API Documentation
    #
    # @overload put_slot_type(params = {})
    # @param [Hash] params ({})
    def put_slot_type(params = {}, options = {})
      req = build_request(:put_slot_type, params)
      req.send_request(options)
    end

    # Starts a job to import a resource to Amazon Lex.
    #
    # @option params [required, String, IO] :payload
    #   A zip archive in binary format. The archive should contain one file, a
    #   JSON file containing the resource to import. The resource should match
    #   the type specified in the `resourceType` field.
    #
    # @option params [required, String] :resource_type
    #   Specifies the type of resource to export. Each resource also exports
    #   any resources that it depends on.
    #
    #   * A bot exports dependent intents.
    #
    #   * An intent exports dependent slot types.
    #
    # @option params [required, String] :merge_strategy
    #   Specifies the action that the `StartImport` operation should take when
    #   there is an existing resource with the same name.
    #
    #   * FAIL\_ON\_CONFLICT - The import operation is stopped on the first
    #     conflict between a resource in the import file and an existing
    #     resource. The name of the resource causing the conflict is in the
    #     `failureReason` field of the response to the `GetImport` operation.
    #
    #     OVERWRITE\_LATEST - The import operation proceeds even if there is a
    #     conflict with an existing resource. The $LASTEST version of the
    #     existing resource is overwritten with the data from the import file.
    #
    # @return [Types::StartImportResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
    #
    #   * {Types::StartImportResponse#name #name} => String
    #   * {Types::StartImportResponse#resource_type #resource_type} => String
    #   * {Types::StartImportResponse#merge_strategy #merge_strategy} => String
    #   * {Types::StartImportResponse#import_id #import_id} => String
    #   * {Types::StartImportResponse#import_status #import_status} => String
    #   * {Types::StartImportResponse#created_date #created_date} => Time
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import({
    #     payload: "data", # required
    #     resource_type: "BOT", # required, accepts BOT, INTENT, SLOT_TYPE
    #     merge_strategy: "OVERWRITE_LATEST", # required, accepts OVERWRITE_LATEST, FAIL_ON_CONFLICT
    #   })
    #
    # @example Response structure
    #
    #   resp.name #=> String
    #   resp.resource_type #=> String, one of "BOT", "INTENT", "SLOT_TYPE"
    #   resp.merge_strategy #=> String, one of "OVERWRITE_LATEST", "FAIL_ON_CONFLICT"
    #   resp.import_id #=> String
    #   resp.import_status #=> String, one of "IN_PROGRESS", "COMPLETE", "FAILED"
    #   resp.created_date #=> Time
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/StartImport AWS API Documentation
    #
    # @overload start_import(params = {})
    # @param [Hash] params ({})
    def start_import(params = {}, options = {})
      req = build_request(:start_import, params)
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
      context[:gem_name] = 'aws-sdk-lexmodelbuildingservice'
      context[:gem_version] = '1.9.0'
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
