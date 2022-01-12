# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LexModelsV2
  module Types

    # Provides settings that enable advanced recognition settings for slot
    # values.
    #
    # @note When making an API call, you may pass AdvancedRecognitionSetting
    #   data as a hash:
    #
    #       {
    #         audio_recognition_strategy: "UseSlotValuesAsCustomVocabulary", # accepts UseSlotValuesAsCustomVocabulary
    #       }
    #
    # @!attribute [rw] audio_recognition_strategy
    #   Enables using the slot values as a custom vocabulary for recognizing
    #   user utterances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AdvancedRecognitionSetting AWS API Documentation
    #
    class AdvancedRecognitionSetting < Struct.new(
      :audio_recognition_strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters responses returned by the `ListAggregatedUtterances`
    # operation.
    #
    # @note When making an API call, you may pass AggregatedUtterancesFilter
    #   data as a hash:
    #
    #       {
    #         name: "Utterance", # required, accepts Utterance
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to filter the utterance list.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to use for filtering the list of bots.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify `EQ` when the
    #   `ListAggregatedUtterances` operation should return only utterances
    #   that equal the specified value. Specify `CO` when the
    #   `ListAggregatedUtterances` operation should return utterances that
    #   contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AggregatedUtterancesFilter AWS API Documentation
    #
    class AggregatedUtterancesFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of utterances.
    #
    # @note When making an API call, you may pass AggregatedUtterancesSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "HitCount", # required, accepts HitCount, MissedCount
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The utterance attribute to sort by.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Specifies whether to sort the aggregated utterances in ascending or
    #   descending order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AggregatedUtterancesSortBy AWS API Documentation
    #
    class AggregatedUtterancesSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information for aggregated utterances. The
    # `ListAggregatedUtterances` operations combines all instances of the
    # same utterance into a single aggregated summary.
    #
    # @!attribute [rw] utterance
    #   The text of the utterance. If the utterance was used with the
    #   `RecognizeUtterance` operation, the text is the transcription of the
    #   audio utterance.
    #   @return [String]
    #
    # @!attribute [rw] hit_count
    #   The number of times that the utterance was detected by Amazon Lex
    #   during the time period. When an utterance is detected, it activates
    #   an intent or a slot.
    #   @return [Integer]
    #
    # @!attribute [rw] missed_count
    #   The number of times that the utterance was missed by Amazon Lex An
    #   utterance is missed when it doesn't activate an intent or slot.
    #   @return [Integer]
    #
    # @!attribute [rw] utterance_first_recorded_in_aggregation_duration
    #   The date and time that the utterance was first recorded in the time
    #   window for aggregation. An utterance may have been sent to Amazon
    #   Lex before that time, but only utterances within the time window are
    #   counted.
    #   @return [Time]
    #
    # @!attribute [rw] utterance_last_recorded_in_aggregation_duration
    #   The last date and time that an utterance was recorded in the time
    #   window for aggregation. An utterance may be sent to Amazon Lex after
    #   that time, but only utterances within the time window are counted.
    #   @return [Time]
    #
    # @!attribute [rw] contains_data_from_deleted_resources
    #   Aggregated utterance data may contain utterances from versions of
    #   your bot that have since been deleted. When the aggregated contains
    #   this kind of data, this field is set to true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AggregatedUtterancesSummary AWS API Documentation
    #
    class AggregatedUtterancesSummary < Struct.new(
      :utterance,
      :hit_count,
      :missed_count,
      :utterance_first_recorded_in_aggregation_duration,
      :utterance_last_recorded_in_aggregation_duration,
      :contains_data_from_deleted_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object containing information that associates the recommended
    # intent/slot type with a conversation.
    #
    # @!attribute [rw] transcript
    #   The content of the transcript that meets the search filter criteria.
    #   For the JSON format of the transcript, see [Output transcript
    #   format][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lex/latest/dg/designing-output-format.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AssociatedTranscript AWS API Documentation
    #
    class AssociatedTranscript < Struct.new(
      :transcript)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters to search for the associated transcript.
    #
    # @note When making an API call, you may pass AssociatedTranscriptFilter
    #   data as a hash:
    #
    #       {
    #         name: "IntentId", # required, accepts IntentId, SlotTypeId
    #         values: ["FilterValue"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to use for filtering. The allowed names are
    #   IntentId and SlotTypeId.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use to filter the transcript.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AssociatedTranscriptFilter AWS API Documentation
    #
    class AssociatedTranscriptFilter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of audio log files collected when conversation logging is
    # enabled for a bot.
    #
    # @note When making an API call, you may pass AudioLogDestination
    #   data as a hash:
    #
    #       {
    #         s3_bucket: { # required
    #           kms_key_arn: "KmsKeyArn",
    #           s3_bucket_arn: "S3BucketArn", # required
    #           log_prefix: "LogPrefix", # required
    #         },
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The Amazon S3 bucket where the audio log files are stored. The IAM
    #   role specified in the `roleArn` parameter of the [CreateBot][1]
    #   operation must have permission to write to this bucket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html
    #   @return [Types::S3BucketLogDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AudioLogDestination AWS API Documentation
    #
    class AudioLogDestination < Struct.new(
      :s3_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for logging audio of conversations between Amazon Lex and a
    # user. You specify whether to log audio and the Amazon S3 bucket where
    # the audio file is stored.
    #
    # @note When making an API call, you may pass AudioLogSetting
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         destination: { # required
    #           s3_bucket: { # required
    #             kms_key_arn: "KmsKeyArn",
    #             s3_bucket_arn: "S3BucketArn", # required
    #             log_prefix: "LogPrefix", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] enabled
    #   Determines whether audio logging in enabled for the bot.
    #   @return [Boolean]
    #
    # @!attribute [rw] destination
    #   The location of audio log files collected when conversation logging
    #   is enabled for a bot.
    #   @return [Types::AudioLogDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/AudioLogSetting AWS API Documentation
    #
    class AudioLogSetting < Struct.new(
      :enabled,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a record of an event that affects a bot alias. For example,
    # when the version of a bot that the alias points to changes.
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that was used in the event.
    #   @return [String]
    #
    # @!attribute [rw] start_date
    #   The date and time that the event started.
    #   @return [Time]
    #
    # @!attribute [rw] end_date
    #   The date and time that the event ended.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotAliasHistoryEvent AWS API Documentation
    #
    class BotAliasHistoryEvent < Struct.new(
      :bot_version,
      :start_date,
      :end_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies settings that are unique to a locale. For example, you can
    # use different Lambda function depending on the bot's locale.
    #
    # @note When making an API call, you may pass BotAliasLocaleSettings
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         code_hook_specification: {
    #           lambda_code_hook: { # required
    #             lambda_arn: "LambdaARN", # required
    #             code_hook_interface_version: "CodeHookInterfaceVersion", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] enabled
    #   Determines whether the locale is enabled for the bot. If the value
    #   is `false`, the locale isn't available for use.
    #   @return [Boolean]
    #
    # @!attribute [rw] code_hook_specification
    #   Specifies the Lambda function that should be used in the locale.
    #   @return [Types::CodeHookSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotAliasLocaleSettings AWS API Documentation
    #
    class BotAliasLocaleSettings < Struct.new(
      :enabled,
      :code_hook_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about bot aliases returned from the
    # [ListBotAliases][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBotAliases.html
    #
    # @!attribute [rw] bot_alias_id
    #   The unique identifier assigned to the bot alias. You can use this ID
    #   to get detailed information about the alias using the
    #   [DescribeBotAlias][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeBotAlias.html
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_name
    #   The name of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that the bot alias references.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_status
    #   The current state of the bot alias. If the status is `Available`,
    #   the alias is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the bot alias was last
    #   updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotAliasSummary AWS API Documentation
    #
    class BotAliasSummary < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the identity of a the bot that was exported.
    #
    # @note When making an API call, you may pass BotExportSpecification
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot assigned by Amazon Lex.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that was exported. This will be either
    #   `DRAFT` or the version number.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotExportSpecification AWS API Documentation
    #
    class BotExportSpecification < Struct.new(
      :bot_id,
      :bot_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the responses returned by the `ListBots` operation.
    #
    # @note When making an API call, you may pass BotFilter
    #   data as a hash:
    #
    #       {
    #         name: "BotName", # required, accepts BotName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to filter the list of bots.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to use for filtering the list of bots.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify `EQ` when the `ListBots`
    #   operation should return only aliases that equal the specified value.
    #   Specify `CO` when the `ListBots` operation should return aliases
    #   that contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotFilter AWS API Documentation
    #
    class BotFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the bot parameters required for importing a bot.
    #
    # @note When making an API call, you may pass BotImportSpecification
    #   data as a hash:
    #
    #       {
    #         bot_name: "Name", # required
    #         role_arn: "RoleArn", # required
    #         data_privacy: { # required
    #           child_directed: false, # required
    #         },
    #         idle_session_ttl_in_seconds: 1,
    #         bot_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         test_bot_alias_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name that Amazon Lex should use for the bot.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used to build and run
    #   the bot.
    #   @return [String]
    #
    # @!attribute [rw] data_privacy
    #   By default, data stored by Amazon Lex is encrypted. The
    #   `DataPrivacy` structure provides settings that determine how Amazon
    #   Lex handles special cases of securing the data for your bot.
    #   @return [Types::DataPrivacy]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The time, in seconds, that Amazon Lex should keep information about
    #   a user's conversation with the bot.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Lex deletes any data provided before the timeout.
    #
    #   You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_tags
    #   A list of tags to add to the bot. You can only add tags when you
    #   import a bot. You can't use the `UpdateBot` operation to update
    #   tags. To update tags, use the `TagResource` operation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] test_bot_alias_tags
    #   A list of tags to add to the test alias for a bot. You can only add
    #   tags when you import a bot. You can't use the `UpdateAlias`
    #   operation to update tags. To update tags on the test alias, use the
    #   `TagResource` operation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotImportSpecification AWS API Documentation
    #
    class BotImportSpecification < Struct.new(
      :bot_name,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_tags,
      :test_bot_alias_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the bot locale parameters required for exporting a bot
    # locale.
    #
    # @note When making an API call, you may pass BotLocaleExportSpecification
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to create the locale for.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to export.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale to export. The string must
    #   match one of the locales in the bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotLocaleExportSpecification AWS API Documentation
    #
    class BotLocaleExportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters responses returned by the `ListBotLocales` operation.
    #
    # @note When making an API call, you may pass BotLocaleFilter
    #   data as a hash:
    #
    #       {
    #         name: "BotLocaleName", # required, accepts BotLocaleName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to filter the list of bots.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to use for filtering the list of bots.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify `EQ` when the
    #   `ListBotLocales` operation should return only aliases that equal the
    #   specified value. Specify `CO` when the `ListBotLocales` operation
    #   should return aliases that contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotLocaleFilter AWS API Documentation
    #
    class BotLocaleFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an event that occurred affecting the bot
    # locale.
    #
    # @!attribute [rw] event
    #   A description of the event that occurred.
    #   @return [String]
    #
    # @!attribute [rw] event_date
    #   A timestamp of the date and time that the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotLocaleHistoryEvent AWS API Documentation
    #
    class BotLocaleHistoryEvent < Struct.new(
      :event,
      :event_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the bot locale parameters required for importing a bot
    # locale.
    #
    # @note When making an API call, you may pass BotLocaleImportSpecification
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         nlu_intent_confidence_threshold: 1.0,
    #         voice_settings: {
    #           voice_id: "VoiceId", # required
    #           engine: "standard", # accepts standard, neural
    #         },
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to import the locale to.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to import the locale to. This can only be the
    #   `DRAFT` version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the bot will be used
    #   in. The string must match one of the supported locales. All of the
    #   intents, slot types, and slots used in the bot must have the same
    #   locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence_threshold
    #   Determines the threshold where Amazon Lex will insert the
    #   `AMAZON.FallbackIntent`, `AMAZON.KendraSearchIntent`, or both when
    #   returning alternative intents. `AMAZON.FallbackIntent` and
    #   `AMAZON.KendraSearchIntent` are only inserted if they are configured
    #   for the bot.
    #
    #   For example, suppose a bot is configured with the confidence
    #   threshold of 0.80 and the `AMAZON.FallbackIntent`. Amazon Lex
    #   returns three alternative intents with the following confidence
    #   scores: IntentA (0.70), IntentB (0.60), IntentC (0.50). The response
    #   from the `PostText` operation would be:
    #
    #   * `AMAZON.FallbackIntent`
    #
    #   * `IntentA`
    #
    #   * `IntentB`
    #
    #   * `IntentC`
    #   @return [Float]
    #
    # @!attribute [rw] voice_settings
    #   Defines settings for using an Amazon Polly voice to communicate with
    #   a user.
    #   @return [Types::VoiceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotLocaleImportSpecification AWS API Documentation
    #
    class BotLocaleImportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :nlu_intent_confidence_threshold,
      :voice_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of bot locales.
    #
    # @note When making an API call, you may pass BotLocaleSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "BotLocaleName", # required, accepts BotLocaleName
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The bot locale attribute to sort by.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   Specifies whether to sort the bot locales in ascending or descending
    #   order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotLocaleSortBy AWS API Documentation
    #
    class BotLocaleSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about bot locales returned by the
    # [ListBotLocales][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBotLocales.html
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the bot locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_name
    #   The name of the bot locale.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the bot locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_locale_status
    #   The current status of the bot locale. When the status is `Built` the
    #   locale is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the bot locale was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_build_submitted_date_time
    #   A timestamp of the date and time that the bot locale was last built.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotLocaleSummary AWS API Documentation
    #
    class BotLocaleSummary < Struct.new(
      :locale_id,
      :locale_name,
      :description,
      :bot_locale_status,
      :last_updated_date_time,
      :last_build_submitted_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A statistical summary of the bot recommendation results.
    #
    # @!attribute [rw] intents
    #   Statistical information about about the intents associated with the
    #   bot recommendation results.
    #   @return [Types::IntentStatistics]
    #
    # @!attribute [rw] slot_types
    #   Statistical information about the slot types associated with the bot
    #   recommendation results.
    #   @return [Types::SlotTypeStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotRecommendationResultStatistics AWS API Documentation
    #
    class BotRecommendationResultStatistics < Struct.new(
      :intents,
      :slot_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object representing the URL of the bot definition, the URL of the
    # associated transcript and a statistical summary of the bot
    # recommendation results.
    #
    # @!attribute [rw] bot_locale_export_url
    #   The presigned URL link of the recommended bot definition.
    #   @return [String]
    #
    # @!attribute [rw] associated_transcripts_url
    #   The presigned url link of the associated transcript.
    #   @return [String]
    #
    # @!attribute [rw] statistics
    #   The statistical summary of the bot recommendation results.
    #   @return [Types::BotRecommendationResultStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotRecommendationResults AWS API Documentation
    #
    class BotRecommendationResults < Struct.new(
      :bot_locale_export_url,
      :associated_transcripts_url,
      :statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of the bot recommendation.
    #
    # @!attribute [rw] bot_recommendation_status
    #   The status of the bot recommendation.
    #
    #   If the status is Failed, then the reasons for the failure are listed
    #   in the failureReasons field.
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The unique identifier of the bot recommendation to be updated.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot recommendation was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the bot recommendation was
    #   last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotRecommendationSummary AWS API Documentation
    #
    class BotRecommendationSummary < Struct.new(
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of bots.
    #
    # @note When making an API call, you may pass BotSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "BotName", # required, accepts BotName
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to use to sort the list of bots.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list. You can choose ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotSortBy AWS API Documentation
    #
    class BotSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a bot returned by the [ListBots][1]
    # operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBots.html
    #
    # @!attribute [rw] bot_id
    #   The unique identifier assigned to the bot. Use this ID to get
    #   detailed information about the bot with the [DescribeBot][1]
    #   operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeBot.html
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_status
    #   The current status of the bot. When the status is `Available` the
    #   bot is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] latest_bot_version
    #   The latest numerical version in use for the bot.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the bot was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotSummary AWS API Documentation
    #
    class BotSummary < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :bot_status,
      :latest_bot_version,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The version of a bot used for a bot locale.
    #
    # @note When making an API call, you may pass BotVersionLocaleDetails
    #   data as a hash:
    #
    #       {
    #         source_bot_version: "BotVersion", # required
    #       }
    #
    # @!attribute [rw] source_bot_version
    #   The version of a bot used for a bot locale.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotVersionLocaleDetails AWS API Documentation
    #
    class BotVersionLocaleDetails < Struct.new(
      :source_bot_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of bot versions.
    #
    # @note When making an API call, you may pass BotVersionSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "BotVersion", # required, accepts BotVersion
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to use to sort the list of versions.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list. You can specify ascending or descending
    #   order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotVersionSortBy AWS API Documentation
    #
    class BotVersionSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a bot version returned by the
    # [ListBotVersions][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBotVersions.html
    #
    # @!attribute [rw] bot_name
    #   The name of the bot associated with the version.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The numeric version of the bot, or `DRAFT` to indicate that this is
    #   the version of the bot that can be updated..
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version.
    #   @return [String]
    #
    # @!attribute [rw] bot_status
    #   The status of the bot. When the status is available, the version of
    #   the bot is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the version was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BotVersionSummary AWS API Documentation
    #
    class BotVersionSummary < Struct.new(
      :bot_name,
      :bot_version,
      :description,
      :bot_status,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BuildBotLocaleRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to build. The identifier is returned in
    #   the response from the [CreateBot][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to build. This can only be the draft version
    #   of the bot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the bot will be used
    #   in. The string must match one of the supported locales. All of the
    #   intents, slot types, and slots used in the bot must have the same
    #   locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BuildBotLocaleRequest AWS API Documentation
    #
    class BuildBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the specified bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that was built. This is only the draft
    #   version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale specified of where the bot can be used.
    #   @return [String]
    #
    # @!attribute [rw] bot_locale_status
    #   The bot's build status. When the status is `ReadyExpressTesting`
    #   you can test the bot using the utterances defined for the intents
    #   and slot types. When the status is `Built`, the bot is ready for use
    #   and can be tested using any utterance.
    #   @return [String]
    #
    # @!attribute [rw] last_build_submitted_date_time
    #   A timestamp indicating the date and time that the bot was last built
    #   for this locale.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BuildBotLocaleResponse AWS API Documentation
    #
    class BuildBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_locale_status,
      :last_build_submitted_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of built-in intents.
    #
    # @note When making an API call, you may pass BuiltInIntentSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "IntentSignature", # required, accepts IntentSignature
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to use to sort the list of built-in intents.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list. You can specify ascending or descending
    #   order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BuiltInIntentSortBy AWS API Documentation
    #
    class BuiltInIntentSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a built-in intent for the [
    # ListBuiltInIntents ][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBuiltInIntents.html
    #
    # @!attribute [rw] intent_signature
    #   The signature of the built-in intent. Use this to specify the parent
    #   intent of a derived intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the intent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BuiltInIntentSummary AWS API Documentation
    #
    class BuiltInIntentSummary < Struct.new(
      :intent_signature,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of built-in slot types.
    #
    # @note When making an API call, you may pass BuiltInSlotTypeSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "SlotTypeSignature", # required, accepts SlotTypeSignature
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to use to sort the list of built-in intents.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list. You can choose ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BuiltInSlotTypeSortBy AWS API Documentation
    #
    class BuiltInSlotTypeSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a built-in slot type for the [
    # ListBuiltInSlotTypes ][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListBuiltInSlotTypes.html
    #
    # @!attribute [rw] slot_type_signature
    #   The signature of the built-in slot type. Use this to specify the
    #   parent slot type of a derived slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the built-in slot type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/BuiltInSlotTypeSummary AWS API Documentation
    #
    class BuiltInSlotTypeSummary < Struct.new(
      :slot_type_signature,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a button to use on a response card used to gather slot
    # values from a user.
    #
    # @note When making an API call, you may pass Button
    #   data as a hash:
    #
    #       {
    #         text: "ButtonText", # required
    #         value: "ButtonValue", # required
    #       }
    #
    # @!attribute [rw] text
    #   The text that appears on the button. Use this to tell the user what
    #   value is returned when they choose this button.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value returned to Amazon Lex when the user chooses this button.
    #   This must be one of the slot values configured for the slot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/Button AWS API Documentation
    #
    class Button < Struct.new(
      :text,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon CloudWatch Logs log group where the text and metadata logs
    # are delivered. The log group must exist before you enable logging.
    #
    # @note When making an API call, you may pass CloudWatchLogGroupLogDestination
    #   data as a hash:
    #
    #       {
    #         cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #         log_prefix: "LogPrefix", # required
    #       }
    #
    # @!attribute [rw] cloud_watch_log_group_arn
    #   The Amazon Resource Name (ARN) of the log group where text and
    #   metadata logs are delivered.
    #   @return [String]
    #
    # @!attribute [rw] log_prefix
    #   The prefix of the log stream name within the log group that you
    #   specified
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CloudWatchLogGroupLogDestination AWS API Documentation
    #
    class CloudWatchLogGroupLogDestination < Struct.new(
      :cloud_watch_log_group_arn,
      :log_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about code hooks that Amazon Lex calls during a
    # conversation.
    #
    # @note When making an API call, you may pass CodeHookSpecification
    #   data as a hash:
    #
    #       {
    #         lambda_code_hook: { # required
    #           lambda_arn: "LambdaARN", # required
    #           code_hook_interface_version: "CodeHookInterfaceVersion", # required
    #         },
    #       }
    #
    # @!attribute [rw] lambda_code_hook
    #   Specifies a Lambda function that verifies requests to a bot or
    #   fulfills the user's request to a bot.
    #   @return [Types::LambdaCodeHook]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CodeHookSpecification AWS API Documentation
    #
    class CodeHookSpecification < Struct.new(
      :lambda_code_hook)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action that you tried to perform couldn't be completed because
    # the resource is in a conflicting state. For example, deleting a bot
    # that is in the CREATING state. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configures conversation logging that saves audio, text, and metadata
    # for the conversations with your users.
    #
    # @note When making an API call, you may pass ConversationLogSettings
    #   data as a hash:
    #
    #       {
    #         text_log_settings: [
    #           {
    #             enabled: false, # required
    #             destination: { # required
    #               cloud_watch: { # required
    #                 cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #                 log_prefix: "LogPrefix", # required
    #               },
    #             },
    #           },
    #         ],
    #         audio_log_settings: [
    #           {
    #             enabled: false, # required
    #             destination: { # required
    #               s3_bucket: { # required
    #                 kms_key_arn: "KmsKeyArn",
    #                 s3_bucket_arn: "S3BucketArn", # required
    #                 log_prefix: "LogPrefix", # required
    #               },
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] text_log_settings
    #   The Amazon CloudWatch Logs settings for logging text and metadata.
    #   @return [Array<Types::TextLogSetting>]
    #
    # @!attribute [rw] audio_log_settings
    #   The Amazon S3 settings for logging audio to an S3 bucket.
    #   @return [Array<Types::AudioLogSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ConversationLogSettings AWS API Documentation
    #
    class ConversationLogSettings < Struct.new(
      :text_log_settings,
      :audio_log_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBotAliasRequest
    #   data as a hash:
    #
    #       {
    #         bot_alias_name: "Name", # required
    #         description: "Description",
    #         bot_version: "NumericalBotVersion",
    #         bot_alias_locale_settings: {
    #           "LocaleId" => {
    #             enabled: false, # required
    #             code_hook_specification: {
    #               lambda_code_hook: { # required
    #                 lambda_arn: "LambdaARN", # required
    #                 code_hook_interface_version: "CodeHookInterfaceVersion", # required
    #               },
    #             },
    #           },
    #         },
    #         conversation_log_settings: {
    #           text_log_settings: [
    #             {
    #               enabled: false, # required
    #               destination: { # required
    #                 cloud_watch: { # required
    #                   cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #                   log_prefix: "LogPrefix", # required
    #                 },
    #               },
    #             },
    #           ],
    #           audio_log_settings: [
    #             {
    #               enabled: false, # required
    #               destination: { # required
    #                 s3_bucket: { # required
    #                   kms_key_arn: "KmsKeyArn",
    #                   s3_bucket_arn: "S3BucketArn", # required
    #                   log_prefix: "LogPrefix", # required
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         sentiment_analysis_settings: {
    #           detect_sentiment: false, # required
    #         },
    #         bot_id: "Id", # required
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] bot_alias_name
    #   The alias to create. The name must be unique for the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the alias. Use this description to help identify
    #   the alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that this alias points to. You can use the
    #   [UpdateBotAlias][1] operation to change the bot version associated
    #   with the alias.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_UpdateBotAlias.html
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_locale_settings
    #   Maps configuration information to a specific locale. You can use
    #   this parameter to specify a specific Lambda function to run
    #   different functions in different locales.
    #   @return [Hash<String,Types::BotAliasLocaleSettings>]
    #
    # @!attribute [rw] conversation_log_settings
    #   Specifies whether Amazon Lex logs text and audio for a conversation
    #   with the bot. When you enable conversation logs, text logs store
    #   text input, transcripts of audio input, and associated metadata in
    #   Amazon CloudWatch Logs. Audio logs store audio input in Amazon S3.
    #   @return [Types::ConversationLogSettings]
    #
    # @!attribute [rw] sentiment_analysis_settings
    #   Determines whether Amazon Lex will use Amazon Comprehend to detect
    #   the sentiment of user utterances.
    #   @return [Types::SentimentAnalysisSettings]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that the alias applies to.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to add to the bot alias. You can only add tags when
    #   you create an alias, you can't use the `UpdateBotAlias` operation
    #   to update the tags on a bot alias. To update tags, use the
    #   `TagResource` operation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotAliasRequest AWS API Documentation
    #
    class CreateBotAliasRequest < Struct.new(
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_alias_id
    #   The unique identifier of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_name
    #   The name specified for the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description specified for the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with this alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_locale_settings
    #   Configuration information for a specific locale.
    #   @return [Hash<String,Types::BotAliasLocaleSettings>]
    #
    # @!attribute [rw] conversation_log_settings
    #   The conversation log settings specified for the alias.
    #   @return [Types::ConversationLogSettings]
    #
    # @!attribute [rw] sentiment_analysis_settings
    #   Determines whether Amazon Lex will use Amazon Comprehend to detect
    #   the sentiment of user utterances.
    #   @return [Types::SentimentAnalysisSettings]
    #
    # @!attribute [rw] bot_alias_status
    #   The current status of the alias. The alias is first put into the
    #   `Creating` state. When the alias is ready to be used, it is put into
    #   the `Available` state. You can use the `DescribeBotAlias` operation
    #   to get the current state of an alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that this alias applies to.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A Unix timestamp indicating the date and time that the bot alias was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   A list of tags associated with the bot alias.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotAliasResponse AWS API Documentation
    #
    class CreateBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBotLocaleRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         description: "Description",
    #         nlu_intent_confidence_threshold: 1.0, # required
    #         voice_settings: {
    #           voice_id: "VoiceId", # required
    #           engine: "standard", # accepts standard, neural
    #         },
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to create the locale for.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to create the locale for. This can only be
    #   the draft version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the bot will be used
    #   in. The string must match one of the supported locales. All of the
    #   intents, slot types, and slots used in the bot must have the same
    #   locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot locale. Use this to help identify the bot
    #   locale in lists.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence_threshold
    #   Determines the threshold where Amazon Lex will insert the
    #   `AMAZON.FallbackIntent`, `AMAZON.KendraSearchIntent`, or both when
    #   returning alternative intents. `AMAZON.FallbackIntent` and
    #   `AMAZON.KendraSearchIntent` are only inserted if they are configured
    #   for the bot.
    #
    #   For example, suppose a bot is configured with the confidence
    #   threshold of 0.80 and the `AMAZON.FallbackIntent`. Amazon Lex
    #   returns three alternative intents with the following confidence
    #   scores: IntentA (0.70), IntentB (0.60), IntentC (0.50). The response
    #   from the `RecognizeText` operation would be:
    #
    #   * AMAZON.FallbackIntent
    #
    #   * IntentA
    #
    #   * IntentB
    #
    #   * IntentC
    #   @return [Float]
    #
    # @!attribute [rw] voice_settings
    #   The Amazon Polly voice ID that Amazon Lex uses for voice interaction
    #   with the user.
    #   @return [Types::VoiceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotLocaleRequest AWS API Documentation
    #
    class CreateBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The specified bot identifier.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The specified bot version.
    #   @return [String]
    #
    # @!attribute [rw] locale_name
    #   The specified locale name.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The specified locale identifier.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The specified description of the bot locale.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence_threshold
    #   The specified confidence threshold for inserting the
    #   `AMAZON.FallbackIntent` and `AMAZON.KendraSearchIntent` intents.
    #   @return [Float]
    #
    # @!attribute [rw] voice_settings
    #   The Amazon Polly voice ID that Amazon Lex uses for voice interaction
    #   with the user.
    #   @return [Types::VoiceSettings]
    #
    # @!attribute [rw] bot_locale_status
    #   The status of the bot.
    #
    #   When the status is `Creating` the bot locale is being configured.
    #   When the status is `Building` Amazon Lex is building the bot for
    #   testing and use.
    #
    #   If the status of the bot is `ReadyExpressTesting`, you can test the
    #   bot using the exact utterances specified in the bots' intents. When
    #   the bot is ready for full testing or to run, the status is `Built`.
    #
    #   If there was a problem with building the bot, the status is
    #   `Failed`. If the bot was saved but not built, the status is
    #   `NotBuilt`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp specifying the date and time that the bot locale was
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotLocaleResponse AWS API Documentation
    #
    class CreateBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_name,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :bot_locale_status,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBotRequest
    #   data as a hash:
    #
    #       {
    #         bot_name: "Name", # required
    #         description: "Description",
    #         role_arn: "RoleArn", # required
    #         data_privacy: { # required
    #           child_directed: false, # required
    #         },
    #         idle_session_ttl_in_seconds: 1, # required
    #         bot_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #         test_bot_alias_tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] bot_name
    #   The name of the bot. The bot name must be unique in the account that
    #   creates the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot. It appears in lists to help you identify a
    #   particular bot.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permission to
    #   access the bot.
    #   @return [String]
    #
    # @!attribute [rw] data_privacy
    #   Provides information on additional privacy protections Amazon Lex
    #   should use with the bot's data.
    #   @return [Types::DataPrivacy]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The time, in seconds, that Amazon Lex should keep information about
    #   a user's conversation with the bot.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Lex deletes any data provided before the timeout.
    #
    #   You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_tags
    #   A list of tags to add to the bot. You can only add tags when you
    #   create a bot. You can't use the `UpdateBot` operation to update
    #   tags. To update tags, use the `TagResource` operation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] test_bot_alias_tags
    #   A list of tags to add to the test alias for a bot. You can only add
    #   tags when you create a bot. You can't use the `UpdateAlias`
    #   operation to update tags. To update tags on the test alias, use the
    #   `TagResource` operation.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotRequest AWS API Documentation
    #
    class CreateBotRequest < Struct.new(
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_tags,
      :test_bot_alias_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   A unique identifier for a particular bot. You use this to identify
    #   the bot when you call other Amazon Lex API operations.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name specified for the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description specified for the bot.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The IAM role specified for the bot.
    #   @return [String]
    #
    # @!attribute [rw] data_privacy
    #   The data privacy settings specified for the bot.
    #   @return [Types::DataPrivacy]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The session idle time specified for the bot.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_status
    #   Shows the current status of the bot. The bot is first in the
    #   `Creating` status. Once the bot is read for use, it changes to the
    #   `Available` status. After the bot is created, you can use the
    #   `Draft` version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp indicating the date and time that the bot was created.
    #   @return [Time]
    #
    # @!attribute [rw] bot_tags
    #   A list of tags associated with the bot.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] test_bot_alias_tags
    #   A list of tags associated with the test alias for the bot.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotResponse AWS API Documentation
    #
    class CreateBotResponse < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :bot_tags,
      :test_bot_alias_tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateBotVersionRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         description: "Description",
    #         bot_version_locale_specification: { # required
    #           "LocaleId" => {
    #             source_bot_version: "BotVersion", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to create the version for.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the version. Use the description to help identify
    #   the version in lists.
    #   @return [String]
    #
    # @!attribute [rw] bot_version_locale_specification
    #   Specifies the locales that Amazon Lex adds to this version. You can
    #   choose the `Draft` version or any other previously published version
    #   for each locale. When you specify a source version, the locale data
    #   is copied from the source version to the new version.
    #   @return [Hash<String,Types::BotVersionLocaleDetails>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotVersionRequest AWS API Documentation
    #
    class CreateBotVersionRequest < Struct.new(
      :bot_id,
      :description,
      :bot_version_locale_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The bot identifier specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the version specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version number assigned to the version.
    #   @return [String]
    #
    # @!attribute [rw] bot_version_locale_specification
    #   The source versions used for each locale in the new version.
    #   @return [Hash<String,Types::BotVersionLocaleDetails>]
    #
    # @!attribute [rw] bot_status
    #   When you send a request to create or update a bot, Amazon Lex sets
    #   the status response element to `Creating`. After Amazon Lex builds
    #   the bot, it sets status to `Available`. If Amazon Lex can't build
    #   the bot, it sets status to `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the version was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateBotVersionResponse AWS API Documentation
    #
    class CreateBotVersionResponse < Struct.new(
      :bot_id,
      :description,
      :bot_version,
      :bot_version_locale_specification,
      :bot_status,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateExportRequest
    #   data as a hash:
    #
    #       {
    #         resource_specification: { # required
    #           bot_export_specification: {
    #             bot_id: "Id", # required
    #             bot_version: "BotVersion", # required
    #           },
    #           bot_locale_export_specification: {
    #             bot_id: "Id", # required
    #             bot_version: "BotVersion", # required
    #             locale_id: "LocaleId", # required
    #           },
    #           custom_vocabulary_export_specification: {
    #             bot_id: "Id", # required
    #             bot_version: "BotVersion", # required
    #             locale_id: "LocaleId", # required
    #           },
    #         },
    #         file_format: "LexJson", # required, accepts LexJson, TSV
    #         file_password: "ImportExportFilePassword",
    #       }
    #
    # @!attribute [rw] resource_specification
    #   Specifies the type of resource to export, either a bot or a bot
    #   locale. You can only specify one type of resource to export.
    #   @return [Types::ExportResourceSpecification]
    #
    # @!attribute [rw] file_format
    #   The file format of the bot or bot locale definition files.
    #   @return [String]
    #
    # @!attribute [rw] file_password
    #   An password to use to encrypt the exported archive. Using a password
    #   is optional, but you should encrypt the archive to protect the data
    #   in transit between Amazon Lex and your local computer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateExportRequest AWS API Documentation
    #
    class CreateExportRequest < Struct.new(
      :resource_specification,
      :file_format,
      :file_password)
      SENSITIVE = [:file_password]
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   An identifier for a specific request to create an export.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   A description of the type of resource that was exported, either a
    #   bot or a bot locale.
    #   @return [Types::ExportResourceSpecification]
    #
    # @!attribute [rw] file_format
    #   The file format used for the bot or bot locale definition files.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the export. When the status is `Completed`, you can
    #   use the [DescribeExport][1] operation to get the pre-signed S3 URL
    #   link to your exported bot or bot locale.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/latest/dg/API_DescribeExport.html
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the request to export a bot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateExportResponse AWS API Documentation
    #
    class CreateExportResponse < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateIntentRequest
    #   data as a hash:
    #
    #       {
    #         intent_name: "Name", # required
    #         description: "Description",
    #         parent_intent_signature: "IntentSignature",
    #         sample_utterances: [
    #           {
    #             utterance: "Utterance", # required
    #           },
    #         ],
    #         dialog_code_hook: {
    #           enabled: false, # required
    #         },
    #         fulfillment_code_hook: {
    #           enabled: false, # required
    #           post_fulfillment_status_specification: {
    #             success_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             failure_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             timeout_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #           },
    #           fulfillment_updates_specification: {
    #             active: false, # required
    #             start_response: {
    #               delay_in_seconds: 1, # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             update_response: {
    #               frequency_in_seconds: 1, # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             timeout_in_seconds: 1,
    #           },
    #         },
    #         intent_confirmation_setting: {
    #           prompt_specification: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             max_retries: 1, # required
    #             allow_interrupt: false,
    #           },
    #           declination_response: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           active: false,
    #         },
    #         intent_closing_setting: {
    #           closing_response: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           active: false,
    #         },
    #         input_contexts: [
    #           {
    #             name: "Name", # required
    #           },
    #         ],
    #         output_contexts: [
    #           {
    #             name: "Name", # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #         ],
    #         kendra_configuration: {
    #           kendra_index: "KendraIndexArn", # required
    #           query_filter_string_enabled: false,
    #           query_filter_string: "QueryFilterString",
    #         },
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] intent_name
    #   The name of the intent. Intent names must be unique in the locale
    #   that contains the intent and cannot match the name of any built-in
    #   intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the intent. Use the description to help identify
    #   the intent in lists.
    #   @return [String]
    #
    # @!attribute [rw] parent_intent_signature
    #   A unique identifier for the built-in intent to base this intent on.
    #   @return [String]
    #
    # @!attribute [rw] sample_utterances
    #   An array of strings that a user might say to signal the intent. For
    #   example, "I want a pizza", or "I want a \\\{PizzaSize\\} pizza".
    #
    #   In an utterance, slot names are enclosed in curly braces ("\\\{",
    #   "\\}") to indicate where they should be displayed in the utterance
    #   shown to the user..
    #   @return [Array<Types::SampleUtterance>]
    #
    # @!attribute [rw] dialog_code_hook
    #   Specifies that Amazon Lex invokes the alias Lambda function for each
    #   user input. You can invoke this Lambda function to personalize user
    #   interaction.
    #
    #   For example, suppose that your bot determines that the user's name
    #   is John. You Lambda function might retrieve John's information from
    #   a backend database and prepopulate some of the values. For example,
    #   if you find that John is gluten intolerant, you might set the
    #   corresponding intent slot, `glutenIntolerant` to `true`. You might
    #   find John's phone number and set the corresponding session
    #   attribute.
    #   @return [Types::DialogCodeHookSettings]
    #
    # @!attribute [rw] fulfillment_code_hook
    #   Specifies that Amazon Lex invokes the alias Lambda function when the
    #   intent is ready for fulfillment. You can invoke this function to
    #   complete the bot's transaction with the user.
    #
    #   For example, in a pizza ordering bot, the Lambda function can look
    #   up the closest pizza restaurant to the customer's location and then
    #   place an order on the customer's behalf.
    #   @return [Types::FulfillmentCodeHookSettings]
    #
    # @!attribute [rw] intent_confirmation_setting
    #   Provides prompts that Amazon Lex sends to the user to confirm the
    #   completion of an intent. If the user answers "no," the settings
    #   contain a statement that is sent to the user to end the intent.
    #   @return [Types::IntentConfirmationSetting]
    #
    # @!attribute [rw] intent_closing_setting
    #   Sets the response that Amazon Lex sends to the user when the intent
    #   is closed.
    #   @return [Types::IntentClosingSetting]
    #
    # @!attribute [rw] input_contexts
    #   A list of contexts that must be active for this intent to be
    #   considered by Amazon Lex.
    #
    #   When an intent has an input context list, Amazon Lex only considers
    #   using the intent in an interaction with the user when the specified
    #   contexts are included in the active context list for the session. If
    #   the contexts are not active, then Amazon Lex will not use the
    #   intent.
    #
    #   A context can be automatically activated using the `outputContexts`
    #   property or it can be set at runtime.
    #
    #   For example, if there are two intents with different input contexts
    #   that respond to the same utterances, only the intent with the active
    #   context will respond.
    #
    #   An intent may have up to 5 input contexts. If an intent has multiple
    #   input contexts, all of the contexts must be active to consider the
    #   intent.
    #   @return [Array<Types::InputContext>]
    #
    # @!attribute [rw] output_contexts
    #   A lists of contexts that the intent activates when it is fulfilled.
    #
    #   You can use an output context to indicate the intents that Amazon
    #   Lex should consider for the next turn of the conversation with a
    #   customer.
    #
    #   When you use the `outputContextsList` property, all of the contexts
    #   specified in the list are activated when the intent is fulfilled.
    #   You can set up to 10 output contexts. You can also set the number of
    #   conversation turns that the context should be active, or the length
    #   of time that the context should be active.
    #   @return [Array<Types::OutputContext>]
    #
    # @!attribute [rw] kendra_configuration
    #   Configuration information required to use the
    #   `AMAZON.KendraSearchIntent` intent to connect to an Amazon Kendra
    #   index. The `AMAZON.KendraSearchIntent` intent is called when Amazon
    #   Lex can't determine another intent to invoke.
    #   @return [Types::KendraConfiguration]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with this intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the version of the bot associated with this
    #   intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale where this intent is used.
    #   All of the bots, slot types, and slots used by the intent must have
    #   the same locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateIntentRequest AWS API Documentation
    #
    class CreateIntentRequest < Struct.new(
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] intent_id
    #   A unique identifier for the intent.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The name specified for the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description specified for the intent.
    #   @return [String]
    #
    # @!attribute [rw] parent_intent_signature
    #   The signature of the parent intent specified for the intent.
    #   @return [String]
    #
    # @!attribute [rw] sample_utterances
    #   The sample utterances specified for the intent.
    #   @return [Array<Types::SampleUtterance>]
    #
    # @!attribute [rw] dialog_code_hook
    #   The dialog Lambda function specified for the intent.
    #   @return [Types::DialogCodeHookSettings]
    #
    # @!attribute [rw] fulfillment_code_hook
    #   The fulfillment Lambda function specified for the intent.
    #   @return [Types::FulfillmentCodeHookSettings]
    #
    # @!attribute [rw] intent_confirmation_setting
    #   The confirmation setting specified for the intent.
    #   @return [Types::IntentConfirmationSetting]
    #
    # @!attribute [rw] intent_closing_setting
    #   The closing setting specified for the intent.
    #   @return [Types::IntentClosingSetting]
    #
    # @!attribute [rw] input_contexts
    #   The list of input contexts specified for the intent.
    #   @return [Array<Types::InputContext>]
    #
    # @!attribute [rw] output_contexts
    #   The list of output contexts specified for the intent.
    #   @return [Array<Types::OutputContext>]
    #
    # @!attribute [rw] kendra_configuration
    #   Configuration for searching a Amazon Kendra index specified for the
    #   intent.
    #   @return [Types::KendraConfiguration]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the version of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale that the intent is specified to use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the intent was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateIntentResponse AWS API Documentation
    #
    class CreateIntentResponse < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         policy: "Policy", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A resource policy to add to the resource. The policy is a JSON
    #   structure that contains one or more statements that define the
    #   policy. The policy must follow the IAM syntax. For more information
    #   about the contents of a JSON policy document, see [ IAM JSON policy
    #   reference ][1].
    #
    #   If the policy isn't valid, Amazon Lex returns a validation
    #   exception.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateResourcePolicyRequest AWS API Documentation
    #
    class CreateResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy was attached to.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The current revision of the resource policy. Use the revision ID to
    #   make sure that you are updating the most current version of a
    #   resource policy when you add a policy statement to a resource,
    #   delete a resource, or update a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateResourcePolicyResponse AWS API Documentation
    #
    class CreateResourcePolicyResponse < Struct.new(
      :resource_arn,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateResourcePolicyStatementRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         statement_id: "Name", # required
    #         effect: "Allow", # required, accepts Allow, Deny
    #         principal: [ # required
    #           {
    #             service: "ServicePrincipal",
    #             arn: "PrincipalArn",
    #           },
    #         ],
    #         action: ["Operation"], # required
    #         condition: {
    #           "ConditionOperator" => {
    #             "ConditionKey" => "ConditionValue",
    #           },
    #         },
    #         expected_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   The name of the statement. The ID is the same as the `Sid` IAM
    #   property. The statement name must be unique within the policy. For
    #   more information, see [IAM JSON policy elements: Sid][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_sid.html
    #   @return [String]
    #
    # @!attribute [rw] effect
    #   Determines whether the statement allows or denies access to the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   An IAM principal, such as an IAM users, IAM roles, or AWS services
    #   that is allowed or denied access to a resource. For more
    #   information, see [AWS JSON policy elements: Principal][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    #   @return [Array<Types::Principal>]
    #
    # @!attribute [rw] action
    #   The Amazon Lex action that this policy either allows or denies. The
    #   action must apply to the resource type of the specified ARN. For
    #   more information, see [ Actions, resources, and condition keys for
    #   Amazon Lex V2][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonlexv2.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] condition
    #   Specifies a condition when the policy is in effect. If the principal
    #   of the policy is a service principal, you must provide two condition
    #   blocks, one with a SourceAccount global condition key and one with a
    #   SourceArn global condition key.
    #
    #   For more information, see [IAM JSON policy elements: Condition ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html
    #   @return [Hash<String,Hash<String,String>>]
    #
    # @!attribute [rw] expected_revision_id
    #   The identifier of the revision of the policy to edit. If this
    #   revision ID doesn't match the current revision ID, Amazon Lex
    #   throws an exception.
    #
    #   If you don't specify a revision, Amazon Lex overwrites the contents
    #   of the policy with the new values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateResourcePolicyStatementRequest AWS API Documentation
    #
    class CreateResourcePolicyStatementRequest < Struct.new(
      :resource_arn,
      :statement_id,
      :effect,
      :principal,
      :action,
      :condition,
      :expected_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The current revision of the resource policy. Use the revision ID to
    #   make sure that you are updating the most current version of a
    #   resource policy when you add a policy statement to a resource,
    #   delete a resource, or update a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateResourcePolicyStatementResponse AWS API Documentation
    #
    class CreateResourcePolicyStatementResponse < Struct.new(
      :resource_arn,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSlotRequest
    #   data as a hash:
    #
    #       {
    #         slot_name: "Name", # required
    #         description: "Description",
    #         slot_type_id: "BuiltInOrCustomSlotTypeId", # required
    #         value_elicitation_setting: { # required
    #           default_value_specification: {
    #             default_value_list: [ # required
    #               {
    #                 default_value: "SlotDefaultValueString", # required
    #               },
    #             ],
    #           },
    #           slot_constraint: "Required", # required, accepts Required, Optional
    #           prompt_specification: {
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             max_retries: 1, # required
    #             allow_interrupt: false,
    #           },
    #           sample_utterances: [
    #             {
    #               utterance: "Utterance", # required
    #             },
    #           ],
    #           wait_and_continue_specification: {
    #             waiting_response: { # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             continue_response: { # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             still_waiting_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               frequency_in_seconds: 1, # required
    #               timeout_in_seconds: 1, # required
    #               allow_interrupt: false,
    #             },
    #             active: false,
    #           },
    #         },
    #         obfuscation_setting: {
    #           obfuscation_setting_type: "None", # required, accepts None, DefaultObfuscation
    #         },
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         intent_id: "Id", # required
    #         multiple_values_setting: {
    #           allow_multiple_values: false,
    #         },
    #       }
    #
    # @!attribute [rw] slot_name
    #   The name of the slot. Slot names must be unique within the bot that
    #   contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot. Use this to help identify the slot in
    #   lists.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_id
    #   The unique identifier for the slot type associated with this slot.
    #   The slot type determines the values that can be entered into the
    #   slot.
    #   @return [String]
    #
    # @!attribute [rw] value_elicitation_setting
    #   Specifies prompts that Amazon Lex sends to the user to elicit a
    #   response that provides the value for the slot.
    #   @return [Types::SlotValueElicitationSetting]
    #
    # @!attribute [rw] obfuscation_setting
    #   Determines how slot values are used in Amazon CloudWatch logs. If
    #   the value of the `obfuscationSetting` parameter is
    #   `DefaultObfuscation`, slot values are obfuscated in the log output.
    #   If the value is `None`, the actual value is present in the log
    #   output.
    #
    #   The default is to obfuscate values in the CloudWatch logs.
    #   @return [Types::ObfuscationSetting]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the slot will be used
    #   in. The string must match one of the supported locales. All of the
    #   bots, intents, slot types used by the slot must have the same
    #   locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The identifier of the intent that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] multiple_values_setting
    #   Indicates whether the slot returns multiple values in one response.
    #   Multi-value slots are only available in the en-US locale. If you set
    #   this value to `true` in any other locale, Amazon Lex throws a
    #   `ValidationException`.
    #
    #   If the `multipleValuesSetting` is not set, the default value is
    #   `false`.
    #   @return [Types::MultipleValuesSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateSlotRequest AWS API Documentation
    #
    class CreateSlotRequest < Struct.new(
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :multiple_values_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slot_id
    #   The unique identifier associated with the slot. Use this to identify
    #   the slot when you update or delete it.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   The name specified for the slot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_id
    #   The unique identifier of the slot type associated with this slot.
    #   @return [String]
    #
    # @!attribute [rw] value_elicitation_setting
    #   The value elicitation settings specified for the slot.
    #   @return [Types::SlotValueElicitationSetting]
    #
    # @!attribute [rw] obfuscation_setting
    #   Indicates whether the slot is configured to obfuscate values in
    #   Amazon CloudWatch logs.
    #   @return [Types::ObfuscationSetting]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and local specified for the slot.
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The unique identifier of the intent associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The timestamp of the date and time that the slot was created.
    #   @return [Time]
    #
    # @!attribute [rw] multiple_values_setting
    #   Indicates whether the slot returns multiple values in one response.
    #   @return [Types::MultipleValuesSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateSlotResponse AWS API Documentation
    #
    class CreateSlotResponse < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :multiple_values_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSlotTypeRequest
    #   data as a hash:
    #
    #       {
    #         slot_type_name: "Name", # required
    #         description: "Description",
    #         slot_type_values: [
    #           {
    #             sample_value: {
    #               value: "Value", # required
    #             },
    #             synonyms: [
    #               {
    #                 value: "Value", # required
    #               },
    #             ],
    #           },
    #         ],
    #         value_selection_setting: {
    #           resolution_strategy: "OriginalValue", # required, accepts OriginalValue, TopResolution
    #           regex_filter: {
    #             pattern: "RegexPattern", # required
    #           },
    #           advanced_recognition_setting: {
    #             audio_recognition_strategy: "UseSlotValuesAsCustomVocabulary", # accepts UseSlotValuesAsCustomVocabulary
    #           },
    #         },
    #         parent_slot_type_signature: "SlotTypeSignature",
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         external_source_setting: {
    #           grammar_slot_type_setting: {
    #             source: {
    #               s3_bucket_name: "S3BucketName", # required
    #               s3_object_key: "S3ObjectPath", # required
    #               kms_key_arn: "KmsKeyArn",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] slot_type_name
    #   The name for the slot. A slot type name must be unique within the
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the slot type. Use the description to help identify
    #   the slot type in lists.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_values
    #   A list of `SlotTypeValue` objects that defines the values that the
    #   slot type can take. Each value can have a list of synonyms,
    #   additional values that help train the machine learning model about
    #   the values that it resolves for a slot.
    #   @return [Array<Types::SlotTypeValue>]
    #
    # @!attribute [rw] value_selection_setting
    #   Determines the strategy that Amazon Lex uses to select a value from
    #   the list of possible values. The field can be set to one of the
    #   following values:
    #
    #   * `OriginalValue` - Returns the value entered by the user, if the
    #     user value is similar to the slot value.
    #
    #   * `TopResolution` - If there is a resolution list for the slot,
    #     return the first value in the resolution list. If there is no
    #     resolution list, return null.
    #
    #   If you don't specify the `valueSelectionSetting` parameter, the
    #   default is `OriginalValue`.
    #   @return [Types::SlotValueSelectionSetting]
    #
    # @!attribute [rw] parent_slot_type_signature
    #   The built-in slot type used as a parent of this slot type. When you
    #   define a parent slot type, the new slot type has the configuration
    #   of the parent slot type.
    #
    #   Only `AMAZON.AlphaNumeric` is supported.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with this slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the bot version associated with this slot type.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the slot type will be
    #   used in. The string must match one of the supported locales. All of
    #   the bots, intents, and slots used by the slot type must have the
    #   same locale. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] external_source_setting
    #   Sets the type of external information used to create the slot type.
    #   @return [Types::ExternalSourceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateSlotTypeRequest AWS API Documentation
    #
    class CreateSlotTypeRequest < Struct.new(
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :external_source_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slot_type_id
    #   The unique identifier assigned to the slot type. Use this to
    #   identify the slot type in the `UpdateSlotType` and `DeleteSlotType`
    #   operations.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_name
    #   The name specified for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description specified for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_values
    #   The list of values that the slot type can assume.
    #   @return [Array<Types::SlotTypeValue>]
    #
    # @!attribute [rw] value_selection_setting
    #   The strategy that Amazon Lex uses to select a value from the list of
    #   possible values.
    #   @return [Types::SlotValueSelectionSetting]
    #
    # @!attribute [rw] parent_slot_type_signature
    #   The signature of the base slot type specified for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier for the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The specified language and local specified for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the slot type was created.
    #   @return [Time]
    #
    # @!attribute [rw] external_source_setting
    #   The type of external information used to create the slot type.
    #   @return [Types::ExternalSourceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateSlotTypeResponse AWS API Documentation
    #
    class CreateSlotTypeResponse < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :external_source_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateUploadUrlRequest AWS API Documentation
    #
    class CreateUploadUrlRequest < Aws::EmptyStructure; end

    # @!attribute [rw] import_id
    #   An identifier for a unique import job. Use it when you call the
    #   [StartImport][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_StartImport.html
    #   @return [String]
    #
    # @!attribute [rw] upload_url
    #   A pre-signed S3 write URL. Upload the zip archive file that contains
    #   the definition of your bot or bot locale.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CreateUploadUrlResponse AWS API Documentation
    #
    class CreateUploadUrlResponse < Struct.new(
      :import_id,
      :upload_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A custom response string that Amazon Lex sends to your application.
    # You define the content and structure the string.
    #
    # @note When making an API call, you may pass CustomPayload
    #   data as a hash:
    #
    #       {
    #         value: "CustomPayloadValue", # required
    #       }
    #
    # @!attribute [rw] value
    #   The string that is sent to your application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CustomPayload AWS API Documentation
    #
    class CustomPayload < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the parameters required for exporting a custom vocabulary.
    #
    # @note When making an API call, you may pass CustomVocabularyExportSpecification
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the custom vocabulary to
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the custom vocabulary to
    #   export.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale of the bot that contains the custom vocabulary to export.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CustomVocabularyExportSpecification AWS API Documentation
    #
    class CustomVocabularyExportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the parameters required for importing a custom vocabulary.
    #
    # @note When making an API call, you may pass CustomVocabularyImportSpecification
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to import the custom vocabulary to.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to import the custom vocabulary to.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the local to import the custom vocabulary to. The
    #   value must be `en_GB`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/CustomVocabularyImportSpecification AWS API Documentation
    #
    class CustomVocabularyImportSpecification < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # By default, data stored by Amazon Lex is encrypted. The `DataPrivacy`
    # structure provides settings that determine how Amazon Lex handles
    # special cases of securing the data for your bot.
    #
    # @note When making an API call, you may pass DataPrivacy
    #   data as a hash:
    #
    #       {
    #         child_directed: false, # required
    #       }
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
    #   children under age 13 and subject to COPPA. If your use of Amazon
    #   Lex relates to a website, program, or other application that is
    #   directed in whole or in part, to children under age 13, you must
    #   obtain any required verifiable parental consent under COPPA. For
    #   information regarding the use of Amazon Lex in connection with
    #   websites, programs, or other applications that are directed or
    #   targeted, in whole or in part, to children under age 13, see the
    #   [Amazon Lex FAQ][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/lex/faqs#data-security
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DataPrivacy AWS API Documentation
    #
    class DataPrivacy < Struct.new(
      :child_directed)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object used for specifying the data range that the customer wants
    # Amazon Lex to read through in the input transcripts.
    #
    # @note When making an API call, you may pass DateRangeFilter
    #   data as a hash:
    #
    #       {
    #         start_date_time: Time.now, # required
    #         end_date_time: Time.now, # required
    #       }
    #
    # @!attribute [rw] start_date_time
    #   A timestamp indicating the start date for the date range filter.
    #   @return [Time]
    #
    # @!attribute [rw] end_date_time
    #   A timestamp indicating the end date for the date range filter.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DateRangeFilter AWS API Documentation
    #
    class DateRangeFilter < Struct.new(
      :start_date_time,
      :end_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotAliasRequest
    #   data as a hash:
    #
    #       {
    #         bot_alias_id: "BotAliasId", # required
    #         bot_id: "Id", # required
    #         skip_resource_in_use_check: false,
    #       }
    #
    # @!attribute [rw] bot_alias_id
    #   The unique identifier of the bot alias to delete.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with the alias to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   When this parameter is true, Amazon Lex doesn't check to see if any
    #   other resource is using the alias before it is deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotAliasRequest AWS API Documentation
    #
    class DeleteBotAliasRequest < Struct.new(
      :bot_alias_id,
      :bot_id,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_alias_id
    #   The unique identifier of the bot alias to delete.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the alias to delete.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_status
    #   The current status of the alias. The status is `Deleting` while the
    #   alias is in the process of being deleted. Once the alias is deleted,
    #   it will no longer appear in the list of aliases returned by the
    #   `ListBotAliases` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotAliasResponse AWS API Documentation
    #
    class DeleteBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_id,
      :bot_alias_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotLocaleRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that will be deleted. The
    #   string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotLocaleRequest AWS API Documentation
    #
    class DeleteBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contained the deleted locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contained the deleted locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the deleted locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_locale_status
    #   The status of deleting the bot locale. The locale first enters the
    #   `Deleting` status. Once the locale is deleted it no longer appears
    #   in the list of locales for the bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotLocaleResponse AWS API Documentation
    #
    class DeleteBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_locale_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         skip_resource_in_use_check: false,
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to delete.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   When `true`, Amazon Lex doesn't check to see if another resource,
    #   such as an alias, is using the bot before it is deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotRequest AWS API Documentation
    #
    class DeleteBotRequest < Struct.new(
      :bot_id,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that Amazon Lex is deleting.
    #   @return [String]
    #
    # @!attribute [rw] bot_status
    #   The current status of the bot. The status is `Deleting` while the
    #   bot and its associated resources are being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotResponse AWS API Documentation
    #
    class DeleteBotResponse < Struct.new(
      :bot_id,
      :bot_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteBotVersionRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "NumericalBotVersion", # required
    #         skip_resource_in_use_check: false,
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the version.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to delete.
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   By default, the `DeleteBotVersion` operations throws a
    #   `ResourceInUseException` exception if you try to delete a bot
    #   version that has an alias pointing at it. Set the
    #   `skipResourceInUseCheck` parameter to `true` to skip this check and
    #   remove the version even if an alias points to it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotVersionRequest AWS API Documentation
    #
    class DeleteBotVersionRequest < Struct.new(
      :bot_id,
      :bot_version,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] bot_status
    #   The current status of the bot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteBotVersionResponse AWS API Documentation
    #
    class DeleteBotVersionResponse < Struct.new(
      :bot_id,
      :bot_version,
      :bot_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCustomVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot to remove the custom vocabulary
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to remove the custom vocabulary from.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale identifier for the locale that contains the custom
    #   vocabulary to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteCustomVocabularyRequest AWS API Documentation
    #
    class DeleteCustomVocabularyRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that the custom vocabulary was removed
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that the custom vocabulary was removed from.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale identifier for the locale that the custom vocabulary was
    #   removed from.
    #   @return [String]
    #
    # @!attribute [rw] custom_vocabulary_status
    #   The status of removing the custom vocabulary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteCustomVocabularyResponse AWS API Documentation
    #
    class DeleteCustomVocabularyResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteExportRequest
    #   data as a hash:
    #
    #       {
    #         export_id: "Id", # required
    #       }
    #
    # @!attribute [rw] export_id
    #   The unique identifier of the export to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteExportRequest AWS API Documentation
    #
    class DeleteExportRequest < Struct.new(
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   The unique identifier of the deleted export.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The current status of the deletion. When the deletion is complete,
    #   the export will no longer be returned by the [ListExports][1]
    #   operation and calls to the [ DescribeExport][2] operation with the
    #   export identifier will fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListExports.html
    #   [2]: https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeExport.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteExportResponse AWS API Documentation
    #
    class DeleteExportResponse < Struct.new(
      :export_id,
      :export_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteImportRequest
    #   data as a hash:
    #
    #       {
    #         import_id: "Id", # required
    #       }
    #
    # @!attribute [rw] import_id
    #   The unique identifier of the import to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteImportRequest AWS API Documentation
    #
    class DeleteImportRequest < Struct.new(
      :import_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   The unique identifier of the deleted import.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The current status of the deletion. When the deletion is complete,
    #   the import will no longer be returned by the [ListImports][1]
    #   operation and calls to the [DescribeImport][2] operation with the
    #   import identifier will fail.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListImports.html
    #   [2]: https://docs.aws.amazon.com/lexv2/latest/dg/API_DescribeImport.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteImportResponse AWS API Documentation
    #
    class DeleteImportResponse < Struct.new(
      :import_id,
      :import_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteIntentRequest
    #   data as a hash:
    #
    #       {
    #         intent_id: "Id", # required
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] intent_id
    #   The unique identifier of the intent to delete.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale where the bot will be
    #   deleted. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteIntentRequest AWS API Documentation
    #
    class DeleteIntentRequest < Struct.new(
      :intent_id,
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         expected_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that has the
    #   resource policy attached.
    #   @return [String]
    #
    # @!attribute [rw] expected_revision_id
    #   The identifier of the revision to edit. If this ID doesn't match
    #   the current revision number, Amazon Lex returns an exception
    #
    #   If you don't specify a revision ID, Amazon Lex will delete the
    #   current policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      :expected_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy was deleted from.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The current revision of the resource policy. Use the revision ID to
    #   make sure that you are updating the most current version of a
    #   resource policy when you add a policy statement to a resource,
    #   delete a resource, or update a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Struct.new(
      :resource_arn,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteResourcePolicyStatementRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         statement_id: "Name", # required
    #         expected_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] statement_id
    #   The name of the statement (SID) to delete from the policy.
    #   @return [String]
    #
    # @!attribute [rw] expected_revision_id
    #   The identifier of the revision of the policy to delete the statement
    #   from. If this revision ID doesn't match the current revision ID,
    #   Amazon Lex throws an exception.
    #
    #   If you don't specify a revision, Amazon Lex removes the current
    #   contents of the statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteResourcePolicyStatementRequest AWS API Documentation
    #
    class DeleteResourcePolicyStatementRequest < Struct.new(
      :resource_arn,
      :statement_id,
      :expected_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy statement was removed from.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The current revision of the resource policy. Use the revision ID to
    #   make sure that you are updating the most current version of a
    #   resource policy when you add a policy statement to a resource,
    #   delete a resource, or update a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteResourcePolicyStatementResponse AWS API Documentation
    #
    class DeleteResourcePolicyStatementResponse < Struct.new(
      :resource_arn,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSlotRequest
    #   data as a hash:
    #
    #       {
    #         slot_id: "Id", # required
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         intent_id: "Id", # required
    #       }
    #
    # @!attribute [rw] slot_id
    #   The identifier of the slot to delete.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the slot to delete.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot to delete.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the slot will be
    #   deleted from. The string must match one of the supported locales.
    #   For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The identifier of the intent associated with the slot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteSlotRequest AWS API Documentation
    #
    class DeleteSlotRequest < Struct.new(
      :slot_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSlotTypeRequest
    #   data as a hash:
    #
    #       {
    #         slot_type_id: "Id", # required
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         skip_resource_in_use_check: false,
    #       }
    #
    # @!attribute [rw] slot_type_id
    #   The identifier of the slot type to delete.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the slot type will be
    #   deleted from. The string must match one of the supported locales.
    #   For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] skip_resource_in_use_check
    #   By default, the `DeleteSlotType` operations throws a
    #   `ResourceInUseException` exception if you try to delete a slot type
    #   used by a slot. Set the `skipResourceInUseCheck` parameter to `true`
    #   to skip this check and remove the slot type even if a slot uses it.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteSlotTypeRequest AWS API Documentation
    #
    class DeleteSlotTypeRequest < Struct.new(
      :slot_type_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :skip_resource_in_use_check)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUtterancesRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         locale_id: "LocaleId",
    #         session_id: "SessionId",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the utterances.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale where the utterances were
    #   collected. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The unique identifier of the session with the user. The ID is
    #   returned in the response from the [RecognizeText][1] and
    #   [RecognizeUtterance][2] operations.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_RecognizeText.html
    #   [2]: https://docs.aws.amazon.com/lexv2/latest/dg/API_runtime_RecognizeUtterance.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteUtterancesRequest AWS API Documentation
    #
    class DeleteUtterancesRequest < Struct.new(
      :bot_id,
      :locale_id,
      :session_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DeleteUtterancesResponse AWS API Documentation
    #
    class DeleteUtterancesResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeBotAliasRequest
    #   data as a hash:
    #
    #       {
    #         bot_alias_id: "BotAliasId", # required
    #         bot_id: "Id", # required
    #       }
    #
    # @!attribute [rw] bot_alias_id
    #   The identifier of the bot alias to describe.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the bot alias to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotAliasRequest AWS API Documentation
    #
    class DescribeBotAliasRequest < Struct.new(
      :bot_alias_id,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_alias_id
    #   The identifier of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_name
    #   The name of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_locale_settings
    #   The locale settings that are unique to the alias.
    #   @return [Hash<String,Types::BotAliasLocaleSettings>]
    #
    # @!attribute [rw] conversation_log_settings
    #   Specifics of how Amazon Lex logs text and audio conversations with
    #   the bot associated with the alias.
    #   @return [Types::ConversationLogSettings]
    #
    # @!attribute [rw] sentiment_analysis_settings
    #   Determines whether Amazon Lex will use Amazon Comprehend to detect
    #   the sentiment of user utterances.
    #   @return [Types::SentimentAnalysisSettings]
    #
    # @!attribute [rw] bot_alias_history_events
    #   A list of events that affect a bot alias. For example, an event is
    #   recorded when the version that the alias points to changes.
    #   @return [Array<Types::BotAliasHistoryEvent>]
    #
    # @!attribute [rw] bot_alias_status
    #   The current status of the alias. When the alias is `Available`, the
    #   alias is ready for use with your bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the alias was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the alias was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotAliasResponse AWS API Documentation
    #
    class DescribeBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_history_events,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBotLocaleRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the version of the bot associated with the locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The unique identifier of the locale to describe. The string must
    #   match one of the supported locales. For more information, see
    #   [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotLocaleRequest AWS API Documentation
    #
    class DescribeBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the version of the bot associated with the locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The unique identifier of the described locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_name
    #   The name of the locale.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the locale.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence_threshold
    #   The confidence threshold where Amazon Lex inserts the
    #   `AMAZON.FallbackIntent` and `AMAZON.KendraSearchIntent` intents in
    #   the list of possible intents for an utterance.
    #   @return [Float]
    #
    # @!attribute [rw] voice_settings
    #   The Amazon Polly voice Amazon Lex uses for voice interaction with
    #   the user.
    #   @return [Types::VoiceSettings]
    #
    # @!attribute [rw] intents_count
    #   The number of intents defined for the locale.
    #   @return [Integer]
    #
    # @!attribute [rw] slot_types_count
    #   The number of slot types defined for the locale.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_locale_status
    #   The status of the bot. If the status is `Failed`, the reasons for
    #   the failure are listed in the `failureReasons` field.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   if `botLocaleStatus` is `Failed`, Amazon Lex explains why it failed
    #   to build the bot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the locale was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the locale was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] last_build_submitted_date_time
    #   The date and time that the locale was last submitted for building.
    #   @return [Time]
    #
    # @!attribute [rw] bot_locale_history_events
    #   History of changes, such as when a locale is used in an alias, that
    #   have taken place for the locale.
    #   @return [Array<Types::BotLocaleHistoryEvent>]
    #
    # @!attribute [rw] recommended_actions
    #   Recommended actions to take to resolve an error in the
    #   `failureReasons` field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotLocaleResponse AWS API Documentation
    #
    class DescribeBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :locale_name,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :intents_count,
      :slot_types_count,
      :bot_locale_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :last_build_submitted_date_time,
      :bot_locale_history_events,
      :recommended_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBotRecommendationRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         bot_recommendation_id: "Id", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with the bot
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   to describe. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The identifier of the bot recommendation to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotRecommendationRequest AWS API Documentation
    #
    class DescribeBotRecommendationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   to describe.
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_status
    #   The status of the bot recommendation. If the status is Failed, then
    #   the reasons for the failure are listed in the failureReasons field.
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The identifier of the bot recommendation being described.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   If botRecommendationStatus is Failed, Amazon Lex explains why.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the bot recommendation was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the bot recommendation was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] transcript_source_setting
    #   The object representing the Amazon S3 bucket containing the
    #   transcript, as well as the associated metadata.
    #   @return [Types::TranscriptSourceSetting]
    #
    # @!attribute [rw] encryption_setting
    #   The object representing the passwords that were used to encrypt the
    #   data related to the bot recommendation results, as well as the KMS
    #   key ARN used to encrypt the associated metadata.
    #   @return [Types::EncryptionSetting]
    #
    # @!attribute [rw] bot_recommendation_results
    #   The object representing the URL of the bot definition, the URL of
    #   the associated transcript and a statistical summary of the bot
    #   recommendation results.
    #   @return [Types::BotRecommendationResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotRecommendationResponse AWS API Documentation
    #
    class DescribeBotRecommendationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :transcript_source_setting,
      :encryption_setting,
      :bot_recommendation_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBotRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotRequest AWS API Documentation
    #
    class DescribeBotRequest < Struct.new(
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permission to
    #   access the bot.
    #   @return [String]
    #
    # @!attribute [rw] data_privacy
    #   Settings for managing data privacy of the bot and its conversations
    #   with users.
    #   @return [Types::DataPrivacy]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The maximum time in seconds that Amazon Lex retains the data
    #   gathered in a conversation.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_status
    #   The current status of the bot. When the status is `Available` the
    #   bot is ready to be used in conversations with users.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the bot was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotResponse AWS API Documentation
    #
    class DescribeBotResponse < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeBotVersionRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "NumericalBotVersion", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot containing the version to return metadata
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to return metadata for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotVersionRequest AWS API Documentation
    #
    class DescribeBotVersionRequest < Struct.new(
      :bot_id,
      :bot_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the version.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot that contains the version.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to describe.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description specified for the bot.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permission to
    #   access the bot version.
    #   @return [String]
    #
    # @!attribute [rw] data_privacy
    #   Data privacy settings for the bot version.
    #   @return [Types::DataPrivacy]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The number of seconds that a session with the bot remains active
    #   before it is discarded by Amazon Lex.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_status
    #   The current status of the bot. When the status is `Available`, the
    #   bot version is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   If the `botStatus` is `Failed`, this contains a list of reasons that
    #   the version couldn't be built.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot version was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeBotVersionResponse AWS API Documentation
    #
    class DescribeBotVersionResponse < Struct.new(
      :bot_id,
      :bot_name,
      :bot_version,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :failure_reasons,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCustomVocabularyMetadataRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the custom
    #   vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The bot version of the bot to return metadata for.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale to return the custom vocabulary information for. The
    #   locale must be `en_GB`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeCustomVocabularyMetadataRequest AWS API Documentation
    #
    class DescribeCustomVocabularyMetadataRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the custom vocabulary to
    #   describe.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale that contains the custom vocabulary to describe.
    #   @return [String]
    #
    # @!attribute [rw] custom_vocabulary_status
    #   The status of the custom vocabulary. If the status is `Ready` the
    #   custom vocabulary is ready to use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the custom vocabulary was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the custom vocabulary was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeCustomVocabularyMetadataResponse AWS API Documentation
    #
    class DescribeCustomVocabularyMetadataResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :custom_vocabulary_status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeExportRequest
    #   data as a hash:
    #
    #       {
    #         export_id: "Id", # required
    #       }
    #
    # @!attribute [rw] export_id
    #   The unique identifier of the export to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeExportRequest AWS API Documentation
    #
    class DescribeExportRequest < Struct.new(
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   The unique identifier of the described export.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   The bot, bot ID, and optional locale ID of the exported bot or bot
    #   locale.
    #   @return [Types::ExportResourceSpecification]
    #
    # @!attribute [rw] file_format
    #   The file format used in the files that describe the resource.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the export. When the status is `Complete` the export
    #   archive file is available for download.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   If the `exportStatus` is failed, contains one or more reasons why
    #   the export could not be completed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] download_url
    #   A pre-signed S3 URL that points to the bot or bot locale archive.
    #   The URL is only available for 5 minutes after calling the
    #   `DescribeExport` operation.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the export was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The last date and time that the export was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeExportResponse AWS API Documentation
    #
    class DescribeExportResponse < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :failure_reasons,
      :download_url,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeImportRequest
    #   data as a hash:
    #
    #       {
    #         import_id: "Id", # required
    #       }
    #
    # @!attribute [rw] import_id
    #   The unique identifier of the import to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeImportRequest AWS API Documentation
    #
    class DescribeImportRequest < Struct.new(
      :import_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   The unique identifier of the described import.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   The specifications of the imported bot, bot locale, or custom
    #   vocabulary.
    #   @return [Types::ImportResourceSpecification]
    #
    # @!attribute [rw] imported_resource_id
    #   The unique identifier that Amazon Lex assigned to the resource
    #   created by the import.
    #   @return [String]
    #
    # @!attribute [rw] imported_resource_name
    #   The name of the imported resource.
    #   @return [String]
    #
    # @!attribute [rw] merge_strategy
    #   The strategy used when there was a name conflict between the
    #   imported resource and an existing resource. When the merge strategy
    #   is `FailOnConflict` existing resources are not overwritten and the
    #   import fails.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the import process. When the status is `Completed` the
    #   resource is imported and ready for use.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   If the `importStatus` field is `Failed`, this provides one or more
    #   reasons for the failure.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the import was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the import was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeImportResponse AWS API Documentation
    #
    class DescribeImportResponse < Struct.new(
      :import_id,
      :resource_specification,
      :imported_resource_id,
      :imported_resource_name,
      :merge_strategy,
      :import_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeIntentRequest
    #   data as a hash:
    #
    #       {
    #         intent_id: "Id", # required
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] intent_id
    #   The identifier of the intent to describe.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the intent to describe.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeIntentRequest AWS API Documentation
    #
    class DescribeIntentRequest < Struct.new(
      :intent_id,
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] intent_id
    #   The unique identifier assigned to the intent when it was created.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The name specified for the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] parent_intent_signature
    #   The identifier of the built-in intent that this intent is derived
    #   from, if any.
    #   @return [String]
    #
    # @!attribute [rw] sample_utterances
    #   User utterances that trigger this intent.
    #   @return [Array<Types::SampleUtterance>]
    #
    # @!attribute [rw] dialog_code_hook
    #   The Lambda function called during each turn of a conversation with
    #   the intent.
    #   @return [Types::DialogCodeHookSettings]
    #
    # @!attribute [rw] fulfillment_code_hook
    #   The Lambda function called when the intent is complete and ready for
    #   fulfillment.
    #   @return [Types::FulfillmentCodeHookSettings]
    #
    # @!attribute [rw] slot_priorities
    #   The list that determines the priority that slots should be elicited
    #   from the user.
    #   @return [Array<Types::SlotPriority>]
    #
    # @!attribute [rw] intent_confirmation_setting
    #   Prompts that Amazon Lex sends to the user to confirm completion of
    #   an intent.
    #   @return [Types::IntentConfirmationSetting]
    #
    # @!attribute [rw] intent_closing_setting
    #   The response that Amazon Lex sends to when the intent is closed.
    #   @return [Types::IntentClosingSetting]
    #
    # @!attribute [rw] input_contexts
    #   A list of contexts that must be active for the intent to be
    #   considered for sending to the user.
    #   @return [Array<Types::InputContext>]
    #
    # @!attribute [rw] output_contexts
    #   A list of contexts that are activated when the intent is fulfilled.
    #   @return [Array<Types::OutputContext>]
    #
    # @!attribute [rw] kendra_configuration
    #   Configuration information required to use the
    #   `AMAZON.KendraSearchIntent` intent.
    #   @return [Types::KendraConfiguration]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale specified for the intent.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the intent was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the intent was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeIntentResponse AWS API Documentation
    #
    class DescribeIntentResponse < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeResourcePolicyRequest AWS API Documentation
    #
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The JSON structure that contains the resource policy. For more
    #   information about the contents of a JSON policy document, see [ IAM
    #   JSON policy reference ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The current revision of the resource policy. Use the revision ID to
    #   make sure that you are updating the most current version of a
    #   resource policy when you add a policy statement to a resource,
    #   delete a resource, or update a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeResourcePolicyResponse AWS API Documentation
    #
    class DescribeResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSlotRequest
    #   data as a hash:
    #
    #       {
    #         slot_id: "Id", # required
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #         intent_id: "Id", # required
    #       }
    #
    # @!attribute [rw] slot_id
    #   The unique identifier for the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the slot to describe.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The identifier of the intent that contains the slot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeSlotRequest AWS API Documentation
    #
    class DescribeSlotRequest < Struct.new(
      :slot_id,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slot_id
    #   The unique identifier generated for the slot.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   The name specified for the slot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description specified for the slot.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_id
    #   The identifier of the slot type that determines the values entered
    #   into the slot.
    #   @return [String]
    #
    # @!attribute [rw] value_elicitation_setting
    #   Prompts that Amazon Lex uses to elicit a value for the slot.
    #   @return [Types::SlotValueElicitationSetting]
    #
    # @!attribute [rw] obfuscation_setting
    #   Whether slot values are shown in Amazon CloudWatch logs. If the
    #   value is `None`, the actual value of the slot is shown in logs.
    #   @return [Types::ObfuscationSetting]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale specified for the slot.
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The identifier of the intent associated with the slot.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the slot was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the slot was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] multiple_values_setting
    #   Indicates whether the slot accepts multiple values in a single
    #   utterance.
    #
    #   If the `multipleValuesSetting` is not set, the default value is
    #   `false`.
    #   @return [Types::MultipleValuesSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeSlotResponse AWS API Documentation
    #
    class DescribeSlotResponse < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :last_updated_date_time,
      :multiple_values_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSlotTypeRequest
    #   data as a hash:
    #
    #       {
    #         slot_type_id: "Id", # required
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] slot_type_id
    #   The identifier of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the slot type to
    #   describe. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeSlotTypeRequest AWS API Documentation
    #
    class DescribeSlotTypeRequest < Struct.new(
      :slot_type_id,
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slot_type_id
    #   The unique identifier for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_name
    #   The name specified for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description specified for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_values
    #   The values that the slot type can take. Includes any synonyms for
    #   the slot type values.
    #   @return [Array<Types::SlotTypeValue>]
    #
    # @!attribute [rw] value_selection_setting
    #   The strategy that Amazon Lex uses to choose a value from a list of
    #   possible values.
    #   @return [Types::SlotValueSelectionSetting]
    #
    # @!attribute [rw] parent_slot_type_signature
    #   The built in slot type used as a parent to this slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot associated with the slot type.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale specified for the slot type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the slot type was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the slot type was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] external_source_setting
    #   Provides information about the external source of the slot type's
    #   definition.
    #   @return [Types::ExternalSourceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DescribeSlotTypeResponse AWS API Documentation
    #
    class DescribeSlotTypeResponse < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :external_source_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings that determine the Lambda function that Amazon Lex uses for
    # processing user responses.
    #
    # @note When making an API call, you may pass DialogCodeHookSettings
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #       }
    #
    # @!attribute [rw] enabled
    #   Enables the dialog code hook so that it processes user requests.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/DialogCodeHookSettings AWS API Documentation
    #
    class DialogCodeHookSettings < Struct.new(
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object representing the passwords that were used to encrypt the
    # data related to the bot recommendation, as well as the KMS key ARN
    # used to encrypt the associated metadata.
    #
    # @note When making an API call, you may pass EncryptionSetting
    #   data as a hash:
    #
    #       {
    #         kms_key_arn: "KmsKeyArn",
    #         bot_locale_export_password: "FilePassword",
    #         associated_transcripts_password: "FilePassword",
    #       }
    #
    # @!attribute [rw] kms_key_arn
    #   The KMS key ARN used to encrypt the metadata associated with the bot
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] bot_locale_export_password
    #   The password used to encrypt the recommended bot recommendation
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] associated_transcripts_password
    #   The password used to encrypt the associated transcript file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/EncryptionSetting AWS API Documentation
    #
    class EncryptionSetting < Struct.new(
      :kms_key_arn,
      :bot_locale_export_password,
      :associated_transcripts_password)
      SENSITIVE = [:bot_locale_export_password, :associated_transcripts_password]
      include Aws::Structure
    end

    # Filters the response form the [ListExports][1] operation
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListExports.html
    #
    # @note When making an API call, you may pass ExportFilter
    #   data as a hash:
    #
    #       {
    #         name: "ExportResourceType", # required, accepts ExportResourceType
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use to filter the response. The values must be `Bot`,
    #   `BotLocale`, or `CustomVocabulary`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify EQ when the
    #   `ListExports` operation should return only resource types that equal
    #   the specified value. Specify CO when the `ListExports` operation
    #   should return resource types that contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ExportFilter AWS API Documentation
    #
    class ExportFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the bot or bot locale that you want to
    # export. You can specify the `botExportSpecification` or the
    # `botLocaleExportSpecification`, but not both.
    #
    # @note When making an API call, you may pass ExportResourceSpecification
    #   data as a hash:
    #
    #       {
    #         bot_export_specification: {
    #           bot_id: "Id", # required
    #           bot_version: "BotVersion", # required
    #         },
    #         bot_locale_export_specification: {
    #           bot_id: "Id", # required
    #           bot_version: "BotVersion", # required
    #           locale_id: "LocaleId", # required
    #         },
    #         custom_vocabulary_export_specification: {
    #           bot_id: "Id", # required
    #           bot_version: "BotVersion", # required
    #           locale_id: "LocaleId", # required
    #         },
    #       }
    #
    # @!attribute [rw] bot_export_specification
    #   Parameters for exporting a bot.
    #   @return [Types::BotExportSpecification]
    #
    # @!attribute [rw] bot_locale_export_specification
    #   Parameters for exporting a bot locale.
    #   @return [Types::BotLocaleExportSpecification]
    #
    # @!attribute [rw] custom_vocabulary_export_specification
    #   The parameters required to export a custom vocabulary.
    #   @return [Types::CustomVocabularyExportSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ExportResourceSpecification AWS API Documentation
    #
    class ExportResourceSpecification < Struct.new(
      :bot_export_specification,
      :bot_locale_export_specification,
      :custom_vocabulary_export_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about sorting a list of exports.
    #
    # @note When making an API call, you may pass ExportSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "LastUpdatedDateTime", # required, accepts LastUpdatedDateTime
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The export field to use for sorting.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ExportSortBy AWS API Documentation
    #
    class ExportSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an export in an export list.
    #
    # @!attribute [rw] export_id
    #   The unique identifier that Amazon Lex assigned to the export.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   Information about the bot or bot locale that was exported.
    #   @return [Types::ExportResourceSpecification]
    #
    # @!attribute [rw] file_format
    #   The file format used in the export files.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the export. When the status is `Completed` the export
    #   is ready to download.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the export was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the export was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ExportSummary AWS API Documentation
    #
    class ExportSummary < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the external source of the slot type's
    # definition.
    #
    # @note When making an API call, you may pass ExternalSourceSetting
    #   data as a hash:
    #
    #       {
    #         grammar_slot_type_setting: {
    #           source: {
    #             s3_bucket_name: "S3BucketName", # required
    #             s3_object_key: "S3ObjectPath", # required
    #             kms_key_arn: "KmsKeyArn",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] grammar_slot_type_setting
    #   Settings required for a slot type based on a grammar that you
    #   provide.
    #   @return [Types::GrammarSlotTypeSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ExternalSourceSetting AWS API Documentation
    #
    class ExternalSourceSetting < Struct.new(
      :grammar_slot_type_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines if a Lambda function should be invoked for a specific
    # intent.
    #
    # @note When making an API call, you may pass FulfillmentCodeHookSettings
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         post_fulfillment_status_specification: {
    #           success_response: {
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           failure_response: {
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           timeout_response: {
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #         },
    #         fulfillment_updates_specification: {
    #           active: false, # required
    #           start_response: {
    #             delay_in_seconds: 1, # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           update_response: {
    #             frequency_in_seconds: 1, # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           timeout_in_seconds: 1,
    #         },
    #       }
    #
    # @!attribute [rw] enabled
    #   Indicates whether a Lambda function should be invoked to fulfill a
    #   specific intent.
    #   @return [Boolean]
    #
    # @!attribute [rw] post_fulfillment_status_specification
    #   Provides settings for messages sent to the user for after the Lambda
    #   fulfillment function completes. Post-fulfillment messages can be
    #   sent for both streaming and non-streaming conversations.
    #   @return [Types::PostFulfillmentStatusSpecification]
    #
    # @!attribute [rw] fulfillment_updates_specification
    #   Provides settings for update messages sent to the user for
    #   long-running Lambda fulfillment functions. Fulfillment updates can
    #   be used only with streaming conversations.
    #   @return [Types::FulfillmentUpdatesSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/FulfillmentCodeHookSettings AWS API Documentation
    #
    class FulfillmentCodeHookSettings < Struct.new(
      :enabled,
      :post_fulfillment_status_specification,
      :fulfillment_updates_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides settings for a message that is sent to the user when a
    # fulfillment Lambda function starts running.
    #
    # @note When making an API call, you may pass FulfillmentStartResponseSpecification
    #   data as a hash:
    #
    #       {
    #         delay_in_seconds: 1, # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         allow_interrupt: false,
    #       }
    #
    # @!attribute [rw] delay_in_seconds
    #   The delay between when the Lambda fulfillment function starts
    #   running and the start message is played. If the Lambda function
    #   returns before the delay is over, the start message isn't played.
    #   @return [Integer]
    #
    # @!attribute [rw] message_groups
    #   One to 5 message groups that contain start messages. Amazon Lex
    #   chooses one of the messages to play to the user.
    #   @return [Array<Types::MessageGroup>]
    #
    # @!attribute [rw] allow_interrupt
    #   Determines whether the user can interrupt the start message while it
    #   is playing.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/FulfillmentStartResponseSpecification AWS API Documentation
    #
    class FulfillmentStartResponseSpecification < Struct.new(
      :delay_in_seconds,
      :message_groups,
      :allow_interrupt)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides settings for a message that is sent periodically to the user
    # while a fulfillment Lambda function is running.
    #
    # @note When making an API call, you may pass FulfillmentUpdateResponseSpecification
    #   data as a hash:
    #
    #       {
    #         frequency_in_seconds: 1, # required
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         allow_interrupt: false,
    #       }
    #
    # @!attribute [rw] frequency_in_seconds
    #   The frequency that a message is sent to the user. When the period
    #   ends, Amazon Lex chooses a message from the message groups and plays
    #   it to the user. If the fulfillment Lambda returns before the first
    #   period ends, an update message is not played to the user.
    #   @return [Integer]
    #
    # @!attribute [rw] message_groups
    #   One to 5 message groups that contain update messages. Amazon Lex
    #   chooses one of the messages to play to the user.
    #   @return [Array<Types::MessageGroup>]
    #
    # @!attribute [rw] allow_interrupt
    #   Determines whether the user can interrupt an update message while it
    #   is playing.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/FulfillmentUpdateResponseSpecification AWS API Documentation
    #
    class FulfillmentUpdateResponseSpecification < Struct.new(
      :frequency_in_seconds,
      :message_groups,
      :allow_interrupt)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for updating the user on the progress of
    # fulfilling an intent.
    #
    # @note When making an API call, you may pass FulfillmentUpdatesSpecification
    #   data as a hash:
    #
    #       {
    #         active: false, # required
    #         start_response: {
    #           delay_in_seconds: 1, # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         update_response: {
    #           frequency_in_seconds: 1, # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         timeout_in_seconds: 1,
    #       }
    #
    # @!attribute [rw] active
    #   Determines whether fulfillment updates are sent to the user. When
    #   this field is true, updates are sent.
    #
    #   If the `active` field is set to true, the `startResponse`,
    #   `updateResponse`, and `timeoutInSeconds` fields are required.
    #   @return [Boolean]
    #
    # @!attribute [rw] start_response
    #   Provides configuration information for the message sent to users
    #   when the fulfillment Lambda functions starts running.
    #   @return [Types::FulfillmentStartResponseSpecification]
    #
    # @!attribute [rw] update_response
    #   Provides configuration information for messages sent periodically to
    #   the user while the fulfillment Lambda function is running.
    #   @return [Types::FulfillmentUpdateResponseSpecification]
    #
    # @!attribute [rw] timeout_in_seconds
    #   The length of time that the fulfillment Lambda function should run
    #   before it times out.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/FulfillmentUpdatesSpecification AWS API Documentation
    #
    class FulfillmentUpdatesSpecification < Struct.new(
      :active,
      :start_response,
      :update_response,
      :timeout_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings requried for a slot type based on a grammar that you provide.
    #
    # @note When making an API call, you may pass GrammarSlotTypeSetting
    #   data as a hash:
    #
    #       {
    #         source: {
    #           s3_bucket_name: "S3BucketName", # required
    #           s3_object_key: "S3ObjectPath", # required
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #       }
    #
    # @!attribute [rw] source
    #   The source of the grammar used to create the slot type.
    #   @return [Types::GrammarSlotTypeSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/GrammarSlotTypeSetting AWS API Documentation
    #
    class GrammarSlotTypeSetting < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the Amazon S3 bucket name and location for the grammar that
    # is the source for the slot type.
    #
    # @note When making an API call, you may pass GrammarSlotTypeSource
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "S3BucketName", # required
    #         s3_object_key: "S3ObjectPath", # required
    #         kms_key_arn: "KmsKeyArn",
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the S3 bucket that contains the grammar source.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_key
    #   The path to the grammar in the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon KMS key required to decrypt the contents of the grammar,
    #   if any.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/GrammarSlotTypeSource AWS API Documentation
    #
    class GrammarSlotTypeSource < Struct.new(
      :s3_bucket_name,
      :s3_object_key,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A card that is shown to the user by a messaging platform. You define
    # the contents of the card, the card is displayed by the platform.
    #
    # When you use a response card, the response from the user is
    # constrained to the text associated with a button on the card.
    #
    # @note When making an API call, you may pass ImageResponseCard
    #   data as a hash:
    #
    #       {
    #         title: "AttachmentTitle", # required
    #         subtitle: "AttachmentTitle",
    #         image_url: "AttachmentUrl",
    #         buttons: [
    #           {
    #             text: "ButtonText", # required
    #             value: "ButtonValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] title
    #   The title to display on the response card. The format of the title
    #   is determined by the platform displaying the response card.
    #   @return [String]
    #
    # @!attribute [rw] subtitle
    #   The subtitle to display on the response card. The format of the
    #   subtitle is determined by the platform displaying the response card.
    #   @return [String]
    #
    # @!attribute [rw] image_url
    #   The URL of an image to display on the response card. The image URL
    #   must be publicly available so that the platform displaying the
    #   response card has access to the image.
    #   @return [String]
    #
    # @!attribute [rw] buttons
    #   A list of buttons that should be displayed on the response card. The
    #   arrangement of the buttons is determined by the platform that
    #   displays the button.
    #   @return [Array<Types::Button>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ImageResponseCard AWS API Documentation
    #
    class ImageResponseCard < Struct.new(
      :title,
      :subtitle,
      :image_url,
      :buttons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the response from the [ListImports][1] operation.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_ListImports.html
    #
    # @note When making an API call, you may pass ImportFilter
    #   data as a hash:
    #
    #       {
    #         name: "ImportResourceType", # required, accepts ImportResourceType
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use to filter the response. The values must be `Bot`,
    #   `BotLocale`, or `CustomVocabulary`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify EQ when the
    #   `ListImports` operation should return only resource types that equal
    #   the specified value. Specify CO when the `ListImports` operation
    #   should return resource types that contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ImportFilter AWS API Documentation
    #
    class ImportFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the bot or bot locale that you want to
    # import. You can specify the `botImportSpecification` or the
    # `botLocaleImportSpecification`, but not both.
    #
    # @note When making an API call, you may pass ImportResourceSpecification
    #   data as a hash:
    #
    #       {
    #         bot_import_specification: {
    #           bot_name: "Name", # required
    #           role_arn: "RoleArn", # required
    #           data_privacy: { # required
    #             child_directed: false, # required
    #           },
    #           idle_session_ttl_in_seconds: 1,
    #           bot_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #           test_bot_alias_tags: {
    #             "TagKey" => "TagValue",
    #           },
    #         },
    #         bot_locale_import_specification: {
    #           bot_id: "Id", # required
    #           bot_version: "DraftBotVersion", # required
    #           locale_id: "LocaleId", # required
    #           nlu_intent_confidence_threshold: 1.0,
    #           voice_settings: {
    #             voice_id: "VoiceId", # required
    #             engine: "standard", # accepts standard, neural
    #           },
    #         },
    #         custom_vocabulary_import_specification: {
    #           bot_id: "Id", # required
    #           bot_version: "DraftBotVersion", # required
    #           locale_id: "LocaleId", # required
    #         },
    #       }
    #
    # @!attribute [rw] bot_import_specification
    #   Parameters for importing a bot.
    #   @return [Types::BotImportSpecification]
    #
    # @!attribute [rw] bot_locale_import_specification
    #   Parameters for importing a bot locale.
    #   @return [Types::BotLocaleImportSpecification]
    #
    # @!attribute [rw] custom_vocabulary_import_specification
    #   Provides the parameters required for importing a custom vocabulary.
    #   @return [Types::CustomVocabularyImportSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ImportResourceSpecification AWS API Documentation
    #
    class ImportResourceSpecification < Struct.new(
      :bot_import_specification,
      :bot_locale_import_specification,
      :custom_vocabulary_import_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for sorting a list of imports.
    #
    # @note When making an API call, you may pass ImportSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "LastUpdatedDateTime", # required, accepts LastUpdatedDateTime
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The export field to use for sorting.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ImportSortBy AWS API Documentation
    #
    class ImportSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about an import in an import list.
    #
    # @!attribute [rw] import_id
    #   The unique identifier that Amazon Lex assigned to the import.
    #   @return [String]
    #
    # @!attribute [rw] imported_resource_id
    #   The unique identifier that Amazon Lex assigned to the imported
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] imported_resource_name
    #   The name that you gave the imported resource.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The status of the resource. When the status is `Completed` the
    #   resource is ready to build.
    #   @return [String]
    #
    # @!attribute [rw] merge_strategy
    #   The strategy used to merge existing bot or bot locale definitions
    #   with the imported definition.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the import was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the import was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] imported_resource_type
    #   The type of resource that was imported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ImportSummary AWS API Documentation
    #
    class ImportSummary < Struct.new(
      :import_id,
      :imported_resource_id,
      :imported_resource_name,
      :import_status,
      :merge_strategy,
      :creation_date_time,
      :last_updated_date_time,
      :imported_resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of a context that must be active for an intent to be selected
    # by Amazon Lex.
    #
    # @note When making an API call, you may pass InputContext
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the context.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/InputContext AWS API Documentation
    #
    class InputContext < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a statement the Amazon Lex conveys to the user when the
    # intent is successfully fulfilled.
    #
    # @note When making an API call, you may pass IntentClosingSetting
    #   data as a hash:
    #
    #       {
    #         closing_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         active: false,
    #       }
    #
    # @!attribute [rw] closing_response
    #   The response that Amazon Lex sends to the user when the intent is
    #   complete.
    #   @return [Types::ResponseSpecification]
    #
    # @!attribute [rw] active
    #   Specifies whether an intent's closing response is used. When this
    #   field is false, the closing response isn't sent to the user. If the
    #   `active` field isn't specified, the default is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/IntentClosingSetting AWS API Documentation
    #
    class IntentClosingSetting < Struct.new(
      :closing_response,
      :active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a prompt for making sure that the user is ready for the
    # intent to be fulfilled.
    #
    # @note When making an API call, you may pass IntentConfirmationSetting
    #   data as a hash:
    #
    #       {
    #         prompt_specification: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           max_retries: 1, # required
    #           allow_interrupt: false,
    #         },
    #         declination_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         active: false,
    #       }
    #
    # @!attribute [rw] prompt_specification
    #   Prompts the user to confirm the intent. This question should have a
    #   yes or no answer.
    #
    #   Amazon Lex uses this prompt to ensure that the user acknowledges
    #   that the intent is ready for fulfillment. For example, with the
    #   `OrderPizza` intent, you might want to confirm that the order is
    #   correct before placing it. For other intents, such as intents that
    #   simply respond to user questions, you might not need to ask the user
    #   for confirmation before providing the information.
    #   @return [Types::PromptSpecification]
    #
    # @!attribute [rw] declination_response
    #   When the user answers "no" to the question defined in
    #   `promptSpecification`, Amazon Lex responds with this response to
    #   acknowledge that the intent was canceled.
    #   @return [Types::ResponseSpecification]
    #
    # @!attribute [rw] active
    #   Specifies whether the intent's confirmation is sent to the user.
    #   When this field is false, confirmation and declination responses
    #   aren't sent. If the `active` field isn't specified, the default is
    #   true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/IntentConfirmationSetting AWS API Documentation
    #
    class IntentConfirmationSetting < Struct.new(
      :prompt_specification,
      :declination_response,
      :active)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the response from the `ListIntents` operation.
    #
    # @note When making an API call, you may pass IntentFilter
    #   data as a hash:
    #
    #       {
    #         name: "IntentName", # required, accepts IntentName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to use for the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to use for the filter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify `EQ` when the
    #   `ListIntents` operation should return only aliases that equal the
    #   specified value. Specify `CO` when the `ListIntents` operation
    #   should return aliases that contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/IntentFilter AWS API Documentation
    #
    class IntentFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of intents.
    #
    # @note When making an API call, you may pass IntentSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "IntentName", # required, accepts IntentName, LastUpdatedDateTime
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to use to sort the list of intents.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list. You can choose ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/IntentSortBy AWS API Documentation
    #
    class IntentSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that contains the statistical summary of recommended
    # intents associated with the bot recommendation.
    #
    # @!attribute [rw] discovered_intent_count
    #   The number of recommended intents associated with the bot
    #   recommendation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/IntentStatistics AWS API Documentation
    #
    class IntentStatistics < Struct.new(
      :discovered_intent_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an intent returned by the `ListIntents`
    # operation.
    #
    # @!attribute [rw] intent_id
    #   The unique identifier assigned to the intent. Use this ID to get
    #   detailed information about the intent with the `DescribeIntent`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] parent_intent_signature
    #   If this intent is derived from a built-in intent, the name of the
    #   parent intent.
    #   @return [String]
    #
    # @!attribute [rw] input_contexts
    #   The input contexts that must be active for this intent to be
    #   considered for recognition.
    #   @return [Array<Types::InputContext>]
    #
    # @!attribute [rw] output_contexts
    #   The output contexts that are activated when this intent is
    #   fulfilled.
    #   @return [Array<Types::OutputContext>]
    #
    # @!attribute [rw] last_updated_date_time
    #   The timestamp of the date and time that the intent was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/IntentSummary AWS API Documentation
    #
    class IntentSummary < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :input_contexts,
      :output_contexts,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an unexpected condition. Try your request
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration information for the AMAZON.KendraSearchIntent
    # intent. When you use this intent, Amazon Lex searches the specified
    # Amazon Kendra index and returns documents from the index that match
    # the user's utterance.
    #
    # @note When making an API call, you may pass KendraConfiguration
    #   data as a hash:
    #
    #       {
    #         kendra_index: "KendraIndexArn", # required
    #         query_filter_string_enabled: false,
    #         query_filter_string: "QueryFilterString",
    #       }
    #
    # @!attribute [rw] kendra_index
    #   The Amazon Resource Name (ARN) of the Amazon Kendra index that you
    #   want the AMAZON.KendraSearchIntent intent to search. The index must
    #   be in the same account and Region as the Amazon Lex bot.
    #   @return [String]
    #
    # @!attribute [rw] query_filter_string_enabled
    #   Determines whether the AMAZON.KendraSearchIntent intent uses a
    #   custom query string to query the Amazon Kendra index.
    #   @return [Boolean]
    #
    # @!attribute [rw] query_filter_string
    #   A query filter that Amazon Lex sends to Amazon Kendra to filter the
    #   response from a query. The filter is in the format defined by Amazon
    #   Kendra. For more information, see [Filtering queries][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kendra/latest/dg/filtering.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/KendraConfiguration AWS API Documentation
    #
    class KendraConfiguration < Struct.new(
      :kendra_index,
      :query_filter_string_enabled,
      :query_filter_string)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a Lambda function that verifies requests to a bot or
    # fulfills the user's request to a bot.
    #
    # @note When making an API call, you may pass LambdaCodeHook
    #   data as a hash:
    #
    #       {
    #         lambda_arn: "LambdaARN", # required
    #         code_hook_interface_version: "CodeHookInterfaceVersion", # required
    #       }
    #
    # @!attribute [rw] lambda_arn
    #   The Amazon Resource Name (ARN) of the Lambda function.
    #   @return [String]
    #
    # @!attribute [rw] code_hook_interface_version
    #   The version of the request-response that you want Amazon Lex to use
    #   to invoke your Lambda function.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/LambdaCodeHook AWS API Documentation
    #
    class LambdaCodeHook < Struct.new(
      :lambda_arn,
      :code_hook_interface_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that contains transcript filter details that are associated
    # with a bot recommendation.
    #
    # @note When making an API call, you may pass LexTranscriptFilter
    #   data as a hash:
    #
    #       {
    #         date_range_filter: {
    #           start_date_time: Time.now, # required
    #           end_date_time: Time.now, # required
    #         },
    #       }
    #
    # @!attribute [rw] date_range_filter
    #   The object that contains a date range filter that will be applied to
    #   the transcript. Specify this object if you want Amazon Lex to only
    #   read the files that are within the date range.
    #   @return [Types::DateRangeFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/LexTranscriptFilter AWS API Documentation
    #
    class LexTranscriptFilter < Struct.new(
      :date_range_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAggregatedUtterancesRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_alias_id: "BotAliasId",
    #         bot_version: "BotVersion",
    #         locale_id: "LocaleId", # required
    #         aggregation_duration: { # required
    #           relative_aggregation_duration: { # required
    #             time_dimension: "Hours", # required, accepts Hours, Days, Weeks
    #             time_value: 1, # required
    #           },
    #         },
    #         sort_by: {
    #           attribute: "HitCount", # required, accepts HitCount, MissedCount
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "Utterance", # required, accepts Utterance
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with this request.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The identifier of the bot alias associated with this request. If you
    #   specify the bot alias, you can't specify the bot version.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the bot version associated with this request. If
    #   you specify the bot version, you can't specify the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale where the utterances were
    #   collected. For more information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] aggregation_duration
    #   The time window for aggregating the utterance information. You can
    #   specify a time between one hour and two weeks.
    #   @return [Types::UtteranceAggregationDuration]
    #
    # @!attribute [rw] sort_by
    #   Specifies sorting parameters for the list of utterances. You can
    #   sort by the hit count, the missed count, or the number of distinct
    #   sessions the utterance appeared in.
    #   @return [Types::AggregatedUtterancesSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification of a filter used to limit the utterances
    #   in the response to only those that match the filter specification.
    #   You can only specify one filter and one string to filter on.
    #   @return [Array<Types::AggregatedUtterancesFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of utterances to return in each page of results.
    #   If there are fewer results than the maximum page size, only the
    #   actual number of results are returned. If you don't specify the
    #   `maxResults` parameter, 1,000 results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListAggregatedUtterances` operation
    #   contains more results that specified in the `maxResults` parameter,
    #   a token is returned in the response. Use that token in the
    #   `nextToken` parameter to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListAggregatedUtterancesRequest AWS API Documentation
    #
    class ListAggregatedUtterancesRequest < Struct.new(
      :bot_id,
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :aggregation_duration,
      :sort_by,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the utterances.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_id
    #   The identifier of the bot alias that contains the utterances. If you
    #   specified the bot version, the bot alias ID isn't returned.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the bot version that contains the utterances. If
    #   you specified the bot alias, the bot version isn't returned.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that the utterances are
    #   in.
    #   @return [String]
    #
    # @!attribute [rw] aggregation_duration
    #   The time period used to aggregate the utterance data.
    #   @return [Types::UtteranceAggregationDuration]
    #
    # @!attribute [rw] aggregation_window_start_time
    #   The date and time that the aggregation window begins. Only data
    #   collected after this time is returned in the results.
    #   @return [Time]
    #
    # @!attribute [rw] aggregation_window_end_time
    #   The date and time that the aggregation window ends. Only data
    #   collected between the start time and the end time are returned in
    #   the results.
    #   @return [Time]
    #
    # @!attribute [rw] aggregation_last_refreshed_date_time
    #   The last date and time that the aggregated data was collected. The
    #   time period depends on the length of the aggregation window.
    #
    #   * **Hours** - for 1 hour time window, every half hour; otherwise
    #     every hour.
    #
    #   * **Days** - every 6 hours
    #
    #   * **Weeks** - for a one week time window, every 12 hours; otherwise,
    #     every day
    #   @return [Time]
    #
    # @!attribute [rw] aggregated_utterances_summaries
    #   Summaries of the aggregated utterance data. Each response contains
    #   information about the number of times that the utterance was seen
    #   during the time period, whether it was detected or missed, and when
    #   it was seen during the time period.
    #   @return [Array<Types::AggregatedUtterancesSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListAggregatedUtterances` operation. If the
    #   `nextToken` field is present, you send the contents as the
    #   `nextToken` parameter of a `ListAggregatedUtterances` operation
    #   request to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListAggregatedUtterancesResponse AWS API Documentation
    #
    class ListAggregatedUtterancesResponse < Struct.new(
      :bot_id,
      :bot_alias_id,
      :bot_version,
      :locale_id,
      :aggregation_duration,
      :aggregation_window_start_time,
      :aggregation_window_end_time,
      :aggregation_last_refreshed_date_time,
      :aggregated_utterances_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBotAliasesRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to list aliases for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of aliases to return in each page of results. If
    #   there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListBotAliases` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken`
    #   parameter to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotAliasesRequest AWS API Documentation
    #
    class ListBotAliasesRequest < Struct.new(
      :bot_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_alias_summaries
    #   Summary information for the bot aliases that meet the filter
    #   criteria specified in the request. The length of the list is
    #   specified in the `maxResults` parameter of the request. If there are
    #   more aliases available, the `nextToken` field contains a token to
    #   get the next page of results.
    #   @return [Array<Types::BotAliasSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListBotAliases` operation. If the `nextToken` field
    #   is present, you send the contents as the `nextToken` parameter of a
    #   `ListBotAliases` operation request to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot associated with the aliases.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotAliasesResponse AWS API Documentation
    #
    class ListBotAliasesResponse < Struct.new(
      :bot_alias_summaries,
      :next_token,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBotLocalesRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         sort_by: {
    #           attribute: "BotLocaleName", # required, accepts BotLocaleName
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "BotLocaleName", # required, accepts BotLocaleName
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to list locales for.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to list locales for.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies sorting parameters for the list of locales. You can sort
    #   by locale name in ascending or descending order.
    #   @return [Types::BotLocaleSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification for a filter used to limit the response
    #   to only those locales that match the filter specification. You can
    #   only specify one filter and one value to filter on.
    #   @return [Array<Types::BotLocaleFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of aliases to return in each page of results. If
    #   there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListBotLocales` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token as the `nextToken`
    #   parameter to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotLocalesRequest AWS API Documentation
    #
    class ListBotLocalesRequest < Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot to list locales for.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListBotLocales` operation. If the `nextToken` field
    #   is present, you send the contents as the `nextToken` parameter of a
    #   `ListBotLocales` operation request to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] bot_locale_summaries
    #   Summary information for the locales that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   `maxResults` parameter of the request. If there are more locales
    #   available, the `nextToken` field contains a token to get the next
    #   page of results.
    #   @return [Array<Types::BotLocaleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotLocalesResponse AWS API Documentation
    #
    class ListBotLocalesResponse < Struct.new(
      :bot_id,
      :bot_version,
      :next_token,
      :bot_locale_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBotRecommendationsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the bot
    #   recommendation list.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the bot recommendation list.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bot recommendations to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the ListBotRecommendation operation contains
    #   more results than specified in the maxResults parameter, a token is
    #   returned in the response. Use that token in the nextToken parameter
    #   to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotRecommendationsRequest AWS API Documentation
    #
    class ListBotRecommendationsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the bot
    #   recommendation list.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the bot recommendation list.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   list.
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_summaries
    #   Summary information for the bot recommendations that meet the filter
    #   specified in this request. The length of the list is specified in
    #   the maxResults parameter of the request. If there are more bot
    #   recommendations available, the nextToken field contains a token to
    #   get the next page of results.
    #   @return [Array<Types::BotRecommendationSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the ListBotRecommendations operation. If the nextToken
    #   field is present, you send the contents as the nextToken parameter
    #   of a ListBotRecommendations operation request to get the next page
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotRecommendationsResponse AWS API Documentation
    #
    class ListBotRecommendationsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBotVersionsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         sort_by: {
    #           attribute: "BotVersion", # required, accepts BotVersion
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot to list versions for.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies sorting parameters for the list of versions. You can
    #   specify that the list be sorted by version name in either ascending
    #   or descending order.
    #   @return [Types::BotVersionSortBy]
    #
    # @!attribute [rw] max_results
    #   The maximum number of versions to return in each page of results. If
    #   there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response to the `ListBotVersion` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken`
    #   parameter to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotVersionsRequest AWS API Documentation
    #
    class ListBotVersionsRequest < Struct.new(
      :bot_id,
      :sort_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot to list versions for.
    #   @return [String]
    #
    # @!attribute [rw] bot_version_summaries
    #   Summary information for the bot versions that meet the filter
    #   criteria specified in the request. The length of the list is
    #   specified in the `maxResults` parameter of the request. If there are
    #   more versions available, the `nextToken` field contains a token to
    #   get the next page of results.
    #   @return [Array<Types::BotVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListBotVersions` operation. If the `nextToken`
    #   field is present, you send the contents as the `nextToken` parameter
    #   of a `ListBotAliases` operation request to get the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotVersionsResponse AWS API Documentation
    #
    class ListBotVersionsResponse < Struct.new(
      :bot_id,
      :bot_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBotsRequest
    #   data as a hash:
    #
    #       {
    #         sort_by: {
    #           attribute: "BotName", # required, accepts BotName
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "BotName", # required, accepts BotName
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] sort_by
    #   Specifies sorting parameters for the list of bots. You can specify
    #   that the list be sorted by bot name in ascending or descending
    #   order.
    #   @return [Types::BotSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification of a filter used to limit the bots in the
    #   response to only those that match the filter specification. You can
    #   only specify one filter and one string to filter on.
    #   @return [Array<Types::BotFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bots to return in each page of results. If
    #   there are fewer results than the maximum page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListBots` operation contains more results
    #   than specified in the `maxResults` parameter, a token is returned in
    #   the response.
    #
    #   Use the returned token in the `nextToken` parameter of a `ListBots`
    #   request to return the next page of results. For a complete set of
    #   results, call the `ListBots` operation until the `nextToken`
    #   returned in the response is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotsRequest AWS API Documentation
    #
    class ListBotsRequest < Struct.new(
      :sort_by,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_summaries
    #   Summary information for the bots that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   `maxResults` parameter of the request. If there are more bots
    #   available, the `nextToken` field contains a token to the next page
    #   of results.
    #   @return [Array<Types::BotSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListBots` operation. If the `nextToken` field is
    #   present, you send the contents as the `nextToken` parameter of a
    #   `ListBots` operation request to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBotsResponse AWS API Documentation
    #
    class ListBotsResponse < Struct.new(
      :bot_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBuiltInIntentsRequest
    #   data as a hash:
    #
    #       {
    #         locale_id: "LocaleId", # required
    #         sort_by: {
    #           attribute: "IntentSignature", # required, accepts IntentSignature
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the intents to list.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Specifies sorting parameters for the list of built-in intents. You
    #   can specify that the list be sorted by the built-in intent signature
    #   in either ascending or descending order.
    #   @return [Types::BuiltInIntentSortBy]
    #
    # @!attribute [rw] max_results
    #   The maximum number of built-in intents to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListBuiltInIntents` operation contains
    #   more results than specified in the `maxResults` parameter, a token
    #   is returned in the response. Use that token in the `nextToken`
    #   parameter to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBuiltInIntentsRequest AWS API Documentation
    #
    class ListBuiltInIntentsRequest < Struct.new(
      :locale_id,
      :sort_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] built_in_intent_summaries
    #   Summary information for the built-in intents that meet the filter
    #   criteria specified in the request. The length of the list is
    #   specified in the `maxResults` parameter of the request. If there are
    #   more intents available, the `nextToken` field contains a token to
    #   get the next page of results.
    #   @return [Array<Types::BuiltInIntentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListBuiltInIntents` operation. If the `nextToken`
    #   field is present, you send the contents as the `nextToken` parameter
    #   of a `ListBotAliases` operation request to get the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the intents in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBuiltInIntentsResponse AWS API Documentation
    #
    class ListBuiltInIntentsResponse < Struct.new(
      :built_in_intent_summaries,
      :next_token,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListBuiltInSlotTypesRequest
    #   data as a hash:
    #
    #       {
    #         locale_id: "LocaleId", # required
    #         sort_by: {
    #           attribute: "SlotTypeSignature", # required, accepts SlotTypeSignature
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the slot types to list.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Determines the sort order for the response from the
    #   `ListBuiltInSlotTypes` operation. You can choose to sort by the slot
    #   type signature in either ascending or descending order.
    #   @return [Types::BuiltInSlotTypeSortBy]
    #
    # @!attribute [rw] max_results
    #   The maximum number of built-in slot types to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListBuiltInSlotTypes` operation contains
    #   more results than specified in the `maxResults` parameter, a token
    #   is returned in the response. Use that token in the `nextToken`
    #   parameter to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBuiltInSlotTypesRequest AWS API Documentation
    #
    class ListBuiltInSlotTypesRequest < Struct.new(
      :locale_id,
      :sort_by,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] built_in_slot_type_summaries
    #   Summary information for the built-in slot types that meet the filter
    #   criteria specified in the request. The length of the list is
    #   specified in the `maxResults` parameter of the request. If there are
    #   more slot types available, the `nextToken` field contains a token to
    #   get the next page of results.
    #   @return [Array<Types::BuiltInSlotTypeSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListBuiltInSlotTypes` operation. If the `nextToken`
    #   field is present, you send the contents as the `nextToken` parameter
    #   of a `LIstBuiltInSlotTypes` operation request to get the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the slot types in the list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListBuiltInSlotTypesResponse AWS API Documentation
    #
    class ListBuiltInSlotTypesResponse < Struct.new(
      :built_in_slot_type_summaries,
      :next_token,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListExportsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id",
    #         bot_version: "BotVersion",
    #         sort_by: {
    #           attribute: "LastUpdatedDateTime", # required, accepts LastUpdatedDateTime
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "ExportResourceType", # required, accepts ExportResourceType
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #         locale_id: "LocaleId",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier that Amazon Lex assigned to the bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to list exports for.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Determines the field that the list of exports is sorted by. You can
    #   sort by the `LastUpdatedDateTime` field in ascending or descending
    #   order.
    #   @return [Types::ExportSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification of a filter used to limit the exports in
    #   the response to only those that match the filter specification. You
    #   can only specify one filter and one string to filter on.
    #   @return [Array<Types::ExportFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of exports to return in each page of results. If
    #   there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListExports` operation contains more
    #   results that specified in the `maxResults` parameter, a token is
    #   returned in the response.
    #
    #   Use the returned token in the `nextToken` parameter of a
    #   `ListExports` request to return the next page of results. For a
    #   complete set of results, call the `ListExports` operation until the
    #   `nextToken` returned in the response is null.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   Specifies the resources that should be exported. If you don't
    #   specify a resource type in the `filters` parameter, both bot locales
    #   and custom vocabularies are exported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListExportsRequest AWS API Documentation
    #
    class ListExportsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier assigned to the bot by Amazon Lex.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that was exported.
    #   @return [String]
    #
    # @!attribute [rw] export_summaries
    #   Summary information for the exports that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   `maxResults` parameter. If there are more exports available, the
    #   `nextToken` field contains a token to get the next page of results.
    #   @return [Array<Types::ExportSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListExports` operation. If the `nextToken` field is
    #   present, you send the contents as the `nextToken` parameter of a
    #   `ListExports` operation request to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListExportsResponse AWS API Documentation
    #
    class ListExportsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :export_summaries,
      :next_token,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListImportsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id",
    #         bot_version: "DraftBotVersion",
    #         sort_by: {
    #           attribute: "LastUpdatedDateTime", # required, accepts LastUpdatedDateTime
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "ImportResourceType", # required, accepts ImportResourceType
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #         locale_id: "LocaleId",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier that Amazon Lex assigned to the bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot to list imports for.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Determines the field that the list of imports is sorted by. You can
    #   sort by the `LastUpdatedDateTime` field in ascending or descending
    #   order.
    #   @return [Types::ImportSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification of a filter used to limit the bots in the
    #   response to only those that match the filter specification. You can
    #   only specify one filter and one string to filter on.
    #   @return [Array<Types::ImportFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of imports to return in each page of results. If
    #   there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListImports` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response.
    #
    #   Use the returned token in the `nextToken` parameter of a
    #   `ListImports` request to return the next page of results. For a
    #   complete set of results, call the `ListImports` operation until the
    #   `nextToken` returned in the response is null.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   Specifies the locale that should be present in the list. If you
    #   don't specify a resource type in the `filters` parameter, the list
    #   contains both bot locales and custom vocabularies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListImportsRequest AWS API Documentation
    #
    class ListImportsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :sort_by,
      :filters,
      :max_results,
      :next_token,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier assigned by Amazon Lex to the bot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that was imported. It will always be `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] import_summaries
    #   Summary information for the imports that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   `maxResults` parameter. If there are more imports available, the
    #   `nextToken` field contains a token to get the next page of results.
    #   @return [Array<Types::ImportSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListImports` operation. If the `nextToken` field is
    #   present, you send the contents as the `nextToken` parameter of a
    #   `ListImports` operation request to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale specified in the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListImportsResponse AWS API Documentation
    #
    class ListImportsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :import_summaries,
      :next_token,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListIntentsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #         sort_by: {
    #           attribute: "IntentName", # required, accepts IntentName, LastUpdatedDateTime
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "IntentName", # required, accepts IntentName
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the intents to list.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Determines the sort order for the response from the `ListIntents`
    #   operation. You can choose to sort by the intent name or last updated
    #   date in either ascending or descending order.
    #   @return [Types::IntentSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification of a filter used to limit the intents in
    #   the response to only those that match the filter specification. You
    #   can only specify one filter and only one string to filter on.
    #   @return [Array<Types::IntentFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of intents to return in each page of results. If
    #   there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListIntents` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response.
    #
    #   Use the returned token in the `nextToken` parameter of a
    #   `ListIntents` request to return the next page of results. For a
    #   complete set of results, call the `ListIntents` operation until the
    #   `nextToken` returned in the response is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListIntentsRequest AWS API Documentation
    #
    class ListIntentsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the intents in the list.
    #   @return [String]
    #
    # @!attribute [rw] intent_summaries
    #   Summary information for the intents that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   `maxResults` parameter of the request. If there are more intents
    #   available, the `nextToken` field contains a token to get the next
    #   page of results.
    #   @return [Array<Types::IntentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListIntents` operation. If the `nextToken` field is
    #   present, you send the contents as the `nextToken` parameter of a
    #   `ListIntents` operation request to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListIntentsResponse AWS API Documentation
    #
    class ListIntentsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRecommendedIntentsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         bot_recommendation_id: "Id", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with the recommended
    #   intents.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the recommended intents.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the recommended
    #   intents.
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The identifier of the bot recommendation that contains the
    #   recommended intents.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response from the ListRecommendedIntents operation contains
    #   more results than specified in the maxResults parameter, a token is
    #   returned in the response. Use that token in the nextToken parameter
    #   to return the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bot recommendations to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListRecommendedIntentsRequest AWS API Documentation
    #
    class ListRecommendedIntentsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with the recommended
    #   intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the intent.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the intents to list.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The identifier of the bot recommendation that contains the
    #   recommended intent.
    #   @return [String]
    #
    # @!attribute [rw] summary_list
    #   Summary information for the intents that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   maxResults parameter of the request. If there are more intents
    #   available, the nextToken field contains a token to get the next page
    #   of results.
    #   @return [Array<Types::RecommendedIntentSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the ListRecommendedIntents operation. If the nextToken
    #   field is present, you send the contents as the nextToken parameter
    #   of a ListRecommendedIntents operation request to get the next page
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListRecommendedIntentsResponse AWS API Documentation
    #
    class ListRecommendedIntentsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSlotTypesRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #         sort_by: {
    #           attribute: "SlotTypeName", # required, accepts SlotTypeName, LastUpdatedDateTime
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "SlotTypeName", # required, accepts SlotTypeName, ExternalSourceType
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the slot types.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the slot type.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the slot types to list.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Determines the sort order for the response from the `ListSlotTypes`
    #   operation. You can choose to sort by the slot type name or last
    #   updated date in either ascending or descending order.
    #   @return [Types::SlotTypeSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification of a filter used to limit the slot types
    #   in the response to only those that match the filter specification.
    #   You can only specify one filter and only one string to filter on.
    #   @return [Array<Types::SlotTypeFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of slot types to return in each page of results.
    #   If there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListSlotTypes` operation contains more
    #   results than specified in the `maxResults` parameter, a token is
    #   returned in the response. Use that token in the `nextToken`
    #   parameter to return the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListSlotTypesRequest AWS API Documentation
    #
    class ListSlotTypesRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the slot types.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the slot types.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and local of the slot types in the list.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_summaries
    #   Summary information for the slot types that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   `maxResults` parameter of the request. If there are more slot types
    #   available, the `nextToken` field contains a token to get the next
    #   page of results.
    #   @return [Array<Types::SlotTypeSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListSlotTypes` operation. If the `nextToken` field
    #   is present, you send the contents as the `nextToken` parameter of a
    #   `ListSlotTypes` operation request to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListSlotTypesResponse AWS API Documentation
    #
    class ListSlotTypesResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :slot_type_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSlotsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #         intent_id: "Id", # required
    #         sort_by: {
    #           attribute: "SlotName", # required, accepts SlotName, LastUpdatedDateTime
    #           order: "Ascending", # required, accepts Ascending, Descending
    #         },
    #         filters: [
    #           {
    #             name: "SlotName", # required, accepts SlotName
    #             values: ["FilterValue"], # required
    #             operator: "CO", # required, accepts CO, EQ
    #           },
    #         ],
    #         max_results: 1,
    #         next_token: "NextToken",
    #       }
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the slots to list. The
    #   string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The unique identifier of the intent that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   Determines the sort order for the response from the `ListSlots`
    #   operation. You can choose to sort by the slot name or last updated
    #   date in either ascending or descending order.
    #   @return [Types::SlotSortBy]
    #
    # @!attribute [rw] filters
    #   Provides the specification of a filter used to limit the slots in
    #   the response to only those that match the filter specification. You
    #   can only specify one filter and only one string to filter on.
    #   @return [Array<Types::SlotFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of slots to return in each page of results. If
    #   there are fewer results than the max page size, only the actual
    #   number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the response from the `ListSlots` operation contains more results
    #   than specified in the `maxResults` parameter, a token is returned in
    #   the response. Use that token in the `nextToken` parameter to return
    #   the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListSlotsRequest AWS API Documentation
    #
    class ListSlotsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :sort_by,
      :filters,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the slots.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the slots.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the slots in the list.
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The identifier of the intent that contains the slots.
    #   @return [String]
    #
    # @!attribute [rw] slot_summaries
    #   Summary information for the slots that meet the filter criteria
    #   specified in the request. The length of the list is specified in the
    #   `maxResults` parameter of the request. If there are more slots
    #   available, the `nextToken` field contains a token to get the next
    #   page of results.
    #   @return [Array<Types::SlotSummary>]
    #
    # @!attribute [rw] next_token
    #   A token that indicates whether there are more results to return in a
    #   response to the `ListSlots` operation. If the `nextToken` field is
    #   present, you send the contents as the `nextToken` parameter of a
    #   `ListSlots` operation request to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListSlotsResponse AWS API Documentation
    #
    class ListSlotsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :slot_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get a list of tags
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that provides message text and it's type.
    #
    # @note When making an API call, you may pass Message
    #   data as a hash:
    #
    #       {
    #         plain_text_message: {
    #           value: "PlainTextMessageValue", # required
    #         },
    #         custom_payload: {
    #           value: "CustomPayloadValue", # required
    #         },
    #         ssml_message: {
    #           value: "SSMLMessageValue", # required
    #         },
    #         image_response_card: {
    #           title: "AttachmentTitle", # required
    #           subtitle: "AttachmentTitle",
    #           image_url: "AttachmentUrl",
    #           buttons: [
    #             {
    #               text: "ButtonText", # required
    #               value: "ButtonValue", # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] plain_text_message
    #   A message in plain text format.
    #   @return [Types::PlainTextMessage]
    #
    # @!attribute [rw] custom_payload
    #   A message in a custom format defined by the client application.
    #   @return [Types::CustomPayload]
    #
    # @!attribute [rw] ssml_message
    #   A message in Speech Synthesis Markup Language (SSML).
    #   @return [Types::SSMLMessage]
    #
    # @!attribute [rw] image_response_card
    #   A message that defines a response card that the client application
    #   can show to the user.
    #   @return [Types::ImageResponseCard]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/Message AWS API Documentation
    #
    class Message < Struct.new(
      :plain_text_message,
      :custom_payload,
      :ssml_message,
      :image_response_card)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides one or more messages that Amazon Lex should send to the user.
    #
    # @note When making an API call, you may pass MessageGroup
    #   data as a hash:
    #
    #       {
    #         message: { # required
    #           plain_text_message: {
    #             value: "PlainTextMessageValue", # required
    #           },
    #           custom_payload: {
    #             value: "CustomPayloadValue", # required
    #           },
    #           ssml_message: {
    #             value: "SSMLMessageValue", # required
    #           },
    #           image_response_card: {
    #             title: "AttachmentTitle", # required
    #             subtitle: "AttachmentTitle",
    #             image_url: "AttachmentUrl",
    #             buttons: [
    #               {
    #                 text: "ButtonText", # required
    #                 value: "ButtonValue", # required
    #               },
    #             ],
    #           },
    #         },
    #         variations: [
    #           {
    #             plain_text_message: {
    #               value: "PlainTextMessageValue", # required
    #             },
    #             custom_payload: {
    #               value: "CustomPayloadValue", # required
    #             },
    #             ssml_message: {
    #               value: "SSMLMessageValue", # required
    #             },
    #             image_response_card: {
    #               title: "AttachmentTitle", # required
    #               subtitle: "AttachmentTitle",
    #               image_url: "AttachmentUrl",
    #               buttons: [
    #                 {
    #                   text: "ButtonText", # required
    #                   value: "ButtonValue", # required
    #                 },
    #               ],
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] message
    #   The primary message that Amazon Lex should send to the user.
    #   @return [Types::Message]
    #
    # @!attribute [rw] variations
    #   Message variations to send to the user. When variations are defined,
    #   Amazon Lex chooses the primary message or one of the variations to
    #   send to the user.
    #   @return [Array<Types::Message>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/MessageGroup AWS API Documentation
    #
    class MessageGroup < Struct.new(
      :message,
      :variations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether a slot can return multiple values.
    #
    # @note When making an API call, you may pass MultipleValuesSetting
    #   data as a hash:
    #
    #       {
    #         allow_multiple_values: false,
    #       }
    #
    # @!attribute [rw] allow_multiple_values
    #   Indicates whether a slot can return multiple values. When `true`,
    #   the slot may return more than one value in a response. When `false`,
    #   the slot returns only a single value.
    #
    #   Multi-value slots are only available in the en-US locale. If you set
    #   this value to `true` in any other locale, Amazon Lex throws a
    #   `ValidationException`.
    #
    #   If the `allowMutlipleValues` is not set, the default value is
    #   `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/MultipleValuesSetting AWS API Documentation
    #
    class MultipleValuesSetting < Struct.new(
      :allow_multiple_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether Amazon Lex obscures slot values in conversation
    # logs.
    #
    # @note When making an API call, you may pass ObfuscationSetting
    #   data as a hash:
    #
    #       {
    #         obfuscation_setting_type: "None", # required, accepts None, DefaultObfuscation
    #       }
    #
    # @!attribute [rw] obfuscation_setting_type
    #   Value that determines whether Amazon Lex obscures slot values in
    #   conversation logs. The default is to obscure the values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ObfuscationSetting AWS API Documentation
    #
    class ObfuscationSetting < Struct.new(
      :obfuscation_setting_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a session context that is activated when an intent is
    # fulfilled.
    #
    # @note When making an API call, you may pass OutputContext
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         time_to_live_in_seconds: 1, # required
    #         turns_to_live: 1, # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the output context.
    #   @return [String]
    #
    # @!attribute [rw] time_to_live_in_seconds
    #   The amount of time, in seconds, that the output context should
    #   remain active. The time is figured from the first time the context
    #   is sent to the user.
    #   @return [Integer]
    #
    # @!attribute [rw] turns_to_live
    #   The number of conversation turns that the output context should
    #   remain active. The number of turns is counted from the first time
    #   that the context is sent to the user.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/OutputContext AWS API Documentation
    #
    class OutputContext < Struct.new(
      :name,
      :time_to_live_in_seconds,
      :turns_to_live)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that contains a path format that will be applied when
    # Amazon Lex reads the transcript file in the bucket you provide.
    # Specify this object if you only want Lex to read a subset of files in
    # your Amazon S3 bucket.
    #
    # @note When making an API call, you may pass PathFormat
    #   data as a hash:
    #
    #       {
    #         object_prefixes: ["ObjectPrefix"],
    #       }
    #
    # @!attribute [rw] object_prefixes
    #   A list of Amazon S3 prefixes that points to sub-folders in the
    #   Amazon S3 bucket. Specify this list if you only want Lex to read the
    #   files under this set of sub-folders.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/PathFormat AWS API Documentation
    #
    class PathFormat < Struct.new(
      :object_prefixes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines an ASCII text message to send to the user.
    #
    # @note When making an API call, you may pass PlainTextMessage
    #   data as a hash:
    #
    #       {
    #         value: "PlainTextMessageValue", # required
    #       }
    #
    # @!attribute [rw] value
    #   The message to send to the user.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/PlainTextMessage AWS API Documentation
    #
    class PlainTextMessage < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a setting that determines whether the post-fulfillment
    # response is sent to the user. For more information, see
    # [https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/lexv2/latest/dg/streaming-progress.html#progress-complete
    #
    # @note When making an API call, you may pass PostFulfillmentStatusSpecification
    #   data as a hash:
    #
    #       {
    #         success_response: {
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         failure_response: {
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         timeout_response: {
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #       }
    #
    # @!attribute [rw] success_response
    #   Specifies a list of message groups that Amazon Lex uses to respond
    #   the user input.
    #   @return [Types::ResponseSpecification]
    #
    # @!attribute [rw] failure_response
    #   Specifies a list of message groups that Amazon Lex uses to respond
    #   the user input.
    #   @return [Types::ResponseSpecification]
    #
    # @!attribute [rw] timeout_response
    #   Specifies a list of message groups that Amazon Lex uses to respond
    #   the user input.
    #   @return [Types::ResponseSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/PostFulfillmentStatusSpecification AWS API Documentation
    #
    class PostFulfillmentStatusSpecification < Struct.new(
      :success_response,
      :failure_response,
      :timeout_response)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request couldn't be completed because one or more request fields
    # aren't valid. Check the fields in your request and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/PreconditionFailedException AWS API Documentation
    #
    class PreconditionFailedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IAM principal that you allowing or denying access to an Amazon Lex
    # action. You must provide a `service` or an `arn`, but not both in the
    # same statement. For more information, see [ AWS JSON policy elements:
    # Principal ][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html
    #
    # @note When making an API call, you may pass Principal
    #   data as a hash:
    #
    #       {
    #         service: "ServicePrincipal",
    #         arn: "PrincipalArn",
    #       }
    #
    # @!attribute [rw] service
    #   The name of the AWS service that should allowed or denied access to
    #   an Amazon Lex action.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/Principal AWS API Documentation
    #
    class Principal < Struct.new(
      :service,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a list of message groups that Amazon Lex sends to a user to
    # elicit a response.
    #
    # @note When making an API call, you may pass PromptSpecification
    #   data as a hash:
    #
    #       {
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         max_retries: 1, # required
    #         allow_interrupt: false,
    #       }
    #
    # @!attribute [rw] message_groups
    #   A collection of messages that Amazon Lex can send to the user.
    #   Amazon Lex chooses the actual message to send at runtime.
    #   @return [Array<Types::MessageGroup>]
    #
    # @!attribute [rw] max_retries
    #   The maximum number of times the bot tries to elicit a response from
    #   the user using this prompt.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_interrupt
    #   Indicates whether the user can interrupt a speech prompt from the
    #   bot.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/PromptSpecification AWS API Documentation
    #
    class PromptSpecification < Struct.new(
      :message_groups,
      :max_retries,
      :allow_interrupt)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains a summary of a recommended intent.
    #
    # @!attribute [rw] intent_id
    #   The unique identifier of a recommended intent associated with the
    #   bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The name of a recommended intent associated with the bot
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] sample_utterances_count
    #   The count of sample utterances of a recommended intent that is
    #   associated with a bot recommendation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/RecommendedIntentSummary AWS API Documentation
    #
    class RecommendedIntentSummary < Struct.new(
      :intent_id,
      :intent_name,
      :sample_utterances_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the time window that utterance statistics are returned for.
    # The time window is always relative to the last time that the that
    # utterances were aggregated. For example, if the
    # `ListAggregatedUtterances` operation is called at 1600, the time
    # window is set to 1 hour, and the last refresh time was 1530, only
    # utterances made between 1430 and 1530 are returned.
    #
    # You can choose the time window that statistics should be returned for.
    #
    # * **Hours** - You can request utterance statistics for 1, 3, 6, 12, or
    #   24 hour time windows. Statistics are refreshed every half hour for 1
    #   hour time windows, and hourly for the other time windows.
    #
    # * **Days** - You can request utterance statistics for 3 days.
    #   Statistics are refreshed every 6 hours.
    #
    # * **Weeks** - You can see statistics for one or two weeks. Statistics
    #   are refreshed every 12 hours for one week time windows, and once per
    #   day for two week time windows.
    #
    # @note When making an API call, you may pass RelativeAggregationDuration
    #   data as a hash:
    #
    #       {
    #         time_dimension: "Hours", # required, accepts Hours, Days, Weeks
    #         time_value: 1, # required
    #       }
    #
    # @!attribute [rw] time_dimension
    #   The type of time period that the `timeValue` field represents.
    #   @return [String]
    #
    # @!attribute [rw] time_value
    #   The period of the time window to gather statistics for. The valid
    #   value depends on the setting of the `timeDimension` field.
    #
    #   * `Hours` - 1/3/6/12/24
    #
    #   * `Days` - 3
    #
    #   * `Weeks` - 1/2
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/RelativeAggregationDuration AWS API Documentation
    #
    class RelativeAggregationDuration < Struct.new(
      :time_dimension,
      :time_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # You asked to describe a resource that doesn't exist. Check the
    # resource that you are requesting and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a list of message groups that Amazon Lex uses to respond the
    # user input.
    #
    # @note When making an API call, you may pass ResponseSpecification
    #   data as a hash:
    #
    #       {
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         allow_interrupt: false,
    #       }
    #
    # @!attribute [rw] message_groups
    #   A collection of responses that Amazon Lex can send to the user.
    #   Amazon Lex chooses the actual response to send at runtime.
    #   @return [Array<Types::MessageGroup>]
    #
    # @!attribute [rw] allow_interrupt
    #   Indicates whether the user can interrupt a speech response from
    #   Amazon Lex.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ResponseSpecification AWS API Documentation
    #
    class ResponseSpecification < Struct.new(
      :message_groups,
      :allow_interrupt)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies an Amazon S3 bucket for logging audio conversations
    #
    # @note When making an API call, you may pass S3BucketLogDestination
    #   data as a hash:
    #
    #       {
    #         kms_key_arn: "KmsKeyArn",
    #         s3_bucket_arn: "S3BucketArn", # required
    #         log_prefix: "LogPrefix", # required
    #       }
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of an AWS Key Management Service
    #   (KMS) key for encrypting audio log files stored in an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The Amazon Resource Name (ARN) of an Amazon S3 bucket where audio
    #   log files are stored.
    #   @return [String]
    #
    # @!attribute [rw] log_prefix
    #   The S3 prefix to assign to audio log files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/S3BucketLogDestination AWS API Documentation
    #
    class S3BucketLogDestination < Struct.new(
      :kms_key_arn,
      :s3_bucket_arn,
      :log_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object representing the Amazon S3 bucket containing the
    # transcript, as well as the associated metadata.
    #
    # @note When making an API call, you may pass S3BucketTranscriptSource
    #   data as a hash:
    #
    #       {
    #         s3_bucket_name: "S3BucketName", # required
    #         path_format: {
    #           object_prefixes: ["ObjectPrefix"],
    #         },
    #         transcript_format: "Lex", # required, accepts Lex
    #         transcript_filter: {
    #           lex_transcript_filter: {
    #             date_range_filter: {
    #               start_date_time: Time.now, # required
    #               end_date_time: Time.now, # required
    #             },
    #           },
    #         },
    #         kms_key_arn: "KmsKeyArn",
    #       }
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the bucket containing the transcript and the associated
    #   metadata.
    #   @return [String]
    #
    # @!attribute [rw] path_format
    #   The object that contains a path format that will be applied when
    #   Amazon Lex reads the transcript file in the bucket you provide.
    #   Specify this object if you only want Lex to read a subset of files
    #   in your Amazon S3 bucket.
    #   @return [Types::PathFormat]
    #
    # @!attribute [rw] transcript_format
    #   The format of the transcript content. Currently, Genie only supports
    #   the Amazon Lex transcript format.
    #   @return [String]
    #
    # @!attribute [rw] transcript_filter
    #   The object that contains the filter which will be applied when
    #   Amazon Lex reads through the Amazon S3 bucket. Specify this object
    #   if you want Amazon Lex to read only a subset of the Amazon S3 bucket
    #   based on the filter you provide.
    #   @return [Types::TranscriptFilter]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key that customer use to encrypt their Amazon S3
    #   bucket. Only use this field if your bucket is encrypted using a
    #   customer managed KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/S3BucketTranscriptSource AWS API Documentation
    #
    class S3BucketTranscriptSource < Struct.new(
      :s3_bucket_name,
      :path_format,
      :transcript_format,
      :transcript_filter,
      :kms_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a Speech Synthesis Markup Language (SSML) prompt.
    #
    # @note When making an API call, you may pass SSMLMessage
    #   data as a hash:
    #
    #       {
    #         value: "SSMLMessageValue", # required
    #       }
    #
    # @!attribute [rw] value
    #   The SSML text that defines the prompt.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SSMLMessage AWS API Documentation
    #
    class SSMLMessage < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # A sample utterance that invokes an intent or respond to a slot
    # elicitation prompt.
    #
    # @note When making an API call, you may pass SampleUtterance
    #   data as a hash:
    #
    #       {
    #         utterance: "Utterance", # required
    #       }
    #
    # @!attribute [rw] utterance
    #   The sample utterance that Amazon Lex uses to build its
    #   machine-learning model to recognize intents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SampleUtterance AWS API Documentation
    #
    class SampleUtterance < Struct.new(
      :utterance)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines one of the values for a slot type.
    #
    # @note When making an API call, you may pass SampleValue
    #   data as a hash:
    #
    #       {
    #         value: "Value", # required
    #       }
    #
    # @!attribute [rw] value
    #   The value that can be used for a slot type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SampleValue AWS API Documentation
    #
    class SampleValue < Struct.new(
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SearchAssociatedTranscriptsRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "BotVersion", # required
    #         locale_id: "LocaleId", # required
    #         bot_recommendation_id: "Id", # required
    #         search_order: "Ascending", # accepts Ascending, Descending
    #         filters: [ # required
    #           {
    #             name: "IntentId", # required, accepts IntentId, SlotTypeId
    #             values: ["FilterValue"], # required
    #           },
    #         ],
    #         max_results: 1,
    #         next_index: 1,
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with the transcripts
    #   that you are searching.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot containing the transcripts that you are
    #   searching.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the transcripts to
    #   search. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The unique identifier of the bot recommendation associated with the
    #   transcripts to search.
    #   @return [String]
    #
    # @!attribute [rw] search_order
    #   How SearchResults are ordered. Valid values are Ascending or
    #   Descending. The default is Descending.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   A list of filter objects.
    #   @return [Array<Types::AssociatedTranscriptFilter>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of bot recommendations to return in each page of
    #   results. If there are fewer results than the max page size, only the
    #   actual number of results are returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_index
    #   If the response from the SearchAssociatedTranscriptsRequest
    #   operation contains more results than specified in the maxResults
    #   parameter, an index is returned in the response. Use that index in
    #   the nextIndex parameter to return the next page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SearchAssociatedTranscriptsRequest AWS API Documentation
    #
    class SearchAssociatedTranscriptsRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :search_order,
      :filters,
      :max_results,
      :next_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot associated with the transcripts
    #   that you are searching.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot containing the transcripts that you are
    #   searching.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the transcripts to
    #   search. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The unique identifier of the bot recommendation associated with the
    #   transcripts to search.
    #   @return [String]
    #
    # @!attribute [rw] next_index
    #   A index that indicates whether there are more results to return in a
    #   response to the SearchAssociatedTranscripts operation. If the
    #   nextIndex field is present, you send the contents as the nextIndex
    #   parameter of a SearchAssociatedTranscriptsRequest operation to get
    #   the next page of results.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_transcripts
    #   The object that contains the associated transcript that meet the
    #   criteria you specified.
    #   @return [Array<Types::AssociatedTranscript>]
    #
    # @!attribute [rw] total_results
    #   The total number of transcripts returned by the search.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SearchAssociatedTranscriptsResponse AWS API Documentation
    #
    class SearchAssociatedTranscriptsResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :next_index,
      :associated_transcripts,
      :total_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines whether Amazon Lex will use Amazon Comprehend to detect the
    # sentiment of user utterances.
    #
    # @note When making an API call, you may pass SentimentAnalysisSettings
    #   data as a hash:
    #
    #       {
    #         detect_sentiment: false, # required
    #       }
    #
    # @!attribute [rw] detect_sentiment
    #   Sets whether Amazon Lex uses Amazon Comprehend to detect the
    #   sentiment of user utterances.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SentimentAnalysisSettings AWS API Documentation
    #
    class SentimentAnalysisSettings < Struct.new(
      :detect_sentiment)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have reached a quota for your bot.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the default value to use when a user doesn't provide a
    # value for a slot.
    #
    # @note When making an API call, you may pass SlotDefaultValue
    #   data as a hash:
    #
    #       {
    #         default_value: "SlotDefaultValueString", # required
    #       }
    #
    # @!attribute [rw] default_value
    #   The default value to use when a user doesn't provide a value for a
    #   slot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotDefaultValue AWS API Documentation
    #
    class SlotDefaultValue < Struct.new(
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a list of values that Amazon Lex should use as the default
    # value for a slot.
    #
    # @note When making an API call, you may pass SlotDefaultValueSpecification
    #   data as a hash:
    #
    #       {
    #         default_value_list: [ # required
    #           {
    #             default_value: "SlotDefaultValueString", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] default_value_list
    #   A list of default values. Amazon Lex chooses the default value to
    #   use in the order that they are presented in the list.
    #   @return [Array<Types::SlotDefaultValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotDefaultValueSpecification AWS API Documentation
    #
    class SlotDefaultValueSpecification < Struct.new(
      :default_value_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the response from the `ListSlots` operation.
    #
    # @note When making an API call, you may pass SlotFilter
    #   data as a hash:
    #
    #       {
    #         name: "SlotName", # required, accepts SlotName
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to use to filter the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify `EQ` when the
    #   `ListSlots` operation should return only aliases that equal the
    #   specified value. Specify `CO` when the `ListSlots` operation should
    #   return aliases that contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotFilter AWS API Documentation
    #
    class SlotFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets the priority that Amazon Lex should use when eliciting slot
    # values from a user.
    #
    # @note When making an API call, you may pass SlotPriority
    #   data as a hash:
    #
    #       {
    #         priority: 1, # required
    #         slot_id: "Id", # required
    #       }
    #
    # @!attribute [rw] priority
    #   The priority that a slot should be elicited.
    #   @return [Integer]
    #
    # @!attribute [rw] slot_id
    #   The unique identifier of the slot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotPriority AWS API Documentation
    #
    class SlotPriority < Struct.new(
      :priority,
      :slot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of bots.
    #
    # @note When making an API call, you may pass SlotSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "SlotName", # required, accepts SlotName, LastUpdatedDateTime
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to use to sort the list.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list. You can choose ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotSortBy AWS API Documentation
    #
    class SlotSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a slot, a value that the bot elicits from
    # the user.
    #
    # @!attribute [rw] slot_id
    #   The unique identifier of the slot.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   The name given to the slot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the slot.
    #   @return [String]
    #
    # @!attribute [rw] slot_constraint
    #   Whether the slot is required or optional. An intent is complete when
    #   all required slots are filled.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_id
    #   The unique identifier for the slot type that defines the values for
    #   the slot.
    #   @return [String]
    #
    # @!attribute [rw] value_elicitation_prompt_specification
    #   Prompts that are sent to the user to elicit a value for the slot.
    #   @return [Types::PromptSpecification]
    #
    # @!attribute [rw] last_updated_date_time
    #   The timestamp of the last date and time that the slot was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotSummary AWS API Documentation
    #
    class SlotSummary < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_constraint,
      :slot_type_id,
      :value_elicitation_prompt_specification,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filters the response from the `ListSlotTypes` operation.
    #
    # @note When making an API call, you may pass SlotTypeFilter
    #   data as a hash:
    #
    #       {
    #         name: "SlotTypeName", # required, accepts SlotTypeName, ExternalSourceType
    #         values: ["FilterValue"], # required
    #         operator: "CO", # required, accepts CO, EQ
    #       }
    #
    # @!attribute [rw] name
    #   The name of the field to use for filtering.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The value to use to filter the response.
    #   @return [Array<String>]
    #
    # @!attribute [rw] operator
    #   The operator to use for the filter. Specify `EQ` when the
    #   `ListSlotTypes` operation should return only aliases that equal the
    #   specified value. Specify `CO` when the `ListSlotTypes` operation
    #   should return aliases that contain the specified value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotTypeFilter AWS API Documentation
    #
    class SlotTypeFilter < Struct.new(
      :name,
      :values,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies attributes for sorting a list of slot types.
    #
    # @note When making an API call, you may pass SlotTypeSortBy
    #   data as a hash:
    #
    #       {
    #         attribute: "SlotTypeName", # required, accepts SlotTypeName, LastUpdatedDateTime
    #         order: "Ascending", # required, accepts Ascending, Descending
    #       }
    #
    # @!attribute [rw] attribute
    #   The attribute to use to sort the list of slot types.
    #   @return [String]
    #
    # @!attribute [rw] order
    #   The order to sort the list. You can say ascending or descending.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotTypeSortBy AWS API Documentation
    #
    class SlotTypeSortBy < Struct.new(
      :attribute,
      :order)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that contains the statistical summary of the recommended
    # slot type associated with the bot recommendation.
    #
    # @!attribute [rw] discovered_slot_type_count
    #   The number of recommended slot types associated with the bot
    #   recommendation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotTypeStatistics AWS API Documentation
    #
    class SlotTypeStatistics < Struct.new(
      :discovered_slot_type_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a slot type.
    #
    # @!attribute [rw] slot_type_id
    #   The unique identifier assigned to the slot type.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_name
    #   The name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] parent_slot_type_signature
    #   If the slot type is derived from a built-on slot type, the name of
    #   the parent slot type.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the slot type was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] slot_type_category
    #   Indicates the type of the slot type.
    #
    #   * `Custom` - A slot type that you created using custom values. For
    #     more information, see [Creating custom slot types][1].
    #
    #   * `Extended` - A slot type created by extending the
    #     AMAZON.AlphaNumeric built-in slot type. For more information, see
    #     [AMAZON.AlphaNumeric][2].
    #
    #   * `ExternalGrammar` - A slot type using a custom GRXML grammar to
    #     define values. For more information, see [Using a custom grammar
    #     slot type][3].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/custom-slot-types.html
    #   [2]: https://docs.aws.amazon.com/lexv2/latest/dg/built-in-slot-alphanumerice.html
    #   [3]: https://docs.aws.amazon.com/lexv2/latest/dg/building-grxml.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotTypeSummary AWS API Documentation
    #
    class SlotTypeSummary < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :parent_slot_type_signature,
      :last_updated_date_time,
      :slot_type_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each slot type can have a set of values. Each `SlotTypeValue`
    # represents a value that the slot type can take.
    #
    # @note When making an API call, you may pass SlotTypeValue
    #   data as a hash:
    #
    #       {
    #         sample_value: {
    #           value: "Value", # required
    #         },
    #         synonyms: [
    #           {
    #             value: "Value", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] sample_value
    #   The value of the slot type entry.
    #   @return [Types::SampleValue]
    #
    # @!attribute [rw] synonyms
    #   Additional values related to the slot type entry.
    #   @return [Array<Types::SampleValue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotTypeValue AWS API Documentation
    #
    class SlotTypeValue < Struct.new(
      :sample_value,
      :synonyms)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings that you can use for eliciting a slot value.
    #
    # @note When making an API call, you may pass SlotValueElicitationSetting
    #   data as a hash:
    #
    #       {
    #         default_value_specification: {
    #           default_value_list: [ # required
    #             {
    #               default_value: "SlotDefaultValueString", # required
    #             },
    #           ],
    #         },
    #         slot_constraint: "Required", # required, accepts Required, Optional
    #         prompt_specification: {
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           max_retries: 1, # required
    #           allow_interrupt: false,
    #         },
    #         sample_utterances: [
    #           {
    #             utterance: "Utterance", # required
    #           },
    #         ],
    #         wait_and_continue_specification: {
    #           waiting_response: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           continue_response: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           still_waiting_response: {
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             frequency_in_seconds: 1, # required
    #             timeout_in_seconds: 1, # required
    #             allow_interrupt: false,
    #           },
    #           active: false,
    #         },
    #       }
    #
    # @!attribute [rw] default_value_specification
    #   A list of default values for a slot. Default values are used when
    #   Amazon Lex hasn't determined a value for a slot. You can specify
    #   default values from context variables, session attributes, and
    #   defined values.
    #   @return [Types::SlotDefaultValueSpecification]
    #
    # @!attribute [rw] slot_constraint
    #   Specifies whether the slot is required or optional.
    #   @return [String]
    #
    # @!attribute [rw] prompt_specification
    #   The prompt that Amazon Lex uses to elicit the slot value from the
    #   user.
    #   @return [Types::PromptSpecification]
    #
    # @!attribute [rw] sample_utterances
    #   If you know a specific pattern that users might respond to an Amazon
    #   Lex request for a slot value, you can provide those utterances to
    #   improve accuracy. This is optional. In most cases, Amazon Lex is
    #   capable of understanding user utterances.
    #   @return [Array<Types::SampleUtterance>]
    #
    # @!attribute [rw] wait_and_continue_specification
    #   Specifies the prompts that Amazon Lex uses while a bot is waiting
    #   for customer input.
    #   @return [Types::WaitAndContinueSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotValueElicitationSetting AWS API Documentation
    #
    class SlotValueElicitationSetting < Struct.new(
      :default_value_specification,
      :slot_constraint,
      :prompt_specification,
      :sample_utterances,
      :wait_and_continue_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a regular expression used to validate the value of a slot.
    #
    # @note When making an API call, you may pass SlotValueRegexFilter
    #   data as a hash:
    #
    #       {
    #         pattern: "RegexPattern", # required
    #       }
    #
    # @!attribute [rw] pattern
    #   A regular expression used to validate the value of a slot.
    #
    #   Use a standard regular expression. Amazon Lex supports the following
    #   characters in the regular expression:
    #
    #   * A-Z, a-z
    #
    #   * 0-9
    #
    #   * Unicode characters ("\\ u&lt;Unicode&gt;")
    #
    #   Represent Unicode characters with four digits, for example
    #   "\\u0041" or "\\u005A".
    #
    #   The following regular expression operators are not supported:
    #
    #   * Infinite repeaters: *, +, or \\\{x,\\} with no upper bound.
    #
    #   * Wild card (.)
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotValueRegexFilter AWS API Documentation
    #
    class SlotValueRegexFilter < Struct.new(
      :pattern)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains settings used by Amazon Lex to select a slot value.
    #
    # @note When making an API call, you may pass SlotValueSelectionSetting
    #   data as a hash:
    #
    #       {
    #         resolution_strategy: "OriginalValue", # required, accepts OriginalValue, TopResolution
    #         regex_filter: {
    #           pattern: "RegexPattern", # required
    #         },
    #         advanced_recognition_setting: {
    #           audio_recognition_strategy: "UseSlotValuesAsCustomVocabulary", # accepts UseSlotValuesAsCustomVocabulary
    #         },
    #       }
    #
    # @!attribute [rw] resolution_strategy
    #   Determines the slot resolution strategy that Amazon Lex uses to
    #   return slot type values. The field can be set to one of the
    #   following values:
    #
    #   * OriginalValue - Returns the value entered by the user, if the user
    #     value is similar to the slot value.
    #
    #   * TopResolution - If there is a resolution list for the slot, return
    #     the first value in the resolution list as the slot type value. If
    #     there is no resolution list, null is returned.
    #
    #   If you don't specify the valueSelectionStrategy, the default is
    #   OriginalValue.
    #   @return [String]
    #
    # @!attribute [rw] regex_filter
    #   A regular expression used to validate the value of a slot.
    #   @return [Types::SlotValueRegexFilter]
    #
    # @!attribute [rw] advanced_recognition_setting
    #   Provides settings that enable advanced recognition settings for slot
    #   values.
    #   @return [Types::AdvancedRecognitionSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/SlotValueSelectionSetting AWS API Documentation
    #
    class SlotValueSelectionSetting < Struct.new(
      :resolution_strategy,
      :regex_filter,
      :advanced_recognition_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartBotRecommendationRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         transcript_source_setting: { # required
    #           s3_bucket_transcript_source: {
    #             s3_bucket_name: "S3BucketName", # required
    #             path_format: {
    #               object_prefixes: ["ObjectPrefix"],
    #             },
    #             transcript_format: "Lex", # required, accepts Lex
    #             transcript_filter: {
    #               lex_transcript_filter: {
    #                 date_range_filter: {
    #                   start_date_time: Time.now, # required
    #                   end_date_time: Time.now, # required
    #                 },
    #               },
    #             },
    #             kms_key_arn: "KmsKeyArn",
    #           },
    #         },
    #         encryption_setting: {
    #           kms_key_arn: "KmsKeyArn",
    #           bot_locale_export_password: "FilePassword",
    #           associated_transcripts_password: "FilePassword",
    #         },
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot containing the bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot containing the bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   to start. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] transcript_source_setting
    #   The object representing the Amazon S3 bucket containing the
    #   transcript, as well as the associated metadata.
    #   @return [Types::TranscriptSourceSetting]
    #
    # @!attribute [rw] encryption_setting
    #   The object representing the passwords that will be used to encrypt
    #   the data related to the bot recommendation results, as well as the
    #   KMS key ARN used to encrypt the associated metadata.
    #   @return [Types::EncryptionSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartBotRecommendationRequest AWS API Documentation
    #
    class StartBotRecommendationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :transcript_source_setting,
      :encryption_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot containing the bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot containing the bot recommendation.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   to start. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_status
    #   The status of the bot recommendation.
    #
    #   If the status is Failed, then the reasons for the failure are listed
    #   in the failureReasons field.
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The identifier of the bot recommendation that you have created.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot recommendation was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] transcript_source_setting
    #   The object representing the Amazon S3 bucket containing the
    #   transcript, as well as the associated metadata.
    #   @return [Types::TranscriptSourceSetting]
    #
    # @!attribute [rw] encryption_setting
    #   The object representing the passwords that were used to encrypt the
    #   data related to the bot recommendation results, as well as the KMS
    #   key ARN used to encrypt the associated metadata.
    #   @return [Types::EncryptionSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartBotRecommendationResponse AWS API Documentation
    #
    class StartBotRecommendationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :transcript_source_setting,
      :encryption_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartImportRequest
    #   data as a hash:
    #
    #       {
    #         import_id: "Id", # required
    #         resource_specification: { # required
    #           bot_import_specification: {
    #             bot_name: "Name", # required
    #             role_arn: "RoleArn", # required
    #             data_privacy: { # required
    #               child_directed: false, # required
    #             },
    #             idle_session_ttl_in_seconds: 1,
    #             bot_tags: {
    #               "TagKey" => "TagValue",
    #             },
    #             test_bot_alias_tags: {
    #               "TagKey" => "TagValue",
    #             },
    #           },
    #           bot_locale_import_specification: {
    #             bot_id: "Id", # required
    #             bot_version: "DraftBotVersion", # required
    #             locale_id: "LocaleId", # required
    #             nlu_intent_confidence_threshold: 1.0,
    #             voice_settings: {
    #               voice_id: "VoiceId", # required
    #               engine: "standard", # accepts standard, neural
    #             },
    #           },
    #           custom_vocabulary_import_specification: {
    #             bot_id: "Id", # required
    #             bot_version: "DraftBotVersion", # required
    #             locale_id: "LocaleId", # required
    #           },
    #         },
    #         merge_strategy: "Overwrite", # required, accepts Overwrite, FailOnConflict, Append
    #         file_password: "ImportExportFilePassword",
    #       }
    #
    # @!attribute [rw] import_id
    #   The unique identifier for the import. It is included in the response
    #   from the [CreateUploadUrl][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateUploadUrl.html
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   Parameters for creating the bot, bot locale or custom vocabulary.
    #   @return [Types::ImportResourceSpecification]
    #
    # @!attribute [rw] merge_strategy
    #   The strategy to use when there is a name conflict between the
    #   imported resource and an existing resource. When the merge strategy
    #   is `FailOnConflict` existing resources are not overwritten and the
    #   import fails.
    #   @return [String]
    #
    # @!attribute [rw] file_password
    #   The password used to encrypt the zip archive that contains the
    #   resource definition. You should always encrypt the zip archive to
    #   protect it during transit between your site and Amazon Lex.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartImportRequest AWS API Documentation
    #
    class StartImportRequest < Struct.new(
      :import_id,
      :resource_specification,
      :merge_strategy,
      :file_password)
      SENSITIVE = [:file_password]
      include Aws::Structure
    end

    # @!attribute [rw] import_id
    #   A unique identifier for the import.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   The parameters used when importing the resource.
    #   @return [Types::ImportResourceSpecification]
    #
    # @!attribute [rw] merge_strategy
    #   The strategy used when there was a name conflict between the
    #   imported resource and an existing resource. When the merge strategy
    #   is `FailOnConflict` existing resources are not overwritten and the
    #   import fails.
    #   @return [String]
    #
    # @!attribute [rw] import_status
    #   The current status of the import. When the status is `Complete` the
    #   bot, bot alias, or custom vocabulary is ready to use.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the import request was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StartImportResponse AWS API Documentation
    #
    class StartImportResponse < Struct.new(
      :import_id,
      :resource_specification,
      :merge_strategy,
      :import_status,
      :creation_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the messages that Amazon Lex sends to a user to remind them
    # that the bot is waiting for a response.
    #
    # @note When making an API call, you may pass StillWaitingResponseSpecification
    #   data as a hash:
    #
    #       {
    #         message_groups: [ # required
    #           {
    #             message: { # required
    #               plain_text_message: {
    #                 value: "PlainTextMessageValue", # required
    #               },
    #               custom_payload: {
    #                 value: "CustomPayloadValue", # required
    #               },
    #               ssml_message: {
    #                 value: "SSMLMessageValue", # required
    #               },
    #               image_response_card: {
    #                 title: "AttachmentTitle", # required
    #                 subtitle: "AttachmentTitle",
    #                 image_url: "AttachmentUrl",
    #                 buttons: [
    #                   {
    #                     text: "ButtonText", # required
    #                     value: "ButtonValue", # required
    #                   },
    #                 ],
    #               },
    #             },
    #             variations: [
    #               {
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #             ],
    #           },
    #         ],
    #         frequency_in_seconds: 1, # required
    #         timeout_in_seconds: 1, # required
    #         allow_interrupt: false,
    #       }
    #
    # @!attribute [rw] message_groups
    #   One or more message groups, each containing one or more messages,
    #   that define the prompts that Amazon Lex sends to the user.
    #   @return [Array<Types::MessageGroup>]
    #
    # @!attribute [rw] frequency_in_seconds
    #   How often a message should be sent to the user. Minimum of 1 second,
    #   maximum of 5 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] timeout_in_seconds
    #   If Amazon Lex waits longer than this length of time for a response,
    #   it will stop sending messages.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_interrupt
    #   Indicates that the user can interrupt the response by speaking while
    #   the message is being played.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/StillWaitingResponseSpecification AWS API Documentation
    #
    class StillWaitingResponseSpecification < Struct.new(
      :message_groups,
      :frequency_in_seconds,
      :timeout_in_seconds,
      :allow_interrupt)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot, bot alias, or bot channel
    #   to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag keys to add to the resource. If a tag key already
    #   exists, the existing value is replaced with the new value.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Defines the Amazon CloudWatch Logs destination log group for
    # conversation text logs.
    #
    # @note When making an API call, you may pass TextLogDestination
    #   data as a hash:
    #
    #       {
    #         cloud_watch: { # required
    #           cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #           log_prefix: "LogPrefix", # required
    #         },
    #       }
    #
    # @!attribute [rw] cloud_watch
    #   Defines the Amazon CloudWatch Logs log group where text and metadata
    #   logs are delivered.
    #   @return [Types::CloudWatchLogGroupLogDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/TextLogDestination AWS API Documentation
    #
    class TextLogDestination < Struct.new(
      :cloud_watch)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines settings to enable text conversation logs.
    #
    # @note When making an API call, you may pass TextLogSetting
    #   data as a hash:
    #
    #       {
    #         enabled: false, # required
    #         destination: { # required
    #           cloud_watch: { # required
    #             cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #             log_prefix: "LogPrefix", # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] enabled
    #   Determines whether conversation logs should be stored for an alias.
    #   @return [Boolean]
    #
    # @!attribute [rw] destination
    #   Defines the Amazon CloudWatch Logs destination log group for
    #   conversation text logs.
    #   @return [Types::TextLogDestination]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/TextLogSetting AWS API Documentation
    #
    class TextLogSetting < Struct.new(
      :enabled,
      :destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request rate is too high. Reduce the frequency of requests.
    #
    # @!attribute [rw] retry_after_seconds
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :retry_after_seconds,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object representing the filter that Amazon Lex will use to select
    # the appropriate transcript.
    #
    # @note When making an API call, you may pass TranscriptFilter
    #   data as a hash:
    #
    #       {
    #         lex_transcript_filter: {
    #           date_range_filter: {
    #             start_date_time: Time.now, # required
    #             end_date_time: Time.now, # required
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] lex_transcript_filter
    #   The object representing the filter that Amazon Lex will use to
    #   select the appropriate transcript when the transcript format is the
    #   Amazon Lex format.
    #   @return [Types::LexTranscriptFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/TranscriptFilter AWS API Documentation
    #
    class TranscriptFilter < Struct.new(
      :lex_transcript_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates the setting of the location where the transcript is stored.
    #
    # @note When making an API call, you may pass TranscriptSourceSetting
    #   data as a hash:
    #
    #       {
    #         s3_bucket_transcript_source: {
    #           s3_bucket_name: "S3BucketName", # required
    #           path_format: {
    #             object_prefixes: ["ObjectPrefix"],
    #           },
    #           transcript_format: "Lex", # required, accepts Lex
    #           transcript_filter: {
    #             lex_transcript_filter: {
    #               date_range_filter: {
    #                 start_date_time: Time.now, # required
    #                 end_date_time: Time.now, # required
    #               },
    #             },
    #           },
    #           kms_key_arn: "KmsKeyArn",
    #         },
    #       }
    #
    # @!attribute [rw] s3_bucket_transcript_source
    #   Indicates the setting of the Amazon S3 bucket where the transcript
    #   is stored.
    #   @return [Types::S3BucketTranscriptSource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/TranscriptSourceSetting AWS API Documentation
    #
    class TranscriptSourceSetting < Struct.new(
      :s3_bucket_transcript_source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to remove the tags
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys to remove from the resource. If a tag key does
    #   not exist on the resource, it is ignored.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateBotAliasRequest
    #   data as a hash:
    #
    #       {
    #         bot_alias_id: "BotAliasId", # required
    #         bot_alias_name: "Name", # required
    #         description: "Description",
    #         bot_version: "BotVersion",
    #         bot_alias_locale_settings: {
    #           "LocaleId" => {
    #             enabled: false, # required
    #             code_hook_specification: {
    #               lambda_code_hook: { # required
    #                 lambda_arn: "LambdaARN", # required
    #                 code_hook_interface_version: "CodeHookInterfaceVersion", # required
    #               },
    #             },
    #           },
    #         },
    #         conversation_log_settings: {
    #           text_log_settings: [
    #             {
    #               enabled: false, # required
    #               destination: { # required
    #                 cloud_watch: { # required
    #                   cloud_watch_log_group_arn: "CloudWatchLogGroupArn", # required
    #                   log_prefix: "LogPrefix", # required
    #                 },
    #               },
    #             },
    #           ],
    #           audio_log_settings: [
    #             {
    #               enabled: false, # required
    #               destination: { # required
    #                 s3_bucket: { # required
    #                   kms_key_arn: "KmsKeyArn",
    #                   s3_bucket_arn: "S3BucketArn", # required
    #                   log_prefix: "LogPrefix", # required
    #                 },
    #               },
    #             },
    #           ],
    #         },
    #         sentiment_analysis_settings: {
    #           detect_sentiment: false, # required
    #         },
    #         bot_id: "Id", # required
    #       }
    #
    # @!attribute [rw] bot_alias_id
    #   The unique identifier of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_name
    #   The new name to assign to the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description to assign to the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The new bot version to assign to the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_locale_settings
    #   The new Lambda functions to use in each locale for the bot alias.
    #   @return [Hash<String,Types::BotAliasLocaleSettings>]
    #
    # @!attribute [rw] conversation_log_settings
    #   The new settings for storing conversation logs in Amazon CloudWatch
    #   Logs and Amazon S3 buckets.
    #   @return [Types::ConversationLogSettings]
    #
    # @!attribute [rw] sentiment_analysis_settings
    #   Determines whether Amazon Lex will use Amazon Comprehend to detect
    #   the sentiment of user utterances.
    #   @return [Types::SentimentAnalysisSettings]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot with the updated alias.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotAliasRequest AWS API Documentation
    #
    class UpdateBotAliasRequest < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_alias_id
    #   The identifier of the updated bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_name
    #   The updated name of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the bot alias.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The updated version of the bot that the alias points to.
    #   @return [String]
    #
    # @!attribute [rw] bot_alias_locale_settings
    #   The updated Lambda functions to use in each locale for the bot
    #   alias.
    #   @return [Hash<String,Types::BotAliasLocaleSettings>]
    #
    # @!attribute [rw] conversation_log_settings
    #   The updated settings for storing conversation logs in Amazon
    #   CloudWatch Logs and Amazon S3 buckets.
    #   @return [Types::ConversationLogSettings]
    #
    # @!attribute [rw] sentiment_analysis_settings
    #   Determines whether Amazon Lex will use Amazon Comprehend to detect
    #   the sentiment of user utterances.
    #   @return [Types::SentimentAnalysisSettings]
    #
    # @!attribute [rw] bot_alias_status
    #   The current status of the bot alias. When the status is `Available`
    #   the alias is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot with the updated alias.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the bot was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotAliasResponse AWS API Documentation
    #
    class UpdateBotAliasResponse < Struct.new(
      :bot_alias_id,
      :bot_alias_name,
      :description,
      :bot_version,
      :bot_alias_locale_settings,
      :conversation_log_settings,
      :sentiment_analysis_settings,
      :bot_alias_status,
      :bot_id,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateBotLocaleRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         description: "Description",
    #         nlu_intent_confidence_threshold: 1.0, # required
    #         voice_settings: {
    #           voice_id: "VoiceId", # required
    #           engine: "standard", # accepts standard, neural
    #         },
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the locale to be updated. The
    #   version can only be the `DRAFT` version.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale to update. The string must
    #   match one of the supported locales. For more information, see
    #   [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the locale.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence_threshold
    #   The new confidence threshold where Amazon Lex inserts the
    #   `AMAZON.FallbackIntent` and `AMAZON.KendraSearchIntent` intents in
    #   the list of possible intents for an utterance.
    #   @return [Float]
    #
    # @!attribute [rw] voice_settings
    #   The new Amazon Polly voice Amazon Lex should use for voice
    #   interaction with the user.
    #   @return [Types::VoiceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotLocaleRequest AWS API Documentation
    #
    class UpdateBotLocaleRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the updated locale.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the updated locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the updated bot locale.
    #   @return [String]
    #
    # @!attribute [rw] locale_name
    #   The updated locale name for the locale.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the locale.
    #   @return [String]
    #
    # @!attribute [rw] nlu_intent_confidence_threshold
    #   The updated confidence threshold for inserting the
    #   `AMAZON.FallbackIntent` and `AMAZON.KendraSearchIntent` intents in
    #   the list of possible intents for an utterance.
    #   @return [Float]
    #
    # @!attribute [rw] voice_settings
    #   The updated Amazon Polly voice to use for voice interaction with the
    #   user.
    #   @return [Types::VoiceSettings]
    #
    # @!attribute [rw] bot_locale_status
    #   The current status of the locale. When the bot status is `Built` the
    #   locale is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] failure_reasons
    #   If the `botLocaleStatus` is `Failed`, the `failureReasons` field
    #   lists the errors that occurred while building the bot.
    #   @return [Array<String>]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the locale was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the locale was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] recommended_actions
    #   Recommended actions to take to resolve an error in the
    #   `failureReasons` field.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotLocaleResponse AWS API Documentation
    #
    class UpdateBotLocaleResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :locale_name,
      :description,
      :nlu_intent_confidence_threshold,
      :voice_settings,
      :bot_locale_status,
      :failure_reasons,
      :creation_date_time,
      :last_updated_date_time,
      :recommended_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateBotRecommendationRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         bot_recommendation_id: "Id", # required
    #         encryption_setting: { # required
    #           kms_key_arn: "KmsKeyArn",
    #           bot_locale_export_password: "FilePassword",
    #           associated_transcripts_password: "FilePassword",
    #         },
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot containing the bot recommendation
    #   to be updated.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot containing the bot recommendation to be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   to update. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The unique identifier of the bot recommendation to be updated.
    #   @return [String]
    #
    # @!attribute [rw] encryption_setting
    #   The object representing the passwords that will be used to encrypt
    #   the data related to the bot recommendation results, as well as the
    #   KMS key ARN used to encrypt the associated metadata.
    #   @return [Types::EncryptionSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotRecommendationRequest AWS API Documentation
    #
    class UpdateBotRecommendationRequest < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_id,
      :encryption_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot containing the bot recommendation
    #   that has been updated.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot containing the bot recommendation that has
    #   been updated.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale of the bot recommendation
    #   to update. The string must match one of the supported locales. For
    #   more information, see [Supported languages][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_status
    #   The status of the bot recommendation.
    #
    #   If the status is Failed, then the reasons for the failure are listed
    #   in the failureReasons field.
    #   @return [String]
    #
    # @!attribute [rw] bot_recommendation_id
    #   The unique identifier of the bot recommendation to be updated.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot recommendation was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the bot recommendation was
    #   last updated.
    #   @return [Time]
    #
    # @!attribute [rw] transcript_source_setting
    #   The object representing the Amazon S3 bucket containing the
    #   transcript, as well as the associated metadata.
    #   @return [Types::TranscriptSourceSetting]
    #
    # @!attribute [rw] encryption_setting
    #   The object representing the passwords that were used to encrypt the
    #   data related to the bot recommendation results, as well as the KMS
    #   key ARN used to encrypt the associated metadata.
    #   @return [Types::EncryptionSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotRecommendationResponse AWS API Documentation
    #
    class UpdateBotRecommendationResponse < Struct.new(
      :bot_id,
      :bot_version,
      :locale_id,
      :bot_recommendation_status,
      :bot_recommendation_id,
      :creation_date_time,
      :last_updated_date_time,
      :transcript_source_setting,
      :encryption_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateBotRequest
    #   data as a hash:
    #
    #       {
    #         bot_id: "Id", # required
    #         bot_name: "Name", # required
    #         description: "Description",
    #         role_arn: "RoleArn", # required
    #         data_privacy: { # required
    #           child_directed: false, # required
    #         },
    #         idle_session_ttl_in_seconds: 1, # required
    #       }
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot to update. This identifier is
    #   returned by the [CreateBot][1] operation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/API_CreateBot.html
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The new name of the bot. The name must be unique in the account that
    #   creates the bot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the bot.
    #   @return [String]
    #
    # @!attribute [rw] data_privacy
    #   Provides information on additional privacy protections Amazon Lex
    #   should use with the bot's data.
    #   @return [Types::DataPrivacy]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The time, in seconds, that Amazon Lex should keep information about
    #   a user's conversation with the bot.
    #
    #   A user interaction remains active for the amount of time specified.
    #   If no conversation occurs during this time, the session expires and
    #   Amazon Lex deletes any data provided before the timeout.
    #
    #   You can specify between 60 (1 minute) and 86,400 (24 hours) seconds.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotRequest AWS API Documentation
    #
    class UpdateBotRequest < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that was updated.
    #   @return [String]
    #
    # @!attribute [rw] bot_name
    #   The name of the bot after the update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the bot after the update.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM role used by the bot after
    #   the update.
    #   @return [String]
    #
    # @!attribute [rw] data_privacy
    #   The data privacy settings for the bot after the update.
    #   @return [Types::DataPrivacy]
    #
    # @!attribute [rw] idle_session_ttl_in_seconds
    #   The session timeout, in seconds, for the bot after the update.
    #   @return [Integer]
    #
    # @!attribute [rw] bot_status
    #   Shows the current status of the bot. The bot is first in the
    #   `Creating` status. Once the bot is read for use, it changes to the
    #   `Available` status. After the bot is created, you can use the
    #   `DRAFT` version of the bot.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of the date and time that the bot was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the bot was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateBotResponse AWS API Documentation
    #
    class UpdateBotResponse < Struct.new(
      :bot_id,
      :bot_name,
      :description,
      :role_arn,
      :data_privacy,
      :idle_session_ttl_in_seconds,
      :bot_status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateExportRequest
    #   data as a hash:
    #
    #       {
    #         export_id: "Id", # required
    #         file_password: "ImportExportFilePassword",
    #       }
    #
    # @!attribute [rw] export_id
    #   The unique identifier Amazon Lex assigned to the export.
    #   @return [String]
    #
    # @!attribute [rw] file_password
    #   The new password to use to encrypt the export zip archive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateExportRequest AWS API Documentation
    #
    class UpdateExportRequest < Struct.new(
      :export_id,
      :file_password)
      SENSITIVE = [:file_password]
      include Aws::Structure
    end

    # @!attribute [rw] export_id
    #   The unique identifier Amazon Lex assigned to the export.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   A description of the type of resource that was exported, either a
    #   bot or a bot locale.
    #   @return [Types::ExportResourceSpecification]
    #
    # @!attribute [rw] file_format
    #   The file format used for the files that define the resource. The
    #   `TSV` format is required to export a custom vocabulary only;
    #   otherwise use `LexJson` format.
    #   @return [String]
    #
    # @!attribute [rw] export_status
    #   The status of the export. When the status is `Completed` the export
    #   archive is available for download.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The date and time that the export was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The date and time that the export was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateExportResponse AWS API Documentation
    #
    class UpdateExportResponse < Struct.new(
      :export_id,
      :resource_specification,
      :file_format,
      :export_status,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateIntentRequest
    #   data as a hash:
    #
    #       {
    #         intent_id: "Id", # required
    #         intent_name: "Name", # required
    #         description: "Description",
    #         parent_intent_signature: "IntentSignature",
    #         sample_utterances: [
    #           {
    #             utterance: "Utterance", # required
    #           },
    #         ],
    #         dialog_code_hook: {
    #           enabled: false, # required
    #         },
    #         fulfillment_code_hook: {
    #           enabled: false, # required
    #           post_fulfillment_status_specification: {
    #             success_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             failure_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             timeout_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #           },
    #           fulfillment_updates_specification: {
    #             active: false, # required
    #             start_response: {
    #               delay_in_seconds: 1, # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             update_response: {
    #               frequency_in_seconds: 1, # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             timeout_in_seconds: 1,
    #           },
    #         },
    #         slot_priorities: [
    #           {
    #             priority: 1, # required
    #             slot_id: "Id", # required
    #           },
    #         ],
    #         intent_confirmation_setting: {
    #           prompt_specification: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             max_retries: 1, # required
    #             allow_interrupt: false,
    #           },
    #           declination_response: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           active: false,
    #         },
    #         intent_closing_setting: {
    #           closing_response: { # required
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             allow_interrupt: false,
    #           },
    #           active: false,
    #         },
    #         input_contexts: [
    #           {
    #             name: "Name", # required
    #           },
    #         ],
    #         output_contexts: [
    #           {
    #             name: "Name", # required
    #             time_to_live_in_seconds: 1, # required
    #             turns_to_live: 1, # required
    #           },
    #         ],
    #         kendra_configuration: {
    #           kendra_index: "KendraIndexArn", # required
    #           query_filter_string_enabled: false,
    #           query_filter_string: "QueryFilterString",
    #         },
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #       }
    #
    # @!attribute [rw] intent_id
    #   The unique identifier of the intent to update.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The new name for the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] parent_intent_signature
    #   The signature of the new built-in intent to use as the parent of
    #   this intent.
    #   @return [String]
    #
    # @!attribute [rw] sample_utterances
    #   New utterances used to invoke the intent.
    #   @return [Array<Types::SampleUtterance>]
    #
    # @!attribute [rw] dialog_code_hook
    #   The new Lambda function to use between each turn of the conversation
    #   with the bot.
    #   @return [Types::DialogCodeHookSettings]
    #
    # @!attribute [rw] fulfillment_code_hook
    #   The new Lambda function to call when all of the intents required
    #   slots are provided and the intent is ready for fulfillment.
    #   @return [Types::FulfillmentCodeHookSettings]
    #
    # @!attribute [rw] slot_priorities
    #   A new list of slots and their priorities that are contained by the
    #   intent.
    #   @return [Array<Types::SlotPriority>]
    #
    # @!attribute [rw] intent_confirmation_setting
    #   New prompts that Amazon Lex sends to the user to confirm the
    #   completion of an intent.
    #   @return [Types::IntentConfirmationSetting]
    #
    # @!attribute [rw] intent_closing_setting
    #   The new response that Amazon Lex sends the user when the intent is
    #   closed.
    #   @return [Types::IntentClosingSetting]
    #
    # @!attribute [rw] input_contexts
    #   A new list of contexts that must be active in order for Amazon Lex
    #   to consider the intent.
    #   @return [Array<Types::InputContext>]
    #
    # @!attribute [rw] output_contexts
    #   A new list of contexts that Amazon Lex activates when the intent is
    #   fulfilled.
    #   @return [Array<Types::OutputContext>]
    #
    # @!attribute [rw] kendra_configuration
    #   New configuration settings for connecting to an Amazon Kendra index.
    #   @return [Types::KendraConfiguration]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the intent. Must be `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale where this intent is used.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateIntentRequest AWS API Documentation
    #
    class UpdateIntentRequest < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] intent_id
    #   The identifier of the intent that was updated.
    #   @return [String]
    #
    # @!attribute [rw] intent_name
    #   The updated name of the intent.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the intent.
    #   @return [String]
    #
    # @!attribute [rw] parent_intent_signature
    #   The updated built-in intent that is the parent of this intent.
    #   @return [String]
    #
    # @!attribute [rw] sample_utterances
    #   The updated list of sample utterances for the intent.
    #   @return [Array<Types::SampleUtterance>]
    #
    # @!attribute [rw] dialog_code_hook
    #   The updated Lambda function called during each turn of the
    #   conversation with the user.
    #   @return [Types::DialogCodeHookSettings]
    #
    # @!attribute [rw] fulfillment_code_hook
    #   The updated Lambda function called when the intent is ready for
    #   fulfillment.
    #   @return [Types::FulfillmentCodeHookSettings]
    #
    # @!attribute [rw] slot_priorities
    #   The updated list of slots and their priorities that are elicited
    #   from the user for the intent.
    #   @return [Array<Types::SlotPriority>]
    #
    # @!attribute [rw] intent_confirmation_setting
    #   The updated prompts that Amazon Lex sends to the user to confirm the
    #   completion of an intent.
    #   @return [Types::IntentConfirmationSetting]
    #
    # @!attribute [rw] intent_closing_setting
    #   The updated response that Amazon Lex sends the user when the intent
    #   is closed.
    #   @return [Types::IntentClosingSetting]
    #
    # @!attribute [rw] input_contexts
    #   The updated list of contexts that must be active for the intent to
    #   be considered by Amazon Lex.
    #   @return [Array<Types::InputContext>]
    #
    # @!attribute [rw] output_contexts
    #   The updated list of contexts that Amazon Lex activates when the
    #   intent is fulfilled.
    #   @return [Array<Types::OutputContext>]
    #
    # @!attribute [rw] kendra_configuration
    #   The updated configuration for connecting to an Amazon Kendra index
    #   with the `AMAZON.KendraSearchIntent` intent.
    #   @return [Types::KendraConfiguration]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the intent.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the intent. Will always be
    #   `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The updated language and locale of the intent.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   A timestamp of when the intent was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the last time that the intent was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateIntentResponse AWS API Documentation
    #
    class UpdateIntentResponse < Struct.new(
      :intent_id,
      :intent_name,
      :description,
      :parent_intent_signature,
      :sample_utterances,
      :dialog_code_hook,
      :fulfillment_code_hook,
      :slot_priorities,
      :intent_confirmation_setting,
      :intent_closing_setting,
      :input_contexts,
      :output_contexts,
      :kendra_configuration,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateResourcePolicyRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         policy: "Policy", # required
    #         expected_revision_id: "RevisionId",
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   A resource policy to add to the resource. The policy is a JSON
    #   structure that contains one or more statements that define the
    #   policy. The policy must follow the IAM syntax. For more information
    #   about the contents of a JSON policy document, see [ IAM JSON policy
    #   reference ][1].
    #
    #   If the policy isn't valid, Amazon Lex returns a validation
    #   exception.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html
    #   @return [String]
    #
    # @!attribute [rw] expected_revision_id
    #   The identifier of the revision of the policy to update. If this
    #   revision ID doesn't match the current revision ID, Amazon Lex
    #   throws an exception.
    #
    #   If you don't specify a revision, Amazon Lex overwrites the contents
    #   of the policy with the new values.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateResourcePolicyRequest AWS API Documentation
    #
    class UpdateResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      :expected_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the bot or bot alias that the
    #   resource policy is attached to.
    #   @return [String]
    #
    # @!attribute [rw] revision_id
    #   The current revision of the resource policy. Use the revision ID to
    #   make sure that you are updating the most current version of a
    #   resource policy when you add a policy statement to a resource,
    #   delete a resource, or update a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateResourcePolicyResponse AWS API Documentation
    #
    class UpdateResourcePolicyResponse < Struct.new(
      :resource_arn,
      :revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSlotRequest
    #   data as a hash:
    #
    #       {
    #         slot_id: "Id", # required
    #         slot_name: "Name", # required
    #         description: "Description",
    #         slot_type_id: "BuiltInOrCustomSlotTypeId", # required
    #         value_elicitation_setting: { # required
    #           default_value_specification: {
    #             default_value_list: [ # required
    #               {
    #                 default_value: "SlotDefaultValueString", # required
    #               },
    #             ],
    #           },
    #           slot_constraint: "Required", # required, accepts Required, Optional
    #           prompt_specification: {
    #             message_groups: [ # required
    #               {
    #                 message: { # required
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #                 variations: [
    #                   {
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                 ],
    #               },
    #             ],
    #             max_retries: 1, # required
    #             allow_interrupt: false,
    #           },
    #           sample_utterances: [
    #             {
    #               utterance: "Utterance", # required
    #             },
    #           ],
    #           wait_and_continue_specification: {
    #             waiting_response: { # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             continue_response: { # required
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               allow_interrupt: false,
    #             },
    #             still_waiting_response: {
    #               message_groups: [ # required
    #                 {
    #                   message: { # required
    #                     plain_text_message: {
    #                       value: "PlainTextMessageValue", # required
    #                     },
    #                     custom_payload: {
    #                       value: "CustomPayloadValue", # required
    #                     },
    #                     ssml_message: {
    #                       value: "SSMLMessageValue", # required
    #                     },
    #                     image_response_card: {
    #                       title: "AttachmentTitle", # required
    #                       subtitle: "AttachmentTitle",
    #                       image_url: "AttachmentUrl",
    #                       buttons: [
    #                         {
    #                           text: "ButtonText", # required
    #                           value: "ButtonValue", # required
    #                         },
    #                       ],
    #                     },
    #                   },
    #                   variations: [
    #                     {
    #                       plain_text_message: {
    #                         value: "PlainTextMessageValue", # required
    #                       },
    #                       custom_payload: {
    #                         value: "CustomPayloadValue", # required
    #                       },
    #                       ssml_message: {
    #                         value: "SSMLMessageValue", # required
    #                       },
    #                       image_response_card: {
    #                         title: "AttachmentTitle", # required
    #                         subtitle: "AttachmentTitle",
    #                         image_url: "AttachmentUrl",
    #                         buttons: [
    #                           {
    #                             text: "ButtonText", # required
    #                             value: "ButtonValue", # required
    #                           },
    #                         ],
    #                       },
    #                     },
    #                   ],
    #                 },
    #               ],
    #               frequency_in_seconds: 1, # required
    #               timeout_in_seconds: 1, # required
    #               allow_interrupt: false,
    #             },
    #             active: false,
    #           },
    #         },
    #         obfuscation_setting: {
    #           obfuscation_setting_type: "None", # required, accepts None, DefaultObfuscation
    #         },
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         intent_id: "Id", # required
    #         multiple_values_setting: {
    #           allow_multiple_values: false,
    #         },
    #       }
    #
    # @!attribute [rw] slot_id
    #   The unique identifier for the slot to update.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   The new name for the slot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description for the slot.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_id
    #   The unique identifier of the new slot type to associate with this
    #   slot.
    #   @return [String]
    #
    # @!attribute [rw] value_elicitation_setting
    #   A new set of prompts that Amazon Lex sends to the user to elicit a
    #   response the provides a value for the slot.
    #   @return [Types::SlotValueElicitationSetting]
    #
    # @!attribute [rw] obfuscation_setting
    #   New settings that determine how slot values are formatted in Amazon
    #   CloudWatch logs.
    #   @return [Types::ObfuscationSetting]
    #
    # @!attribute [rw] bot_id
    #   The unique identifier of the bot that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the slot. Must always be
    #   `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that contains the slot.
    #   The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The identifier of the intent that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] multiple_values_setting
    #   Determines whether the slot accepts multiple values in one response.
    #   Multiple value slots are only available in the en-US locale. If you
    #   set this value to `true` in any other locale, Amazon Lex throws a
    #   `ValidationException`.
    #
    #   If the `multipleValuesSetting` is not set, the default value is
    #   `false`.
    #   @return [Types::MultipleValuesSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateSlotRequest AWS API Documentation
    #
    class UpdateSlotRequest < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :multiple_values_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slot_id
    #   The unique identifier of the slot that was updated.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   The updated name of the slot.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the bot.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_id
    #   The updated identifier of the slot type that provides values for the
    #   slot.
    #   @return [String]
    #
    # @!attribute [rw] value_elicitation_setting
    #   The updated prompts that Amazon Lex sends to the user to elicit a
    #   response that provides a value for the slot.
    #   @return [Types::SlotValueElicitationSetting]
    #
    # @!attribute [rw] obfuscation_setting
    #   The updated setting that determines whether the slot value is
    #   obfuscated in the Amazon CloudWatch logs.
    #   @return [Types::ObfuscationSetting]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The identifier of the slot version that contains the slot. Will
    #   always be `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The locale that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] intent_id
    #   The intent that contains the slot.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The timestamp of the date and time that the slot was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   The timestamp of the date and time that the slot was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] multiple_values_setting
    #   Indicates whether the slot accepts multiple values in one response.
    #   @return [Types::MultipleValuesSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateSlotResponse AWS API Documentation
    #
    class UpdateSlotResponse < Struct.new(
      :slot_id,
      :slot_name,
      :description,
      :slot_type_id,
      :value_elicitation_setting,
      :obfuscation_setting,
      :bot_id,
      :bot_version,
      :locale_id,
      :intent_id,
      :creation_date_time,
      :last_updated_date_time,
      :multiple_values_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSlotTypeRequest
    #   data as a hash:
    #
    #       {
    #         slot_type_id: "Id", # required
    #         slot_type_name: "Name", # required
    #         description: "Description",
    #         slot_type_values: [
    #           {
    #             sample_value: {
    #               value: "Value", # required
    #             },
    #             synonyms: [
    #               {
    #                 value: "Value", # required
    #               },
    #             ],
    #           },
    #         ],
    #         value_selection_setting: {
    #           resolution_strategy: "OriginalValue", # required, accepts OriginalValue, TopResolution
    #           regex_filter: {
    #             pattern: "RegexPattern", # required
    #           },
    #           advanced_recognition_setting: {
    #             audio_recognition_strategy: "UseSlotValuesAsCustomVocabulary", # accepts UseSlotValuesAsCustomVocabulary
    #           },
    #         },
    #         parent_slot_type_signature: "SlotTypeSignature",
    #         bot_id: "Id", # required
    #         bot_version: "DraftBotVersion", # required
    #         locale_id: "LocaleId", # required
    #         external_source_setting: {
    #           grammar_slot_type_setting: {
    #             source: {
    #               s3_bucket_name: "S3BucketName", # required
    #               s3_object_key: "S3ObjectPath", # required
    #               kms_key_arn: "KmsKeyArn",
    #             },
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] slot_type_id
    #   The unique identifier of the slot type to update.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_name
    #   The new name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_values
    #   A new list of values and their optional synonyms that define the
    #   values that the slot type can take.
    #   @return [Array<Types::SlotTypeValue>]
    #
    # @!attribute [rw] value_selection_setting
    #   The strategy that Amazon Lex should use when deciding on a value
    #   from the list of slot type values.
    #   @return [Types::SlotValueSelectionSetting]
    #
    # @!attribute [rw] parent_slot_type_signature
    #   The new built-in slot type that should be used as the parent of this
    #   slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the slot type. Must be `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The identifier of the language and locale that contains the slot
    #   type. The string must match one of the supported locales. For more
    #   information, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html
    #   @return [String]
    #
    # @!attribute [rw] external_source_setting
    #   Provides information about the external source of the slot type's
    #   definition.
    #   @return [Types::ExternalSourceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateSlotTypeRequest AWS API Documentation
    #
    class UpdateSlotTypeRequest < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :external_source_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] slot_type_id
    #   The unique identifier of the updated slot type.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_name
    #   The updated name of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The updated description of the slot type.
    #   @return [String]
    #
    # @!attribute [rw] slot_type_values
    #   The updated values that the slot type provides.
    #   @return [Array<Types::SlotTypeValue>]
    #
    # @!attribute [rw] value_selection_setting
    #   The updated strategy that Amazon Lex uses to determine which value
    #   to select from the slot type.
    #   @return [Types::SlotValueSelectionSetting]
    #
    # @!attribute [rw] parent_slot_type_signature
    #   The updated signature of the built-in slot type that is the parent
    #   of this slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_id
    #   The identifier of the bot that contains the slot type.
    #   @return [String]
    #
    # @!attribute [rw] bot_version
    #   The version of the bot that contains the slot type. This is always
    #   `DRAFT`.
    #   @return [String]
    #
    # @!attribute [rw] locale_id
    #   The language and locale of the updated slot type.
    #   @return [String]
    #
    # @!attribute [rw] creation_date_time
    #   The timestamp of the date and time that the slot type was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_date_time
    #   A timestamp of the date and time that the slot type was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] external_source_setting
    #   Provides information about the external source of the slot type's
    #   definition.
    #   @return [Types::ExternalSourceSetting]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UpdateSlotTypeResponse AWS API Documentation
    #
    class UpdateSlotTypeResponse < Struct.new(
      :slot_type_id,
      :slot_type_name,
      :description,
      :slot_type_values,
      :value_selection_setting,
      :parent_slot_type_signature,
      :bot_id,
      :bot_version,
      :locale_id,
      :creation_date_time,
      :last_updated_date_time,
      :external_source_setting)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides parameters for setting the time window and duration for
    # aggregating utterance data.
    #
    # @note When making an API call, you may pass UtteranceAggregationDuration
    #   data as a hash:
    #
    #       {
    #         relative_aggregation_duration: { # required
    #           time_dimension: "Hours", # required, accepts Hours, Days, Weeks
    #           time_value: 1, # required
    #         },
    #       }
    #
    # @!attribute [rw] relative_aggregation_duration
    #   The desired time window for aggregating utterances.
    #   @return [Types::RelativeAggregationDuration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/UtteranceAggregationDuration AWS API Documentation
    #
    class UtteranceAggregationDuration < Struct.new(
      :relative_aggregation_duration)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the input parameters in your request isn't valid. Check the
    # parameters and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines settings for using an Amazon Polly voice to communicate with a
    # user.
    #
    # @note When making an API call, you may pass VoiceSettings
    #   data as a hash:
    #
    #       {
    #         voice_id: "VoiceId", # required
    #         engine: "standard", # accepts standard, neural
    #       }
    #
    # @!attribute [rw] voice_id
    #   The identifier of the Amazon Polly voice to use.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   Indicates the type of Amazon Polly voice that Amazon Lex should use
    #   for voice interaction with the user. For more information, see the [
    #   `engine` parameter of the `SynthesizeSpeech` operation][1] in the
    #   *Amazon Polly developer guide*.
    #
    #   If you do not specify a value, the default is `standard`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/polly/latest/dg/API_SynthesizeSpeech.html#polly-SynthesizeSpeech-request-Engine
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/VoiceSettings AWS API Documentation
    #
    class VoiceSettings < Struct.new(
      :voice_id,
      :engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the prompts that Amazon Lex uses while a bot is waiting for
    # customer input.
    #
    # @note When making an API call, you may pass WaitAndContinueSpecification
    #   data as a hash:
    #
    #       {
    #         waiting_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         continue_response: { # required
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           allow_interrupt: false,
    #         },
    #         still_waiting_response: {
    #           message_groups: [ # required
    #             {
    #               message: { # required
    #                 plain_text_message: {
    #                   value: "PlainTextMessageValue", # required
    #                 },
    #                 custom_payload: {
    #                   value: "CustomPayloadValue", # required
    #                 },
    #                 ssml_message: {
    #                   value: "SSMLMessageValue", # required
    #                 },
    #                 image_response_card: {
    #                   title: "AttachmentTitle", # required
    #                   subtitle: "AttachmentTitle",
    #                   image_url: "AttachmentUrl",
    #                   buttons: [
    #                     {
    #                       text: "ButtonText", # required
    #                       value: "ButtonValue", # required
    #                     },
    #                   ],
    #                 },
    #               },
    #               variations: [
    #                 {
    #                   plain_text_message: {
    #                     value: "PlainTextMessageValue", # required
    #                   },
    #                   custom_payload: {
    #                     value: "CustomPayloadValue", # required
    #                   },
    #                   ssml_message: {
    #                     value: "SSMLMessageValue", # required
    #                   },
    #                   image_response_card: {
    #                     title: "AttachmentTitle", # required
    #                     subtitle: "AttachmentTitle",
    #                     image_url: "AttachmentUrl",
    #                     buttons: [
    #                       {
    #                         text: "ButtonText", # required
    #                         value: "ButtonValue", # required
    #                       },
    #                     ],
    #                   },
    #                 },
    #               ],
    #             },
    #           ],
    #           frequency_in_seconds: 1, # required
    #           timeout_in_seconds: 1, # required
    #           allow_interrupt: false,
    #         },
    #         active: false,
    #       }
    #
    # @!attribute [rw] waiting_response
    #   The response that Amazon Lex sends to indicate that the bot is
    #   waiting for the conversation to continue.
    #   @return [Types::ResponseSpecification]
    #
    # @!attribute [rw] continue_response
    #   The response that Amazon Lex sends to indicate that the bot is ready
    #   to continue the conversation.
    #   @return [Types::ResponseSpecification]
    #
    # @!attribute [rw] still_waiting_response
    #   A response that Amazon Lex sends periodically to the user to
    #   indicate that the bot is still waiting for input from the user.
    #   @return [Types::StillWaitingResponseSpecification]
    #
    # @!attribute [rw] active
    #   Specifies whether the bot will wait for a user to respond. When this
    #   field is false, wait and continue responses for a slot aren't used.
    #   If the `active` field isn't specified, the default is true.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/models.lex.v2-2020-08-07/WaitAndContinueSpecification AWS API Documentation
    #
    class WaitAndContinueSpecification < Struct.new(
      :waiting_response,
      :continue_response,
      :still_waiting_response,
      :active)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
