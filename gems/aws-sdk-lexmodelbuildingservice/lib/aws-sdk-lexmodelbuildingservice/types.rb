# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexModelBuildingService
  module Types

    # Provides information about a bot alias.
    #
    # @!attribute [rw] name
    #   The name of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the Amazon Lex bot to which the alias points.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot to which the alias points.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the bot alias was updated. When you create a resource,
    #   the creation date and last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the bot alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] checksum
    #   Checksum of the bot alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/BotAliasMetadata AWS API Documentation
    #
    class BotAliasMetadata < Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :last_updated_date,
      :created_date,
      :checksum)
      include Aws::Structure
    end

    # Represents an association between an Amazon Lex bot and an external
    # messaging platform.
    #
    # @!attribute [rw] name
    #   The name of the association between the bot and the channel.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A text description of the association you are creating.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   An alias pointing to the specific version of the Amazon Lex bot to
    #   which this association is being made.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot to which this association is being
    #   made.
    #
    #   <note markdown="1"> Currently, Amazon Lex supports associations with Facebook and Slack,
    #   and Twilio.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the association between the Amazon Lex bot and the
    #   channel was created.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   Specifies the type of association by indicating the type of channel
    #   being established between the Amazon Lex bot and the external
    #   messaging platform.
    #   @return [String]
    #
    # @!attribute [rw] bot_configuration
    #   Provides information necessary to communicate with the messaging
    #   platform.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the bot channel.
    #
    #   * `CREATED` - The channel has been created and is ready for use.
    #
    #   * `IN_PROGRESS` - Channel creation is in progress.
    #
    #   * `FAILED` - There was an error creating the channel. For
    #     information about the reason for the failure, see the
    #     `failureReason` field.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `status` is `FAILED`, Amazon Lex provides the reason that it
    #   failed to create the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/BotChannelAssociation AWS API Documentation
    #
    class BotChannelAssociation < Struct.new(
      :name,
      :description,
      :bot_alias,
      :bot_name,
      :created_date,
      :type,
      :bot_configuration,
      :status,
      :failure_reason)
      include Aws::Structure
    end

    # Provides information about a bot. .
    #
    # @!attribute [rw] name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the bot.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the bot was updated. When you create a bot, the
    #   creation date and last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the bot was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the bot. For a new bot, the version is always
    #   `$LATEST`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/BotMetadata AWS API Documentation
    #
    class BotMetadata < Struct.new(
      :name,
      :description,
      :status,
      :last_updated_date,
      :created_date,
      :version)
      include Aws::Structure
    end

    # Provides metadata for a built-in intent.
    #
    # @!attribute [rw] signature
    #   A unique identifier for the built-in intent. To find the signature
    #   for an intent, see [Standard Built-in Intents][1] in the *Alexa
    #   Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #   @return [String]
    #
    # @!attribute [rw] supported_locales
    #   A list of identifiers for the locales that the intent supports.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/BuiltinIntentMetadata AWS API Documentation
    #
    class BuiltinIntentMetadata < Struct.new(
      :signature,
      :supported_locales)
      include Aws::Structure
    end

    # Provides information about a slot used in a built-in intent.
    #
    # @!attribute [rw] name
    #   A list of the slots defined for the intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/BuiltinIntentSlot AWS API Documentation
    #
    class BuiltinIntentSlot < Struct.new(
      :name)
      include Aws::Structure
    end

    # Provides information about a built in slot type.
    #
    # @!attribute [rw] signature
    #   A unique identifier for the built-in slot type. To find the
    #   signature for a slot type, see [Slot Type Reference][1] in the
    #   *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference
    #   @return [String]
    #
    # @!attribute [rw] supported_locales
    #   A list of target locales for the slot.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/BuiltinSlotTypeMetadata AWS API Documentation
    #
    class BuiltinSlotTypeMetadata < Struct.new(
      :signature,
      :supported_locales)
      include Aws::Structure
    end

    # Specifies a Lambda function that verifies requests to a bot or
    # fulfills the user's request to a bot..
    #
    # @note When making an API call, you may pass CodeHook
    #   data as a hash:
    #
    #       {
    #         uri: "LambdaARN", # required
    #         message_version: "MessageVersion", # required
    #       }
    #
    # @!attribute [rw] uri
    #   The Amazon Resource Name (ARN) of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] message_version
    #   The version of the request-response that you want Amazon Lex to use
    #   to invoke your Lambda function. For more information, see
    #   using-lambda.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CodeHook AWS API Documentation
    #
    class CodeHook < Struct.new(
      :uri,
      :message_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBotVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotName", # required
    #         checksum: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot that you want to create a new version of. The
    #   name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Identifies a specific revision of the `$LATEST` version of the bot.
    #   If you specify a checksum and the `$LATEST` version of the bot has a
    #   different checksum, a `PreconditionFailedException` exception is
    #   returned and Amazon Lex doesn't publish a new version. If you
    #   don't specify a checksum, Amazon Lex publishes the `$LATEST`
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateBotVersionRequest AWS API Documentation
    #
    class CreateBotVersionRequest < Struct.new(
      :name,
      :checksum)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] intents
    #   An array of `Intent` objects. For more information, see PutBot.
    #   @return [Array<Types::Intent>]
    #
    # @!attribute [rw] clarification_prompt
    #   The message that Amazon Lex uses when it doesn't understand the
    #   user's request. For more information, see PutBot.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] abort_statement
    #   The message that Amazon Lex uses to abort a conversation. For more
    #   information, see PutBot.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] status
    #   When you send a request to create or update a bot, Amazon Lex sets
    #   the `status` response element to `BUILDING`. After Amazon Lex builds
    #   the bot, it sets `status` to `READY`. If Amazon Lex can't build the
    #   bot, it sets `status` to `FAILED`. Amazon Lex returns the reason for
    #   the failure in the `failureReason` response element.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `status` is `FAILED`, Amazon Lex provides the reason that it
    #   failed to build the bot.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date when the `$LATEST` version of this bot was updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date when the bot version was created.
    #   @return [Time]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The maximum time in seconds that Amazon Lex retains the data
    #   gathered in a conversation. For more information, see PutBot.
    #   @return [Integer]
    #
    # @!attribute [rw] voice_id
    #   The Amazon Polly voice ID that Amazon Lex uses for voice
    #   interactions with the user.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum identifying the version of the bot that was created.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   Specifies the target locale for the bot.
    #   @return [String]
    #
    # @!attribute [rw] child_directed
    #   For each Amazon Lex bot created with the Amazon Lex Model Building
    #   Service, you must specify whether your use of Amazon Lex is related
    #   to a website, program, or other application that is directed or
    #   targeted, in whole or in part, to children under age 13 and subject
    #   to the Children's Online Privacy Protection Act (COPPA) by
    #   specifying `true` or `false` in the `childDirected` field. By
    #   specifying `true` in the `childDirected` field, you confirm that
    #   your use of Amazon Lex **is** related to a website, program, or
    #   other application that is directed or targeted, in whole or in part,
    #   to children under age 13 and subject to COPPA. By specifying `false`
    #   in the `childDirected` field, you confirm that your use of Amazon
    #   Lex **is not** related to a website, program, or other application
    #   that is directed or targeted, in whole or in part, to children under
    #   age 13 and subject to COPPA. You may not specify a default value for
    #   the `childDirected` field that does not accurately reflect whether
    #   your use of Amazon Lex is related to a website, program, or other
    #   application that is directed or targeted, in whole or in part, to
    #   children under age 13 and subject to COPPA.
    #
    #   If your use of Amazon Lex relates to a website, program, or other
    #   application that is directed in whole or in part, to children under
    #   age 13, you must obtain any required verifiable parental consent
    #   under COPPA. For information regarding the use of Amazon Lex in
    #   connection with websites, programs, or other applications that are
    #   directed or targeted, in whole or in part, to children under age 13,
    #   see the [Amazon Lex FAQ.][1]
    #
    #
    #
    #   [1]: https://aws.amazon.com/lex/faqs#data-security
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateBotVersionResponse AWS API Documentation
    #
    class CreateBotVersionResponse < Struct.new(
      :name,
      :description,
      :intents,
      :clarification_prompt,
      :abort_statement,
      :status,
      :failure_reason,
      :last_updated_date,
      :created_date,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :version,
      :locale,
      :child_directed)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIntentVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "IntentName", # required
    #         checksum: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the intent that you want to create a new version of. The
    #   name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the `$LATEST` version of the intent that should be used
    #   to create the new version. If you specify a checksum and the
    #   `$LATEST` version of the intent has a different checksum, Amazon Lex
    #   returns a `PreconditionFailedException` exception and doesn't
    #   publish a new version. If you don't specify a checksum, Amazon Lex
    #   publishes the `$LATEST` version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateIntentVersionRequest AWS API Documentation
    #
    class CreateIntentVersionRequest < Struct.new(
      :name,
      :checksum)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   An array of slot types that defines the information required to
    #   fulfill the intent.
    #   @return [Array<Types::Slot>]
    #
    # @!attribute [rw] sample_utterances
    #   An array of sample utterances configured for the intent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] confirmation_prompt
    #   If defined, the prompt that Amazon Lex uses to confirm the user's
    #   intent before fulfilling it.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] rejection_statement
    #   If the user answers "no" to the question defined in
    #   `confirmationPrompt`, Amazon Lex responds with this statement to
    #   acknowledge that the intent was canceled.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] follow_up_prompt
    #   If defined, Amazon Lex uses this prompt to solicit additional user
    #   activity after the intent is fulfilled.
    #   @return [Types::FollowUpPrompt]
    #
    # @!attribute [rw] conclusion_statement
    #   After the Lambda function specified in the `fulfillmentActivity`
    #   field fulfills the intent, Amazon Lex conveys this statement to the
    #   user.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] dialog_code_hook
    #   If defined, Amazon Lex invokes this Lambda function for each user
    #   input.
    #   @return [Types::CodeHook]
    #
    # @!attribute [rw] fulfillment_activity
    #   Describes how the intent is fulfilled.
    #   @return [Types::FulfillmentActivity]
    #
    # @!attribute [rw] parent_intent_signature
    #   A unique identifier for a built-in intent.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the intent was updated.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the intent was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version number assigned to the new version of the intent.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the intent version created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateIntentVersionResponse AWS API Documentation
    #
    class CreateIntentVersionResponse < Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :last_updated_date,
      :created_date,
      :version,
      :checksum)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSlotTypeVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "SlotTypeName", # required
    #         checksum: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the slot type that you want to create a new version for.
    #   The name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum for the `$LATEST` version of the slot type that you want to
    #   publish. If you specify a checksum and the `$LATEST` version of the
    #   slot type has a different checksum, Amazon Lex returns a
    #   `PreconditionFailedException` exception and doesn't publish the new
    #   version. If you don't specify a checksum, Amazon Lex publishes the
    #   `$LATEST` version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateSlotTypeVersionRequest AWS API Documentation
    #
    class CreateSlotTypeVersionRequest < Struct.new(
      :name,
      :checksum)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] enumeration_values
    #   A list of `EnumerationValue` objects that defines the values that
    #   the slot type can take.
    #   @return [Array<Types::EnumerationValue>]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the slot type was updated. When you create a resource,
    #   the creation date and last update date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the slot type was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version assigned to the new slot type version.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the `$LATEST` version of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] value_selection_strategy
    #   The strategy that Amazon Lex uses to determine the value of the
    #   slot. For more information, see PutSlotType.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/CreateSlotTypeVersionResponse AWS API Documentation
    #
    class CreateSlotTypeVersionResponse < Struct.new(
      :name,
      :description,
      :enumeration_values,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :value_selection_strategy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotAliasRequest
    #   data as a hash:
    #
    #       {
    #         name: "AliasName", # required
    #         bot_name: "BotName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the alias to delete. The name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that the alias points to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotAliasRequest AWS API Documentation
    #
    class DeleteBotAliasRequest < Struct.new(
      :name,
      :bot_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotChannelAssociationRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotChannelName", # required
    #         bot_name: "BotName", # required
    #         bot_alias: "AliasName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the association. The name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   An alias that points to the specific version of the Amazon Lex bot
    #   to which this association is being made.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotChannelAssociationRequest AWS API Documentation
    #
    class DeleteBotChannelAssociationRequest < Struct.new(
      :name,
      :bot_name,
      :bot_alias)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot. The name is case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotRequest AWS API Documentation
    #
    class DeleteBotRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotName", # required
    #         version: "NumericalVersion", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the bot to delete. You cannot delete the `$LATEST`
    #   version of the bot. To delete the `$LATEST` version, use the
    #   DeleteBot operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteBotVersionRequest AWS API Documentation
    #
    class DeleteBotVersionRequest < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIntentRequest
    #   data as a hash:
    #
    #       {
    #         name: "IntentName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the intent. The name is case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteIntentRequest AWS API Documentation
    #
    class DeleteIntentRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIntentVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "IntentName", # required
    #         version: "NumericalVersion", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the intent to delete. You cannot delete the `$LATEST`
    #   version of the intent. To delete the `$LATEST` version, use the
    #   DeleteIntent operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteIntentVersionRequest AWS API Documentation
    #
    class DeleteIntentVersionRequest < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSlotTypeRequest
    #   data as a hash:
    #
    #       {
    #         name: "SlotTypeName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the slot type. The name is case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteSlotTypeRequest AWS API Documentation
    #
    class DeleteSlotTypeRequest < Struct.new(
      :name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSlotTypeVersionRequest
    #   data as a hash:
    #
    #       {
    #         name: "SlotTypeName", # required
    #         version: "NumericalVersion", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the slot type to delete. You cannot delete the
    #   `$LATEST` version of the slot type. To delete the `$LATEST` version,
    #   use the DeleteSlotType operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteSlotTypeVersionRequest AWS API Documentation
    #
    class DeleteSlotTypeVersionRequest < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUtterancesRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         user_id: "UserId", # required
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that stored the utterances.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The unique identifier for the user that made the utterances. This is
    #   the user ID that was sent in the [PostContent][1] or [PostText][2]
    #   operation request that contained the utterance.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html
    #   [2]: http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/DeleteUtterancesRequest AWS API Documentation
    #
    class DeleteUtterancesRequest < Struct.new(
      :bot_name,
      :user_id)
      include Aws::Structure
    end

    # Each slot type can have a set of values. Each enumeration value
    # represents a value the slot type can take.
    #
    # For example, a pizza ordering bot could have a slot type that
    # specifies the type of crust that the pizza should have. The slot type
    # could include the values
    #
    # * thick
    #
    # * thin
    #
    # * stuffed
    #
    # @note When making an API call, you may pass EnumerationValue
    #   data as a hash:
    #
    #       {
    #         value: "Value", # required
    #         synonyms: ["Value"],
    #       }
    #
    # @!attribute [rw] value
    #   The value of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] synonyms
    #   Additional values related to the slot type value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/EnumerationValue AWS API Documentation
    #
    class EnumerationValue < Struct.new(
      :value,
      :synonyms)
      include Aws::Structure
    end

    # A prompt for additional activity after an intent is fulfilled. For
    # example, after the `OrderPizza` intent is fulfilled, you might prompt
    # the user to find out whether the user wants to order drinks.
    #
    # @note When making an API call, you may pass FollowUpPrompt
    #   data as a hash:
    #
    #       {
    #         prompt: { # required
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
    #         rejection_statement: { # required
    #           messages: [ # required
    #             {
    #               content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #               content: "ContentString", # required
    #               group_number: 1,
    #             },
    #           ],
    #           response_card: "ResponseCard",
    #         },
    #       }
    #
    # @!attribute [rw] prompt
    #   Prompts for information from the user.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] rejection_statement
    #   If the user answers "no" to the question defined in the `prompt`
    #   field, Amazon Lex responds with this statement to acknowledge that
    #   the intent was canceled.
    #   @return [Types::Statement]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/FollowUpPrompt AWS API Documentation
    #
    class FollowUpPrompt < Struct.new(
      :prompt,
      :rejection_statement)
      include Aws::Structure
    end

    # Describes how the intent is fulfilled after the user provides all of
    # the information required for the intent. You can provide a Lambda
    # function to process the intent, or you can return the intent
    # information to the client application. We recommend that you use a
    # Lambda function so that the relevant logic lives in the Cloud and
    # limit the client-side code primarily to presentation. If you need to
    # update the logic, you only update the Lambda function; you don't need
    # to upgrade your client application.
    #
    # Consider the following examples:
    #
    # * In a pizza ordering application, after the user provides all of the
    #   information for placing an order, you use a Lambda function to place
    #   an order with a pizzeria.
    #
    # * In a gaming application, when a user says "pick up a rock," this
    #   information must go back to the client application so that it can
    #   perform the operation and update the graphics. In this case, you
    #   want Amazon Lex to return the intent data to the client.
    #
    # @note When making an API call, you may pass FulfillmentActivity
    #   data as a hash:
    #
    #       {
    #         type: "ReturnIntent", # required, accepts ReturnIntent, CodeHook
    #         code_hook: {
    #           uri: "LambdaARN", # required
    #           message_version: "MessageVersion", # required
    #         },
    #       }
    #
    # @!attribute [rw] type
    #   How the intent should be fulfilled, either by running a Lambda
    #   function or by returning the slot data to the client application.
    #   @return [String]
    #
    # @!attribute [rw] code_hook
    #   A description of the Lambda function that is run to fulfill the
    #   intent.
    #   @return [Types::CodeHook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/FulfillmentActivity AWS API Documentation
    #
    class FulfillmentActivity < Struct.new(
      :type,
      :code_hook)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotAliasRequest
    #   data as a hash:
    #
    #       {
    #         name: "AliasName", # required
    #         bot_name: "BotName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot alias. The name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAliasRequest AWS API Documentation
    #
    class GetBotAliasRequest < Struct.new(
      :name,
      :bot_name)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that the alias points to.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that the alias points to.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the bot alias was updated. When you create a resource,
    #   the creation date and the last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the bot alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] checksum
    #   Checksum of the bot alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAliasResponse AWS API Documentation
    #
    class GetBotAliasResponse < Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :last_updated_date,
      :created_date,
      :checksum)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotAliasesRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_contains: "AliasName",
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of aliases. If the
    #   response to this call is truncated, Amazon Lex returns a pagination
    #   token in the response. To fetch the next page of aliases, specify
    #   the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of aliases to return in the response. The default
    #   is 50. .
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Substring to match in bot alias names. An alias will be returned if
    #   any part of its name matches the substring. For example, "xyz"
    #   matches both "xyzabc" and "abcxyz."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAliasesRequest AWS API Documentation
    #
    class GetBotAliasesRequest < Struct.new(
      :bot_name,
      :next_token,
      :max_results,
      :name_contains)
      include Aws::Structure
    end

    # @!attribute [rw] bot_aliases
    #   An array of `BotAliasMetadata` objects, each describing a bot alias.
    #   @return [Array<Types::BotAliasMetadata>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching next page of aliases. If the
    #   response to this call is truncated, Amazon Lex returns a pagination
    #   token in the response. To fetch the next page of aliases, specify
    #   the pagination token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotAliasesResponse AWS API Documentation
    #
    class GetBotAliasesResponse < Struct.new(
      :bot_aliases,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotChannelAssociationRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotChannelName", # required
    #         bot_name: "BotName", # required
    #         bot_alias: "AliasName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the association between the bot and the channel. The
    #   name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   An alias pointing to the specific version of the Amazon Lex bot to
    #   which this association is being made.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociationRequest AWS API Documentation
    #
    class GetBotChannelAssociationRequest < Struct.new(
      :name,
      :bot_name,
      :bot_alias)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the association between the bot and the channel.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the association between the bot and the channel.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   An alias pointing to the specific version of the Amazon Lex bot to
    #   which this association is being made.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date that the association between the bot and the channel was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] type
    #   The type of the messaging platform.
    #   @return [String]
    #
    # @!attribute [rw] bot_configuration
    #   Provides information that the messaging platform needs to
    #   communicate with the Amazon Lex bot.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] status
    #   The status of the bot channel.
    #
    #   * `CREATED` - The channel has been created and is ready for use.
    #
    #   * `IN_PROGRESS` - Channel creation is in progress.
    #
    #   * `FAILED` - There was an error creating the channel. For
    #     information about the reason for the failure, see the
    #     `failureReason` field.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `status` is `FAILED`, Amazon Lex provides the reason that it
    #   failed to create the association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociationResponse AWS API Documentation
    #
    class GetBotChannelAssociationResponse < Struct.new(
      :name,
      :description,
      :bot_alias,
      :bot_name,
      :created_date,
      :type,
      :bot_configuration,
      :status,
      :failure_reason)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotChannelAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         bot_alias: "AliasNameOrListAll", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_contains: "BotChannelName",
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the Amazon Lex bot in the association.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias
    #   An alias pointing to the specific version of the Amazon Lex bot to
    #   which this association is being made.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of associations. If
    #   the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   associations, specify the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of associations to return in the response. The
    #   default is 50.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Substring to match in channel association names. An association will
    #   be returned if any part of its name matches the substring. For
    #   example, "xyz" matches both "xyzabc" and "abcxyz." To return
    #   all bot channel associations, use a hyphen ("-") as the
    #   `nameContains` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociationsRequest AWS API Documentation
    #
    class GetBotChannelAssociationsRequest < Struct.new(
      :bot_name,
      :bot_alias,
      :next_token,
      :max_results,
      :name_contains)
      include Aws::Structure
    end

    # @!attribute [rw] bot_channel_associations
    #   An array of objects, one for each association, that provides
    #   information about the Amazon Lex bot and its association with the
    #   channel.
    #   @return [Array<Types::BotChannelAssociation>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that fetches the next page of associations. If
    #   the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   associations, specify the pagination token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotChannelAssociationsResponse AWS API Documentation
    #
    class GetBotChannelAssociationsResponse < Struct.new(
      :bot_channel_associations,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotName", # required
    #         version_or_alias: "String", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot. The name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] version_or_alias
    #   The version or alias of the bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotRequest AWS API Documentation
    #
    class GetBotRequest < Struct.new(
      :name,
      :version_or_alias)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] intents
    #   An array of `intent` objects. For more information, see PutBot.
    #   @return [Array<Types::Intent>]
    #
    # @!attribute [rw] clarification_prompt
    #   The message Amazon Lex uses when it doesn't understand the user's
    #   request. For more information, see PutBot.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] abort_statement
    #   The message that Amazon Lex returns when the user elects to end the
    #   conversation without completing it. For more information, see
    #   PutBot.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] status
    #   The status of the bot. If the bot is ready to run, the status is
    #   `READY`. If there was a problem with building the bot, the status is
    #   `FAILED` and the `failureReason` explains why the bot did not build.
    #   If the bot was saved but not built, the status is `NOT BUILT`.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `status` is `FAILED`, Amazon Lex explains why it failed to build
    #   the bot.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the bot was updated. When you create a resource, the
    #   creation date and last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the bot was created.
    #   @return [Time]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The maximum time in seconds that Amazon Lex retains the data
    #   gathered in a conversation. For more information, see PutBot.
    #   @return [Integer]
    #
    # @!attribute [rw] voice_id
    #   The Amazon Polly voice ID that Amazon Lex uses for voice interaction
    #   with the user. For more information, see PutBot.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the bot used to identify a specific revision of the
    #   bot's `$LATEST` version.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the bot. For a new bot, the version is always
    #   `$LATEST`.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The target locale for the bot.
    #   @return [String]
    #
    # @!attribute [rw] child_directed
    #   For each Amazon Lex bot created with the Amazon Lex Model Building
    #   Service, you must specify whether your use of Amazon Lex is related
    #   to a website, program, or other application that is directed or
    #   targeted, in whole or in part, to children under age 13 and subject
    #   to the Children's Online Privacy Protection Act (COPPA) by
    #   specifying `true` or `false` in the `childDirected` field. By
    #   specifying `true` in the `childDirected` field, you confirm that
    #   your use of Amazon Lex **is** related to a website, program, or
    #   other application that is directed or targeted, in whole or in part,
    #   to children under age 13 and subject to COPPA. By specifying `false`
    #   in the `childDirected` field, you confirm that your use of Amazon
    #   Lex **is not** related to a website, program, or other application
    #   that is directed or targeted, in whole or in part, to children under
    #   age 13 and subject to COPPA. You may not specify a default value for
    #   the `childDirected` field that does not accurately reflect whether
    #   your use of Amazon Lex is related to a website, program, or other
    #   application that is directed or targeted, in whole or in part, to
    #   children under age 13 and subject to COPPA.
    #
    #   If your use of Amazon Lex relates to a website, program, or other
    #   application that is directed in whole or in part, to children under
    #   age 13, you must obtain any required verifiable parental consent
    #   under COPPA. For information regarding the use of Amazon Lex in
    #   connection with websites, programs, or other applications that are
    #   directed or targeted, in whole or in part, to children under age 13,
    #   see the [Amazon Lex FAQ.][1]
    #
    #
    #
    #   [1]: https://aws.amazon.com/lex/faqs#data-security
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotResponse AWS API Documentation
    #
    class GetBotResponse < Struct.new(
      :name,
      :description,
      :intents,
      :clarification_prompt,
      :abort_statement,
      :status,
      :failure_reason,
      :last_updated_date,
      :created_date,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :version,
      :locale,
      :child_directed)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotVersionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot for which versions should be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of bot versions. If
    #   the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   versions, specify the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bot versions to return in the response. The
    #   default is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotVersionsRequest AWS API Documentation
    #
    class GetBotVersionsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] bots
    #   An array of `BotMetadata` objects, one for each numbered version of
    #   the bot plus one for the `$LATEST` version.
    #   @return [Array<Types::BotMetadata>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of bot versions. If
    #   the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   versions, specify the pagination token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotVersionsResponse AWS API Documentation
    #
    class GetBotVersionsResponse < Struct.new(
      :bots,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBotsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_contains: "BotName",
    #       }
    #
    # @!attribute [rw] next_token
    #   A pagination token that fetches the next page of bots. If the
    #   response to this call is truncated, Amazon Lex returns a pagination
    #   token in the response. To fetch the next page of bots, specify the
    #   pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bots to return in the response that the
    #   request will return. The default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Substring to match in bot names. A bot will be returned if any part
    #   of its name matches the substring. For example, "xyz" matches both
    #   "xyzabc" and "abcxyz."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotsRequest AWS API Documentation
    #
    class GetBotsRequest < Struct.new(
      :next_token,
      :max_results,
      :name_contains)
      include Aws::Structure
    end

    # @!attribute [rw] bots
    #   An array of `botMetadata` objects, with one entry for each bot.
    #   @return [Array<Types::BotMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, it includes a pagination token that
    #   you can specify in your next request to fetch the next page of bots.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBotsResponse AWS API Documentation
    #
    class GetBotsResponse < Struct.new(
      :bots,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBuiltinIntentRequest
    #   data as a hash:
    #
    #       {
    #         signature: "BuiltinIntentSignature", # required
    #       }
    #
    # @!attribute [rw] signature
    #   The unique identifier for a built-in intent. To find the signature
    #   for an intent, see [Standard Built-in Intents][1] in the *Alexa
    #   Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntentRequest AWS API Documentation
    #
    class GetBuiltinIntentRequest < Struct.new(
      :signature)
      include Aws::Structure
    end

    # @!attribute [rw] signature
    #   The unique identifier for a built-in intent.
    #   @return [String]
    #
    # @!attribute [rw] supported_locales
    #   A list of locales that the intent supports.
    #   @return [Array<String>]
    #
    # @!attribute [rw] slots
    #   An array of `BuiltinIntentSlot` objects, one entry for each slot
    #   type in the intent.
    #   @return [Array<Types::BuiltinIntentSlot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntentResponse AWS API Documentation
    #
    class GetBuiltinIntentResponse < Struct.new(
      :signature,
      :supported_locales,
      :slots)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBuiltinIntentsRequest
    #   data as a hash:
    #
    #       {
    #         locale: "en-US", # accepts en-US, en-GB, de-DE
    #         signature_contains: "String",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] locale
    #   A list of locales that the intent supports.
    #   @return [String]
    #
    # @!attribute [rw] signature_contains
    #   Substring to match in built-in intent signatures. An intent will be
    #   returned if any part of its signature matches the substring. For
    #   example, "xyz" matches both "xyzabc" and "abcxyz." To find the
    #   signature for an intent, see [Standard Built-in Intents][1] in the
    #   *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that fetches the next page of intents. If this
    #   API call is truncated, Amazon Lex returns a pagination token in the
    #   response. To fetch the next page of intents, use the pagination
    #   token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of intents to return in the response. The default
    #   is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntentsRequest AWS API Documentation
    #
    class GetBuiltinIntentsRequest < Struct.new(
      :locale,
      :signature_contains,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] intents
    #   An array of `builtinIntentMetadata` objects, one for each intent in
    #   the response.
    #   @return [Array<Types::BuiltinIntentMetadata>]
    #
    # @!attribute [rw] next_token
    #   A pagination token that fetches the next page of intents. If the
    #   response to this API call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of intents,
    #   specify the pagination token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinIntentsResponse AWS API Documentation
    #
    class GetBuiltinIntentsResponse < Struct.new(
      :intents,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetBuiltinSlotTypesRequest
    #   data as a hash:
    #
    #       {
    #         locale: "en-US", # accepts en-US, en-GB, de-DE
    #         signature_contains: "String",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] locale
    #   A list of locales that the slot type supports.
    #   @return [String]
    #
    # @!attribute [rw] signature_contains
    #   Substring to match in built-in slot type signatures. A slot type
    #   will be returned if any part of its signature matches the substring.
    #   For example, "xyz" matches both "xyzabc" and "abcxyz."
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token that fetches the next page of slot types. If the
    #   response to this API call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of slot
    #   types, specify the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of slot types to return in the response. The
    #   default is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinSlotTypesRequest AWS API Documentation
    #
    class GetBuiltinSlotTypesRequest < Struct.new(
      :locale,
      :signature_contains,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] slot_types
    #   An array of `BuiltInSlotTypeMetadata` objects, one entry for each
    #   slot type returned.
    #   @return [Array<Types::BuiltinSlotTypeMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the response includes a pagination
    #   token that you can use in your next request to fetch the next page
    #   of slot types.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetBuiltinSlotTypesResponse AWS API Documentation
    #
    class GetBuiltinSlotTypesResponse < Struct.new(
      :slot_types,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExportRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         version: "NumericalVersion", # required
    #         resource_type: "BOT", # required, accepts BOT, INTENT, SLOT_TYPE
    #         export_type: "ALEXA_SKILLS_KIT", # required, accepts ALEXA_SKILLS_KIT, LEX
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot to export.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the bot to export.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource to export.
    #   @return [String]
    #
    # @!attribute [rw] export_type
    #   The format of the exported data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetExportRequest AWS API Documentation
    #
    class GetExportRequest < Struct.new(
      :name,
      :version,
      :resource_type,
      :export_type)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the bot being exported.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the bot being exported.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the exported resource.
    #   @return [String]
    #
    # @!attribute [rw] export_type
    #   The format of the exported data.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the export.
    #
    #   * `IN_PROGRESS` - The export is in progress.
    #
    #   * `READY` - The export is complete.
    #
    #   * `FAILED` - The export could not be completed.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `status` is `FAILED`, Amazon Lex provides the reason that it
    #   failed to export the resource.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   An S3 pre-signed URL that provides the location of the exported
    #   resource. The exported resource is a ZIP archive that contains the
    #   exported resource in JSON format. The structure of the archive may
    #   change. Your code should not rely on the archive structure.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetExportResponse AWS API Documentation
    #
    class GetExportResponse < Struct.new(
      :name,
      :version,
      :resource_type,
      :export_type,
      :export_status,
      :failure_reason,
      :url)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetImportRequest
    #   data as a hash:
    #
    #       {
    #         import_id: "String", # required
    #       }
    #
    # @!attribute [rw] import_id
    #   The identifier of the import job information to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetImportRequest AWS API Documentation
    #
    class GetImportRequest < Struct.new(
      :import_id)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name given to the import job.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource imported.
    #   @return [String]
    #
    # @!attribute [rw] merge_strategy
    #   The action taken when there was a conflict between an existing
    #   resource and a resource in the import file.
    #   @return [String]
    #
    # @!attribute [rw] import_id
    #   The identifier for the specific import job.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the import job. If the status is `FAILED`, you can get
    #   the reason for the failure from the `failureReason` field.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   A string that describes why an import job failed to complete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_date
    #   A timestamp for the date and time that the import job was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetImportResponse AWS API Documentation
    #
    class GetImportResponse < Struct.new(
      :name,
      :resource_type,
      :merge_strategy,
      :import_id,
      :import_status,
      :failure_reason,
      :created_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntentRequest
    #   data as a hash:
    #
    #       {
    #         name: "IntentName", # required
    #         version: "Version", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the intent. The name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentRequest AWS API Documentation
    #
    class GetIntentRequest < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   An array of intent slots configured for the intent.
    #   @return [Array<Types::Slot>]
    #
    # @!attribute [rw] sample_utterances
    #   An array of sample utterances configured for the intent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] confirmation_prompt
    #   If defined in the bot, Amazon Lex uses prompt to confirm the intent
    #   before fulfilling the user's request. For more information, see
    #   PutIntent.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] rejection_statement
    #   If the user answers "no" to the question defined in
    #   `confirmationPrompt`, Amazon Lex responds with this statement to
    #   acknowledge that the intent was canceled.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] follow_up_prompt
    #   If defined in the bot, Amazon Lex uses this prompt to solicit
    #   additional user activity after the intent is fulfilled. For more
    #   information, see PutIntent.
    #   @return [Types::FollowUpPrompt]
    #
    # @!attribute [rw] conclusion_statement
    #   After the Lambda function specified in the `fulfillmentActivity`
    #   element fulfills the intent, Amazon Lex conveys this statement to
    #   the user.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] dialog_code_hook
    #   If defined in the bot, Amazon Amazon Lex invokes this Lambda
    #   function for each user input. For more information, see PutIntent.
    #   @return [Types::CodeHook]
    #
    # @!attribute [rw] fulfillment_activity
    #   Describes how the intent is fulfilled. For more information, see
    #   PutIntent.
    #   @return [Types::FulfillmentActivity]
    #
    # @!attribute [rw] parent_intent_signature
    #   A unique identifier for a built-in intent.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the intent was updated. When you create a resource,
    #   the creation date and the last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the intent was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the intent.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentResponse AWS API Documentation
    #
    class GetIntentResponse < Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :last_updated_date,
      :created_date,
      :version,
      :checksum)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntentVersionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "IntentName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the intent for which versions should be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of intent versions. If
    #   the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   versions, specify the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of intent versions to return in the response. The
    #   default is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentVersionsRequest AWS API Documentation
    #
    class GetIntentVersionsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] intents
    #   An array of `IntentMetadata` objects, one for each numbered version
    #   of the intent plus one for the `$LATEST` version.
    #   @return [Array<Types::IntentMetadata>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of intent versions. If
    #   the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   versions, specify the pagination token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentVersionsResponse AWS API Documentation
    #
    class GetIntentVersionsResponse < Struct.new(
      :intents,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIntentsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_contains: "IntentName",
    #       }
    #
    # @!attribute [rw] next_token
    #   A pagination token that fetches the next page of intents. If the
    #   response to this API call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of intents,
    #   specify the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of intents to return in the response. The default
    #   is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Substring to match in intent names. An intent will be returned if
    #   any part of its name matches the substring. For example, "xyz"
    #   matches both "xyzabc" and "abcxyz."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentsRequest AWS API Documentation
    #
    class GetIntentsRequest < Struct.new(
      :next_token,
      :max_results,
      :name_contains)
      include Aws::Structure
    end

    # @!attribute [rw] intents
    #   An array of `Intent` objects. For more information, see PutBot.
    #   @return [Array<Types::IntentMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, the response includes a pagination
    #   token that you can specify in your next request to fetch the next
    #   page of intents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetIntentsResponse AWS API Documentation
    #
    class GetIntentsResponse < Struct.new(
      :intents,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSlotTypeRequest
    #   data as a hash:
    #
    #       {
    #         name: "SlotTypeName", # required
    #         version: "Version", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the slot type. The name is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the slot type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypeRequest AWS API Documentation
    #
    class GetSlotTypeRequest < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] enumeration_values
    #   A list of `EnumerationValue` objects that defines the values that
    #   the slot type can take.
    #   @return [Array<Types::EnumerationValue>]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the slot type was updated. When you create a resource,
    #   the creation date and last update date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the slot type was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the `$LATEST` version of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] value_selection_strategy
    #   The strategy that Amazon Lex uses to determine the value of the
    #   slot. For more information, see PutSlotType.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypeResponse AWS API Documentation
    #
    class GetSlotTypeResponse < Struct.new(
      :name,
      :description,
      :enumeration_values,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :value_selection_strategy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSlotTypeVersionsRequest
    #   data as a hash:
    #
    #       {
    #         name: "SlotTypeName", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the slot type for which versions should be returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of slot type versions.
    #   If the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   versions, specify the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of slot type versions to return in the response.
    #   The default is 10.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypeVersionsRequest AWS API Documentation
    #
    class GetSlotTypeVersionsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] slot_types
    #   An array of `SlotTypeMetadata` objects, one for each numbered
    #   version of the slot type plus one for the `$LATEST` version.
    #   @return [Array<Types::SlotTypeMetadata>]
    #
    # @!attribute [rw] next_token
    #   A pagination token for fetching the next page of slot type versions.
    #   If the response to this call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch the next page of
    #   versions, specify the pagination token in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypeVersionsResponse AWS API Documentation
    #
    class GetSlotTypeVersionsResponse < Struct.new(
      :slot_types,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSlotTypesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_contains: "SlotTypeName",
    #       }
    #
    # @!attribute [rw] next_token
    #   A pagination token that fetches the next page of slot types. If the
    #   response to this API call is truncated, Amazon Lex returns a
    #   pagination token in the response. To fetch next page of slot types,
    #   specify the pagination token in the next request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of slot types to return in the response. The
    #   default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Substring to match in slot type names. A slot type will be returned
    #   if any part of its name matches the substring. For example, "xyz"
    #   matches both "xyzabc" and "abcxyz."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypesRequest AWS API Documentation
    #
    class GetSlotTypesRequest < Struct.new(
      :next_token,
      :max_results,
      :name_contains)
      include Aws::Structure
    end

    # @!attribute [rw] slot_types
    #   An array of objects, one for each slot type, that provides
    #   information such as the name of the slot type, the version, and a
    #   description.
    #   @return [Array<Types::SlotTypeMetadata>]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, it includes a pagination token that
    #   you can specify in your next request to fetch the next page of slot
    #   types.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetSlotTypesResponse AWS API Documentation
    #
    class GetSlotTypesResponse < Struct.new(
      :slot_types,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUtterancesViewRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "BotName", # required
    #         bot_versions: ["Version"], # required
    #         status_type: "Detected", # required, accepts Detected, Missed
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the bot for which utterance information should be
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] bot_versions
    #   An array of bot versions for which utterance information should be
    #   returned. The limit is 5 versions per request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status_type
    #   To return utterances that were recognized and handled,
    #   use`Detected`. To return utterances that were not recognized, use
    #   `Missed`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetUtterancesViewRequest AWS API Documentation
    #
    class GetUtterancesViewRequest < Struct.new(
      :bot_name,
      :bot_versions,
      :status_type)
      include Aws::Structure
    end

    # @!attribute [rw] bot_name
    #   The name of the bot for which utterance information was returned.
    #   @return [String]
    #
    # @!attribute [rw] utterances
    #   An array of UtteranceList objects, each containing a list of
    #   UtteranceData objects describing the utterances that were processed
    #   by your bot. The response contains a maximum of 100 `UtteranceData`
    #   objects for each version.
    #   @return [Array<Types::UtteranceList>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/GetUtterancesViewResponse AWS API Documentation
    #
    class GetUtterancesViewResponse < Struct.new(
      :bot_name,
      :utterances)
      include Aws::Structure
    end

    # Identifies the specific version of an intent.
    #
    # @note When making an API call, you may pass Intent
    #   data as a hash:
    #
    #       {
    #         intent_name: "IntentName", # required
    #         intent_version: "Version", # required
    #       }
    #
    # @!attribute [rw] intent_name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] intent_version
    #   The version of the intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/Intent AWS API Documentation
    #
    class Intent < Struct.new(
      :intent_name,
      :intent_version)
      include Aws::Structure
    end

    # Provides information about an intent.
    #
    # @!attribute [rw] name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the intent was updated. When you create an intent, the
    #   creation date and last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the intent was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/IntentMetadata AWS API Documentation
    #
    class IntentMetadata < Struct.new(
      :name,
      :description,
      :last_updated_date,
      :created_date,
      :version)
      include Aws::Structure
    end

    # The message object that provides the message text and its type.
    #
    # @note When making an API call, you may pass Message
    #   data as a hash:
    #
    #       {
    #         content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #         content: "ContentString", # required
    #         group_number: 1,
    #       }
    #
    # @!attribute [rw] content_type
    #   The content type of the message string.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The text of the message.
    #   @return [String]
    #
    # @!attribute [rw] group_number
    #   Identifies the message group that the message belongs to. When a
    #   group is assigned to a message, Amazon Lex returns one message from
    #   each group in the response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/Message AWS API Documentation
    #
    class Message < Struct.new(
      :content_type,
      :content,
      :group_number)
      include Aws::Structure
    end

    # Obtains information from the user. To define a prompt, provide one or
    # more messages and specify the number of attempts to get information
    # from the user. If you provide more than one message, Amazon Lex
    # chooses one of the messages to use to prompt the user. For more
    # information, see how-it-works.
    #
    # @note When making an API call, you may pass Prompt
    #   data as a hash:
    #
    #       {
    #         messages: [ # required
    #           {
    #             content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #             content: "ContentString", # required
    #             group_number: 1,
    #           },
    #         ],
    #         max_attempts: 1, # required
    #         response_card: "ResponseCard",
    #       }
    #
    # @!attribute [rw] messages
    #   An array of objects, each of which provides a message string and its
    #   type. You can specify the message string in plain text or in Speech
    #   Synthesis Markup Language (SSML).
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] max_attempts
    #   The number of times to prompt the user for information.
    #   @return [Integer]
    #
    # @!attribute [rw] response_card
    #   A response card. Amazon Lex uses this prompt at runtime, in the
    #   `PostText` API response. It substitutes session attributes and slot
    #   values for placeholders in the response card. For more information,
    #   see ex-resp-card.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/Prompt AWS API Documentation
    #
    class Prompt < Struct.new(
      :messages,
      :max_attempts,
      :response_card)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBotAliasRequest
    #   data as a hash:
    #
    #       {
    #         name: "AliasName", # required
    #         description: "Description",
    #         bot_version: "Version", # required
    #         bot_name: "BotName", # required
    #         checksum: "String",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the alias. The name is *not* case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new bot alias, leave the `checksum` field blank.
    #   If you specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a bot alias, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If
    #   you don't specify the ` checksum` field, or if the checksum does
    #   not match the `$LATEST` version, you get a
    #   `PreconditionFailedException` exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBotAliasRequest AWS API Documentation
    #
    class PutBotAliasRequest < Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :checksum)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that the alias points to.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that the alias points to.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the bot alias was updated. When you create a resource,
    #   the creation date and the last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the bot alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] checksum
    #   The checksum for the current version of the alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBotAliasResponse AWS API Documentation
    #
    class PutBotAliasResponse < Struct.new(
      :name,
      :description,
      :bot_version,
      :bot_name,
      :last_updated_date,
      :created_date,
      :checksum)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutBotRequest
    #   data as a hash:
    #
    #       {
    #         name: "BotName", # required
    #         description: "Description",
    #         intents: [
    #           {
    #             intent_name: "IntentName", # required
    #             intent_version: "Version", # required
    #           },
    #         ],
    #         clarification_prompt: {
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
    #         abort_statement: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #               content: "ContentString", # required
    #               group_number: 1,
    #             },
    #           ],
    #           response_card: "ResponseCard",
    #         },
    #         idle_session_ttl_in_seconds: 1,
    #         voice_id: "String",
    #         checksum: "String",
    #         process_behavior: "SAVE", # accepts SAVE, BUILD
    #         locale: "en-US", # required, accepts en-US, en-GB, de-DE
    #         child_directed: false, # required
    #         create_version: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the bot. The name is *not* case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] intents
    #   An array of `Intent` objects. Each intent represents a command that
    #   a user can express. For example, a pizza ordering bot might support
    #   an OrderPizza intent. For more information, see how-it-works.
    #   @return [Array<Types::Intent>]
    #
    # @!attribute [rw] clarification_prompt
    #   When Amazon Lex doesn't understand the user's intent, it uses this
    #   message to get clarification. To specify how many times Amazon Lex
    #   should repeate the clarification prompt, use the `maxAttempts`
    #   field. If Amazon Lex still doesn't understand, it sends the message
    #   in the `abortStatement` field.
    #
    #   When you create a clarification prompt, make sure that it suggests
    #   the correct response from the user. for example, for a bot that
    #   orders pizza and drinks, you might create this clarification prompt:
    #   "What would you like to do? You can say 'Order a pizza' or
    #   'Order a drink.'"
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] abort_statement
    #   When Amazon Lex can't understand the user's input in context, it
    #   tries to elicit the information a few times. After that, Amazon Lex
    #   sends the message defined in `abortStatement` to the user, and then
    #   aborts the conversation. To set the number of retries, use the
    #   `valueElicitationPrompt` field for the slot type.
    #
    #   For example, in a pizza ordering bot, Amazon Lex might ask a user
    #   "What type of crust would you like?" If the user's response is
    #   not one of the expected responses (for example, "thin crust, "deep
    #   dish," etc.), Amazon Lex tries to elicit a correct response a few
    #   more times.
    #
    #   For example, in a pizza ordering application, `OrderPizza` might be
    #   one of the intents. This intent might require the `CrustType` slot.
    #   You specify the `valueElicitationPrompt` field when you create the
    #   `CrustType` slot.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The maximum time in seconds that Amazon Lex retains the data
    #   gathered in a conversation.
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
    #   `PutBot` operation request, Amazon Lex uses the default value. This
    #   is also true if the request replaces an existing bot.
    #
    #   The default is 300 seconds (5 minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] voice_id
    #   The Amazon Polly voice ID that you want Amazon Lex to use for voice
    #   interactions with the user. The locale configured for the voice must
    #   match the locale of the bot. For more information, see [Available
    #   Voices][1] in the *Amazon Polly Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/polly/latest/dg/voicelist.html
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new bot, leave the `checksum` field blank. If you
    #   specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a bot, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If
    #   you don't specify the ` checksum` field, or if the checksum does
    #   not match the `$LATEST` version, you get a
    #   `PreconditionFailedException` exception.
    #   @return [String]
    #
    # @!attribute [rw] process_behavior
    #   If you set the `processBehavior` element to `BUILD`, Amazon Lex
    #   builds the bot so that it can be run. If you set the element to
    #   `SAVE` Amazon Lex saves the bot, but doesn't build it.
    #
    #   If you don't specify this value, the default value is `BUILD`.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   Specifies the target locale for the bot. Any intent used in the bot
    #   must be compatible with the locale of the bot.
    #
    #   The default is `en-US`.
    #   @return [String]
    #
    # @!attribute [rw] child_directed
    #   For each Amazon Lex bot created with the Amazon Lex Model Building
    #   Service, you must specify whether your use of Amazon Lex is related
    #   to a website, program, or other application that is directed or
    #   targeted, in whole or in part, to children under age 13 and subject
    #   to the Children's Online Privacy Protection Act (COPPA) by
    #   specifying `true` or `false` in the `childDirected` field. By
    #   specifying `true` in the `childDirected` field, you confirm that
    #   your use of Amazon Lex **is** related to a website, program, or
    #   other application that is directed or targeted, in whole or in part,
    #   to children under age 13 and subject to COPPA. By specifying `false`
    #   in the `childDirected` field, you confirm that your use of Amazon
    #   Lex **is not** related to a website, program, or other application
    #   that is directed or targeted, in whole or in part, to children under
    #   age 13 and subject to COPPA. You may not specify a default value for
    #   the `childDirected` field that does not accurately reflect whether
    #   your use of Amazon Lex is related to a website, program, or other
    #   application that is directed or targeted, in whole or in part, to
    #   children under age 13 and subject to COPPA.
    #
    #   If your use of Amazon Lex relates to a website, program, or other
    #   application that is directed in whole or in part, to children under
    #   age 13, you must obtain any required verifiable parental consent
    #   under COPPA. For information regarding the use of Amazon Lex in
    #   connection with websites, programs, or other applications that are
    #   directed or targeted, in whole or in part, to children under age 13,
    #   see the [Amazon Lex FAQ.][1]
    #
    #
    #
    #   [1]: https://aws.amazon.com/lex/faqs#data-security
    #   @return [Boolean]
    #
    # @!attribute [rw] create_version
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBotRequest AWS API Documentation
    #
    class PutBotRequest < Struct.new(
      :name,
      :description,
      :intents,
      :clarification_prompt,
      :abort_statement,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :process_behavior,
      :locale,
      :child_directed,
      :create_version)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] intents
    #   An array of `Intent` objects. For more information, see PutBot.
    #   @return [Array<Types::Intent>]
    #
    # @!attribute [rw] clarification_prompt
    #   The prompts that Amazon Lex uses when it doesn't understand the
    #   user's intent. For more information, see PutBot.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] abort_statement
    #   The message that Amazon Lex uses to abort a conversation. For more
    #   information, see PutBot.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] status
    #   When you send a request to create a bot with `processBehavior` set
    #   to `BUILD`, Amazon Lex sets the `status` response element to
    #   `BUILDING`. After Amazon Lex builds the bot, it sets `status` to
    #   `READY`. If Amazon Lex can't build the bot, Amazon Lex sets
    #   `status` to `FAILED`. Amazon Lex returns the reason for the failure
    #   in the `failureReason` response element.
    #
    #   When you set `processBehavior`to `SAVE`, Amazon Lex sets the status
    #   code to `NOT BUILT`.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `status` is `FAILED`, Amazon Lex provides the reason that it
    #   failed to build the bot.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the bot was updated. When you create a resource, the
    #   creation date and last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the bot was created.
    #   @return [Time]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The maximum length of time that Amazon Lex retains the data gathered
    #   in a conversation. For more information, see PutBot.
    #   @return [Integer]
    #
    # @!attribute [rw] voice_id
    #   The Amazon Polly voice ID that Amazon Lex uses for voice interaction
    #   with the user. For more information, see PutBot.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the bot that you created.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the bot. For a new bot, the version is always
    #   `$LATEST`.
    #   @return [String]
    #
    # @!attribute [rw] locale
    #   The target locale for the bot.
    #   @return [String]
    #
    # @!attribute [rw] child_directed
    #   For each Amazon Lex bot created with the Amazon Lex Model Building
    #   Service, you must specify whether your use of Amazon Lex is related
    #   to a website, program, or other application that is directed or
    #   targeted, in whole or in part, to children under age 13 and subject
    #   to the Children's Online Privacy Protection Act (COPPA) by
    #   specifying `true` or `false` in the `childDirected` field. By
    #   specifying `true` in the `childDirected` field, you confirm that
    #   your use of Amazon Lex **is** related to a website, program, or
    #   other application that is directed or targeted, in whole or in part,
    #   to children under age 13 and subject to COPPA. By specifying `false`
    #   in the `childDirected` field, you confirm that your use of Amazon
    #   Lex **is not** related to a website, program, or other application
    #   that is directed or targeted, in whole or in part, to children under
    #   age 13 and subject to COPPA. You may not specify a default value for
    #   the `childDirected` field that does not accurately reflect whether
    #   your use of Amazon Lex is related to a website, program, or other
    #   application that is directed or targeted, in whole or in part, to
    #   children under age 13 and subject to COPPA.
    #
    #   If your use of Amazon Lex relates to a website, program, or other
    #   application that is directed in whole or in part, to children under
    #   age 13, you must obtain any required verifiable parental consent
    #   under COPPA. For information regarding the use of Amazon Lex in
    #   connection with websites, programs, or other applications that are
    #   directed or targeted, in whole or in part, to children under age 13,
    #   see the [Amazon Lex FAQ.][1]
    #
    #
    #
    #   [1]: https://aws.amazon.com/lex/faqs#data-security
    #   @return [Boolean]
    #
    # @!attribute [rw] create_version
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutBotResponse AWS API Documentation
    #
    class PutBotResponse < Struct.new(
      :name,
      :description,
      :intents,
      :clarification_prompt,
      :abort_statement,
      :status,
      :failure_reason,
      :last_updated_date,
      :created_date,
      :idle_session_ttl_in_seconds,
      :voice_id,
      :checksum,
      :version,
      :locale,
      :child_directed,
      :create_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutIntentRequest
    #   data as a hash:
    #
    #       {
    #         name: "IntentName", # required
    #         description: "Description",
    #         slots: [
    #           {
    #             name: "SlotName", # required
    #             description: "Description",
    #             slot_constraint: "Required", # required, accepts Required, Optional
    #             slot_type: "CustomOrBuiltinSlotTypeName",
    #             slot_type_version: "Version",
    #             value_elicitation_prompt: {
    #               messages: [ # required
    #                 {
    #                   content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #                   content: "ContentString", # required
    #                   group_number: 1,
    #                 },
    #               ],
    #               max_attempts: 1, # required
    #               response_card: "ResponseCard",
    #             },
    #             priority: 1,
    #             sample_utterances: ["Utterance"],
    #             response_card: "ResponseCard",
    #           },
    #         ],
    #         sample_utterances: ["Utterance"],
    #         confirmation_prompt: {
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
    #         rejection_statement: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #               content: "ContentString", # required
    #               group_number: 1,
    #             },
    #           ],
    #           response_card: "ResponseCard",
    #         },
    #         follow_up_prompt: {
    #           prompt: { # required
    #             messages: [ # required
    #               {
    #                 content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #                 content: "ContentString", # required
    #                 group_number: 1,
    #               },
    #             ],
    #             max_attempts: 1, # required
    #             response_card: "ResponseCard",
    #           },
    #           rejection_statement: { # required
    #             messages: [ # required
    #               {
    #                 content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #                 content: "ContentString", # required
    #                 group_number: 1,
    #               },
    #             ],
    #             response_card: "ResponseCard",
    #           },
    #         },
    #         conclusion_statement: {
    #           messages: [ # required
    #             {
    #               content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #               content: "ContentString", # required
    #               group_number: 1,
    #             },
    #           ],
    #           response_card: "ResponseCard",
    #         },
    #         dialog_code_hook: {
    #           uri: "LambdaARN", # required
    #           message_version: "MessageVersion", # required
    #         },
    #         fulfillment_activity: {
    #           type: "ReturnIntent", # required, accepts ReturnIntent, CodeHook
    #           code_hook: {
    #             uri: "LambdaARN", # required
    #             message_version: "MessageVersion", # required
    #           },
    #         },
    #         parent_intent_signature: "BuiltinIntentSignature",
    #         checksum: "String",
    #         create_version: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the intent. The name is *not* case sensitive.
    #
    #   The name can't match a built-in intent name, or a built-in intent
    #   name with "AMAZON." removed. For example, because there is a
    #   built-in intent called `AMAZON.HelpIntent`, you can't create a
    #   custom intent called `HelpIntent`.
    #
    #   For a list of built-in intents, see [Standard Built-in Intents][1]
    #   in the *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   An array of intent slots. At runtime, Amazon Lex elicits required
    #   slot values from the user using prompts defined in the slots. For
    #   more information, see how-it-works.
    #   @return [Array<Types::Slot>]
    #
    # @!attribute [rw] sample_utterances
    #   An array of utterances (strings) that a user might say to signal the
    #   intent. For example, "I want \\\{PizzaSize\\} pizza", "Order
    #   \\\{Quantity\\} \\\{PizzaSize\\} pizzas".
    #
    #   In each utterance, a slot name is enclosed in curly braces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] confirmation_prompt
    #   Prompts the user to confirm the intent. This question should have a
    #   yes or no answer.
    #
    #   Amazon Lex uses this prompt to ensure that the user acknowledges
    #   that the intent is ready for fulfillment. For example, with the
    #   `OrderPizza` intent, you might want to confirm that the order is
    #   correct before placing it. For other intents, such as intents that
    #   simply respond to user questions, you might not need to ask the user
    #   for confirmation before providing the information.
    #
    #   <note markdown="1"> You you must provide both the `rejectionStatement` and the
    #   `confirmationPrompt`, or neither.
    #
    #    </note>
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] rejection_statement
    #   When the user answers "no" to the question defined in
    #   `confirmationPrompt`, Amazon Lex responds with this statement to
    #   acknowledge that the intent was canceled.
    #
    #   <note markdown="1"> You must provide both the `rejectionStatement` and the
    #   `confirmationPrompt`, or neither.
    #
    #    </note>
    #   @return [Types::Statement]
    #
    # @!attribute [rw] follow_up_prompt
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
    #   @return [Types::FollowUpPrompt]
    #
    # @!attribute [rw] conclusion_statement
    #   The statement that you want Amazon Lex to convey to the user after
    #   the intent is successfully fulfilled by the Lambda function.
    #
    #   This element is relevant only if you provide a Lambda function in
    #   the `fulfillmentActivity`. If you return the intent to the client
    #   application, you can't specify this element.
    #
    #   <note markdown="1"> The `followUpPrompt` and `conclusionStatement` are mutually
    #   exclusive. You can specify only one.
    #
    #    </note>
    #   @return [Types::Statement]
    #
    # @!attribute [rw] dialog_code_hook
    #   Specifies a Lambda function to invoke for each user input. You can
    #   invoke this Lambda function to personalize user interaction.
    #
    #   For example, suppose your bot determines that the user is John. Your
    #   Lambda function might retrieve John's information from a backend
    #   database and prepopulate some of the values. For example, if you
    #   find that John is gluten intolerant, you might set the corresponding
    #   intent slot, `GlutenIntolerant`, to true. You might find John's
    #   phone number and set the corresponding session attribute.
    #   @return [Types::CodeHook]
    #
    # @!attribute [rw] fulfillment_activity
    #   Required. Describes how the intent is fulfilled. For example, after
    #   a user provides all of the information for a pizza order,
    #   `fulfillmentActivity` defines how the bot places an order with a
    #   local pizza store.
    #
    #   You might configure Amazon Lex to return all of the intent
    #   information to the client application, or direct it to invoke a
    #   Lambda function that can process the intent (for example, place an
    #   order with a pizzeria).
    #   @return [Types::FulfillmentActivity]
    #
    # @!attribute [rw] parent_intent_signature
    #   A unique identifier for the built-in intent to base this intent on.
    #   To find the signature for an intent, see [Standard Built-in
    #   Intents][1] in the *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/standard-intents
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new intent, leave the `checksum` field blank. If
    #   you specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a intent, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If
    #   you don't specify the ` checksum` field, or if the checksum does
    #   not match the `$LATEST` version, you get a
    #   `PreconditionFailedException` exception.
    #   @return [String]
    #
    # @!attribute [rw] create_version
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutIntentRequest AWS API Documentation
    #
    class PutIntentRequest < Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :checksum,
      :create_version)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] slots
    #   An array of intent slots that are configured for the intent.
    #   @return [Array<Types::Slot>]
    #
    # @!attribute [rw] sample_utterances
    #   An array of sample utterances that are configured for the intent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] confirmation_prompt
    #   If defined in the intent, Amazon Lex prompts the user to confirm the
    #   intent before fulfilling it.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] rejection_statement
    #   If the user answers "no" to the question defined in
    #   `confirmationPrompt` Amazon Lex responds with this statement to
    #   acknowledge that the intent was canceled.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] follow_up_prompt
    #   If defined in the intent, Amazon Lex uses this prompt to solicit
    #   additional user activity after the intent is fulfilled.
    #   @return [Types::FollowUpPrompt]
    #
    # @!attribute [rw] conclusion_statement
    #   After the Lambda function specified in
    #   the`fulfillmentActivity`intent fulfills the intent, Amazon Lex
    #   conveys this statement to the user.
    #   @return [Types::Statement]
    #
    # @!attribute [rw] dialog_code_hook
    #   If defined in the intent, Amazon Lex invokes this Lambda function
    #   for each user input.
    #   @return [Types::CodeHook]
    #
    # @!attribute [rw] fulfillment_activity
    #   If defined in the intent, Amazon Lex invokes this Lambda function to
    #   fulfill the intent after the user provides all of the information
    #   required by the intent.
    #   @return [Types::FulfillmentActivity]
    #
    # @!attribute [rw] parent_intent_signature
    #   A unique identifier for the built-in intent that this intent is
    #   based on.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the intent was updated. When you create a resource,
    #   the creation date and last update dates are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the intent was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the intent. For a new intent, the version is always
    #   `$LATEST`.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the `$LATEST`version of the intent created or updated.
    #   @return [String]
    #
    # @!attribute [rw] create_version
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutIntentResponse AWS API Documentation
    #
    class PutIntentResponse < Struct.new(
      :name,
      :description,
      :slots,
      :sample_utterances,
      :confirmation_prompt,
      :rejection_statement,
      :follow_up_prompt,
      :conclusion_statement,
      :dialog_code_hook,
      :fulfillment_activity,
      :parent_intent_signature,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :create_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutSlotTypeRequest
    #   data as a hash:
    #
    #       {
    #         name: "SlotTypeName", # required
    #         description: "Description",
    #         enumeration_values: [
    #           {
    #             value: "Value", # required
    #             synonyms: ["Value"],
    #           },
    #         ],
    #         checksum: "String",
    #         value_selection_strategy: "ORIGINAL_VALUE", # accepts ORIGINAL_VALUE, TOP_RESOLUTION
    #         create_version: false,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the slot type. The name is *not* case sensitive.
    #
    #   The name can't match a built-in slot type name, or a built-in slot
    #   type name with "AMAZON." removed. For example, because there is a
    #   built-in slot type called `AMAZON.DATE`, you can't create a custom
    #   slot type called `DATE`.
    #
    #   For a list of built-in slot types, see [Slot Type Reference][1] in
    #   the *Alexa Skills Kit*.
    #
    #
    #
    #   [1]: https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] enumeration_values
    #   A list of `EnumerationValue` objects that defines the values that
    #   the slot type can take. Each value can have a list of `synonyms`,
    #   which are additional values that help train the machine learning
    #   model about the values that it resolves for a slot.
    #
    #   When Amazon Lex resolves a slot value, it generates a resolution
    #   list that contains up to five possible values for the slot. If you
    #   are using a Lambda function, this resolution list is passed to the
    #   function. If you are not using a Lambda function you can choose to
    #   return the value that the user entered or the first value in the
    #   resolution list as the slot value. The `valueSelectionStrategy`
    #   field indicates the option to use.
    #   @return [Array<Types::EnumerationValue>]
    #
    # @!attribute [rw] checksum
    #   Identifies a specific revision of the `$LATEST` version.
    #
    #   When you create a new slot type, leave the `checksum` field blank.
    #   If you specify a checksum you get a `BadRequestException` exception.
    #
    #   When you want to update a slot type, set the `checksum` field to the
    #   checksum of the most recent revision of the `$LATEST` version. If
    #   you don't specify the ` checksum` field, or if the checksum does
    #   not match the `$LATEST` version, you get a
    #   `PreconditionFailedException` exception.
    #   @return [String]
    #
    # @!attribute [rw] value_selection_strategy
    #   Determines the slot resolution strategy that Amazon Lex uses to
    #   return slot type values. The field can be set to one of the
    #   following values:
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
    #   @return [String]
    #
    # @!attribute [rw] create_version
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutSlotTypeRequest AWS API Documentation
    #
    class PutSlotTypeRequest < Struct.new(
      :name,
      :description,
      :enumeration_values,
      :checksum,
      :value_selection_strategy,
      :create_version)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] enumeration_values
    #   A list of `EnumerationValue` objects that defines the values that
    #   the slot type can take.
    #   @return [Array<Types::EnumerationValue>]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the slot type was updated. When you create a slot
    #   type, the creation date and last update date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the slot type was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the slot type. For a new slot type, the version is
    #   always `$LATEST`.
    #   @return [String]
    #
    # @!attribute [rw] checksum
    #   Checksum of the `$LATEST` version of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] value_selection_strategy
    #   The slot resolution strategy that Amazon Lex uses to determine the
    #   value of the slot. For more information, see PutSlotType.
    #   @return [String]
    #
    # @!attribute [rw] create_version
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/PutSlotTypeResponse AWS API Documentation
    #
    class PutSlotTypeResponse < Struct.new(
      :name,
      :description,
      :enumeration_values,
      :last_updated_date,
      :created_date,
      :version,
      :checksum,
      :value_selection_strategy,
      :create_version)
      include Aws::Structure
    end

    # Describes the resource that refers to the resource that you are
    # attempting to delete. This object is returned as part of the
    # `ResourceInUseException` exception.
    #
    # @!attribute [rw] name
    #   The name of the resource that is using the resource that you are
    #   trying to delete.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource that is using the resource that you are
    #   trying to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/ResourceReference AWS API Documentation
    #
    class ResourceReference < Struct.new(
      :name,
      :version)
      include Aws::Structure
    end

    # Identifies the version of a specific slot.
    #
    # @note When making an API call, you may pass Slot
    #   data as a hash:
    #
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
    #       }
    #
    # @!attribute [rw] name
    #   The name of the slot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot.
    #   @return [String]
    #
    # @!attribute [rw] slot_constraint
    #   Specifies whether the slot is required or optional.
    #   @return [String]
    #
    # @!attribute [rw] slot_type
    #   The type of the slot, either a custom slot type that you defined or
    #   one of the built-in slot types.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_version
    #   The version of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] value_elicitation_prompt
    #   The prompt that Amazon Lex uses to elicit the slot value from the
    #   user.
    #   @return [Types::Prompt]
    #
    # @!attribute [rw] priority
    #   Directs Lex the order in which to elicit this slot value from the
    #   user. For example, if the intent has two slots with priorities 1 and
    #   2, AWS Lex first elicits a value for the slot with priority 1.
    #
    #   If multiple slots share the same priority, the order in which Lex
    #   elicits values is arbitrary.
    #   @return [Integer]
    #
    # @!attribute [rw] sample_utterances
    #   If you know a specific pattern with which users might respond to an
    #   Amazon Lex request for a slot value, you can provide those
    #   utterances to improve accuracy. This is optional. In most cases,
    #   Amazon Lex is capable of understanding user utterances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] response_card
    #   A set of possible responses for the slot type used by text-based
    #   clients. A user chooses an option from the response card, instead of
    #   using text to reply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/Slot AWS API Documentation
    #
    class Slot < Struct.new(
      :name,
      :description,
      :slot_constraint,
      :slot_type,
      :slot_type_version,
      :value_elicitation_prompt,
      :priority,
      :sample_utterances,
      :response_card)
      include Aws::Structure
    end

    # Provides information about a slot type..
    #
    # @!attribute [rw] name
    #   The name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date
    #   The date that the slot type was updated. When you create a resource,
    #   the creation date and last updated date are the same.
    #   @return [Time]
    #
    # @!attribute [rw] created_date
    #   The date that the slot type was created.
    #   @return [Time]
    #
    # @!attribute [rw] version
    #   The version of the slot type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/SlotTypeMetadata AWS API Documentation
    #
    class SlotTypeMetadata < Struct.new(
      :name,
      :description,
      :last_updated_date,
      :created_date,
      :version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartImportRequest
    #   data as a hash:
    #
    #       {
    #         payload: "data", # required
    #         resource_type: "BOT", # required, accepts BOT, INTENT, SLOT_TYPE
    #         merge_strategy: "OVERWRITE_LATEST", # required, accepts OVERWRITE_LATEST, FAIL_ON_CONFLICT
    #       }
    #
    # @!attribute [rw] payload
    #   A zip archive in binary format. The archive should contain one file,
    #   a JSON file containing the resource to import. The resource should
    #   match the type specified in the `resourceType` field.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Specifies the type of resource to export. Each resource also exports
    #   any resources that it depends on.
    #
    #   * A bot exports dependent intents.
    #
    #   * An intent exports dependent slot types.
    #   @return [String]
    #
    # @!attribute [rw] merge_strategy
    #   Specifies the action that the `StartImport` operation should take
    #   when there is an existing resource with the same name.
    #
    #   * FAIL\_ON\_CONFLICT - The import operation is stopped on the first
    #     conflict between a resource in the import file and an existing
    #     resource. The name of the resource causing the conflict is in the
    #     `failureReason` field of the response to the `GetImport`
    #     operation.
    #
    #     OVERWRITE\_LATEST - The import operation proceeds even if there is
    #     a conflict with an existing resource. The $LASTEST version of the
    #     existing resource is overwritten with the data from the import
    #     file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/StartImportRequest AWS API Documentation
    #
    class StartImportRequest < Struct.new(
      :payload,
      :resource_type,
      :merge_strategy)
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name given to the import job.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource to import.
    #   @return [String]
    #
    # @!attribute [rw] merge_strategy
    #   The action to take when there is a merge conflict.
    #   @return [String]
    #
    # @!attribute [rw] import_id
    #   The identifier for the specific import job.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the import job. If the status is `FAILED`, you can get
    #   the reason for the failure using the `GetImport` operation.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   A timestamp for the date and time that the import job was requested.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/StartImportResponse AWS API Documentation
    #
    class StartImportResponse < Struct.new(
      :name,
      :resource_type,
      :merge_strategy,
      :import_id,
      :import_status,
      :created_date)
      include Aws::Structure
    end

    # A collection of messages that convey information to the user. At
    # runtime, Amazon Lex selects the message to convey.
    #
    # @note When making an API call, you may pass Statement
    #   data as a hash:
    #
    #       {
    #         messages: [ # required
    #           {
    #             content_type: "PlainText", # required, accepts PlainText, SSML, CustomPayload
    #             content: "ContentString", # required
    #             group_number: 1,
    #           },
    #         ],
    #         response_card: "ResponseCard",
    #       }
    #
    # @!attribute [rw] messages
    #   A collection of message objects.
    #   @return [Array<Types::Message>]
    #
    # @!attribute [rw] response_card
    #   At runtime, if the client is using the [PostText][1] API, Amazon Lex
    #   includes the response card in the response. It substitutes all of
    #   the session attributes and slot values for placeholders in the
    #   response card.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/Statement AWS API Documentation
    #
    class Statement < Struct.new(
      :messages,
      :response_card)
      include Aws::Structure
    end

    # Provides information about a single utterance that was made to your
    # bot.
    #
    # @!attribute [rw] utterance_string
    #   The text that was entered by the user or the text representation of
    #   an audio clip.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   The number of times that the utterance was processed.
    #   @return [Integer]
    #
    # @!attribute [rw] distinct_users
    #   The total number of individuals that used the utterance.
    #   @return [Integer]
    #
    # @!attribute [rw] first_uttered_date
    #   The date that the utterance was first recorded.
    #   @return [Time]
    #
    # @!attribute [rw] last_uttered_date
    #   The date that the utterance was last recorded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/UtteranceData AWS API Documentation
    #
    class UtteranceData < Struct.new(
      :utterance_string,
      :count,
      :distinct_users,
      :first_uttered_date,
      :last_uttered_date)
      include Aws::Structure
    end

    # Provides a list of utterances that have been made to a specific
    # version of your bot. The list contains a maximum of 100 utterances.
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that processed the list.
    #   @return [String]
    #
    # @!attribute [rw] utterances
    #   One or more UtteranceData objects that contain information about the
    #   utterances that have been made to a bot. The maximum number of
    #   object is 100.
    #   @return [Array<Types::UtteranceData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lex-models-2017-04-19/UtteranceList AWS API Documentation
    #
    class UtteranceList < Struct.new(
      :bot_version,
      :utterances)
      include Aws::Structure
    end

  end
end
