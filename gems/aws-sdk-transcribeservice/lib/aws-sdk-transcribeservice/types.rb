# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeService
  module Types

    # A time range, set in seconds, between two points in the call.
    #
    # @note When making an API call, you may pass AbsoluteTimeRange
    #   data as a hash:
    #
    #       {
    #         start_time: 1,
    #         end_time: 1,
    #         first: 1,
    #         last: 1,
    #       }
    #
    # @!attribute [rw] start_time
    #   A value that indicates the beginning of the time range in seconds.
    #   To set absolute time range, you must specify a start time and an end
    #   time. For example, if you specify the following values:
    #
    #   * StartTime - 10000
    #
    #   * Endtime - 50000
    #
    #   The time range is set between 10,000 milliseconds and 50,000
    #   milliseconds into the call.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   A value that indicates the end of the time range in milliseconds. To
    #   set absolute time range, you must specify a start time and an end
    #   time. For example, if you specify the following values:
    #
    #   * StartTime - 10000
    #
    #   * Endtime - 50000
    #
    #   The time range is set between 10,000 milliseconds and 50,000
    #   milliseconds into the call.
    #   @return [Integer]
    #
    # @!attribute [rw] first
    #   A time range from the beginning of the call to the value that
    #   you've specified. For example, if you specify `100000`, the time
    #   range is set to the first 100,000 milliseconds of the call.
    #   @return [Integer]
    #
    # @!attribute [rw] last
    #   A time range from the value that you've specified to the end of the
    #   call. For example, if you specify `100000`, the time range is set to
    #   the last 100,000 milliseconds of the call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/AbsoluteTimeRange AWS API Documentation
    #
    class AbsoluteTimeRange < Struct.new(
      :start_time,
      :end_time,
      :first,
      :last)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your request didn't pass one or more validation tests. For example,
    # if the entity that you're trying to delete doesn't exist or if it is
    # in a non-terminal state (for example, it's "in progress"). See the
    # exception `Message` field for more information.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an asynchronous analytics job that was created with the
    # `StartAnalyticsJob` operation.
    #
    # @!attribute [rw] call_analytics_job_name
    #   The name of the call analytics job.
    #   @return [String]
    #
    # @!attribute [rw] call_analytics_job_status
    #   The status of the analytics job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   If you know the language spoken between the customer and the agent,
    #   specify a language code for this field.
    #
    #   If you don't know the language, you can leave this field blank, and
    #   Amazon Transcribe will use machine learning to automatically
    #   identify the language. To improve the accuracy of language
    #   identification, you can provide an array containing the possible
    #   language codes for the language spoken in your audio. Refer to
    #   [Supported languages][1] for additional information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The format of the input audio file. Note: for call analytics jobs,
    #   only the following media formats are supported: MP3, MP4, WAV, FLAC,
    #   OGG, and WebM.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the input media file in a transcription request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] transcript
    #   Identifies the location of a transcription.
    #   @return [Types::Transcript]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the analytics job started processing.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the analytics job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   A timestamp that shows when the analytics job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the `AnalyticsJobStatus` is `FAILED`, this field contains
    #   information about why the job failed.
    #
    #   The `FailureReason` field can contain one of the following values:
    #
    #   * `Unsupported media format`\: The media format specified in the
    #     `MediaFormat` field of the request isn't valid. See the
    #     description of the `MediaFormat` field for a list of valid values.
    #
    #   * `The media format provided does not match the detected media
    #     format`\: The media format of the audio file doesn't match the
    #     format specified in the `MediaFormat` field in the request. Check
    #     the media format of your media file and make sure the two values
    #     match.
    #
    #   * `Invalid sample rate for audio file`\: The sample rate specified
    #     in the `MediaSampleRateHertz` of the request isn't valid. The
    #     sample rate must be between 8,000 and 48,000 Hertz.
    #
    #   * `The sample rate provided does not match the detected sample
    #     rate`\: The sample rate in the audio file doesn't match the
    #     sample rate specified in the `MediaSampleRateHertz` field in the
    #     request. Check the sample rate of your media file and make sure
    #     that the two values match.
    #
    #   * `Invalid file size: file size too large`\: The size of your audio
    #     file is larger than what Amazon Transcribe Medical can process.
    #     For more information, see *Guidelines and Quotas* in the Amazon
    #     Transcribe Medical Guide.
    #
    #   * `Invalid number of channels: number of channels too large`\: Your
    #     audio contains more channels than Amazon Transcribe Medical is
    #     configured to process. To request additional channels, see Amazon
    #     Transcribe Medical Endpoints and Quotas in the [Amazon Web
    #     Services General Reference][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/Welcome.html
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Number (ARN) that you use to access the
    #   analytics job. ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #   @return [String]
    #
    # @!attribute [rw] identified_language_score
    #   A value between zero and one that Amazon Transcribe assigned to the
    #   language that it identified in the source audio. This value appears
    #   only when you don't provide a single language code. Larger values
    #   indicate that Amazon Transcribe has higher confidence in the
    #   language that it identified.
    #   @return [Float]
    #
    # @!attribute [rw] settings
    #   Provides information about the settings used to run a transcription
    #   job.
    #   @return [Types::CallAnalyticsJobSettings]
    #
    # @!attribute [rw] channel_definitions
    #   Shows numeric values to indicate the channel assigned to the
    #   agent's audio and the channel assigned to the customer's audio.
    #   @return [Array<Types::ChannelDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CallAnalyticsJob AWS API Documentation
    #
    class CallAnalyticsJob < Struct.new(
      :call_analytics_job_name,
      :call_analytics_job_status,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :transcript,
      :start_time,
      :creation_time,
      :completion_time,
      :failure_reason,
      :data_access_role_arn,
      :identified_language_score,
      :settings,
      :channel_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides optional settings for the `CallAnalyticsJob` operation.
    #
    # @note When making an API call, you may pass CallAnalyticsJobSettings
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #         language_model_name: "ModelName",
    #         content_redaction: {
    #           redaction_type: "PII", # required, accepts PII
    #           redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #           pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
    #         },
    #         language_options: ["af-ZA"], # accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         language_id_settings: {
    #           "af-ZA" => {
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             language_model_name: "ModelName",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of a vocabulary to use when processing the call analytics
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter to use when running a call
    #   analytics job. The filter that you specify must have the same
    #   language code as the analytics job.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Set to mask to remove filtered text from the transcript and replace
    #   it with three asterisks ("***") as placeholder text. Set to
    #   `remove` to remove filtered text from the transcript without using
    #   placeholder text. Set to `tag` to mark the word in the transcription
    #   output that matches the vocabulary filter. When you set the filter
    #   method to `tag`, the words matching your vocabulary filter are not
    #   masked or removed.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The structure used to describe a custom language model.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction
    #   Settings for content redaction within a transcription job.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] language_options
    #   When you run a call analytics job, you can specify the language
    #   spoken in the audio, or you can have Amazon Transcribe identify the
    #   language for you.
    #
    #   To specify a language, specify an array with one language code. If
    #   you don't know the language, you can leave this field blank and
    #   Amazon Transcribe will use machine learning to identify the language
    #   for you. To improve the ability of Amazon Transcribe to correctly
    #   identify the language, you can provide an array of the languages
    #   that can be present in the audio. Refer to [Supported languages][1]
    #   for additional information.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_id_settings
    #   The language identification settings associated with your call
    #   analytics job. These settings include `VocabularyName`,
    #   `VocabularyFilterName`, and `LanguageModelName`.
    #   @return [Hash<String,Types::LanguageIdSettings>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CallAnalyticsJobSettings AWS API Documentation
    #
    class CallAnalyticsJobSettings < Struct.new(
      :vocabulary_name,
      :vocabulary_filter_name,
      :vocabulary_filter_method,
      :language_model_name,
      :content_redaction,
      :language_options,
      :language_id_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a call analytics job.
    #
    # @!attribute [rw] call_analytics_job_name
    #   The name of the call analytics job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the call analytics job was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the job began processing.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   A timestamp that shows when the job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language of the transcript in the source audio file.
    #   @return [String]
    #
    # @!attribute [rw] call_analytics_job_status
    #   The status of the call analytics job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the `CallAnalyticsJobStatus` is `FAILED`, a description of the
    #   error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CallAnalyticsJobSummary AWS API Documentation
    #
    class CallAnalyticsJobSummary < Struct.new(
      :call_analytics_job_name,
      :creation_time,
      :start_time,
      :completion_time,
      :language_code,
      :call_analytics_job_status,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that contains the rules and additional information about a
    # call analytics category.
    #
    # @!attribute [rw] category_name
    #   The name of the call analytics category.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The rules used to create a call analytics category.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] create_time
    #   A timestamp that shows when the call analytics category was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   A timestamp that shows when the call analytics category was most
    #   recently updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CategoryProperties AWS API Documentation
    #
    class CategoryProperties < Struct.new(
      :category_name,
      :rules,
      :create_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a call analytics job, an object that indicates the audio channel
    # that belongs to the agent and the audio channel that belongs to the
    # customer.
    #
    # @note When making an API call, you may pass ChannelDefinition
    #   data as a hash:
    #
    #       {
    #         channel_id: 1,
    #         participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #       }
    #
    # @!attribute [rw] channel_id
    #   A value that indicates the audio channel.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_role
    #   Indicates whether the person speaking on the audio channel is the
    #   agent or customer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ChannelDefinition AWS API Documentation
    #
    class ChannelDefinition < Struct.new(
      :channel_id,
      :participant_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # There is already a resource with that name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for content redaction within a transcription job.
    #
    # @note When making an API call, you may pass ContentRedaction
    #   data as a hash:
    #
    #       {
    #         redaction_type: "PII", # required, accepts PII
    #         redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #         pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
    #       }
    #
    # @!attribute [rw] redaction_type
    #   Request parameter that defines the entities to be redacted. The only
    #   accepted value is `PII`.
    #   @return [String]
    #
    # @!attribute [rw] redaction_output
    #   The output transcript file stored in either the default S3 bucket or
    #   in a bucket you specify.
    #
    #   When you choose `redacted` Amazon Transcribe outputs only the
    #   redacted transcript.
    #
    #   When you choose `redacted_and_unredacted` Amazon Transcribe outputs
    #   both the redacted and unredacted transcripts.
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   The types of personally identifiable information (PII) you want to
    #   redact in your transcript.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ContentRedaction AWS API Documentation
    #
    class ContentRedaction < Struct.new(
      :redaction_type,
      :redaction_output,
      :pii_entity_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateCallAnalyticsCategoryRequest
    #   data as a hash:
    #
    #       {
    #         category_name: "CategoryName", # required
    #         rules: [ # required
    #           {
    #             non_talk_time_filter: {
    #               threshold: 1,
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               negate: false,
    #             },
    #             interruption_filter: {
    #               threshold: 1,
    #               participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               negate: false,
    #             },
    #             transcript_filter: {
    #               transcript_filter_type: "EXACT", # required, accepts EXACT
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #               negate: false,
    #               targets: ["NonEmptyString"], # required
    #             },
    #             sentiment_filter: {
    #               sentiments: ["POSITIVE"], # required, accepts POSITIVE, NEGATIVE, NEUTRAL, MIXED
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #               negate: false,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] category_name
    #   The name that you choose for your category when you create it.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   To create a category, you must specify between 1 and 20 rules. For
    #   each rule, you specify a filter to be applied to the attributes of
    #   the call. For example, you can specify a sentiment filter to detect
    #   if the customer's sentiment was negative or neutral.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateCallAnalyticsCategoryRequest AWS API Documentation
    #
    class CreateCallAnalyticsCategoryRequest < Struct.new(
      :category_name,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category_properties
    #   The rules and associated metadata used to create a category.
    #   @return [Types::CategoryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateCallAnalyticsCategoryResponse AWS API Documentation
    #
    class CreateCallAnalyticsCategoryResponse < Struct.new(
      :category_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLanguageModelRequest
    #   data as a hash:
    #
    #       {
    #         language_code: "en-US", # required, accepts en-US, hi-IN, es-US, en-GB, en-AU
    #         base_model_name: "NarrowBand", # required, accepts NarrowBand, WideBand
    #         model_name: "ModelName", # required
    #         input_data_config: { # required
    #           s3_uri: "Uri", # required
    #           tuning_data_s3_uri: "Uri",
    #           data_access_role_arn: "DataAccessRoleArn", # required
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] language_code
    #   The language of the input text you're using to train your custom
    #   language model.
    #   @return [String]
    #
    # @!attribute [rw] base_model_name
    #   The Amazon Transcribe standard language model, or base model used to
    #   create your custom language model.
    #
    #   If you want to use your custom language model to transcribe audio
    #   with a sample rate of 16,000 Hz or greater, choose `Wideband`.
    #
    #   If you want to use your custom language model to transcribe audio
    #   with a sample rate that is less than 16,000 Hz, choose `Narrowband`.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name you choose for your custom language model when you create
    #   it.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Contains the data access role and the Amazon S3 prefixes to read the
    #   required input files to create a custom language model.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] tags
    #   Adds one or more tags, each in the form of a key:value pair, to a
    #   new language model at the time you create this new model.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateLanguageModelRequest AWS API Documentation
    #
    class CreateLanguageModelRequest < Struct.new(
      :language_code,
      :base_model_name,
      :model_name,
      :input_data_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] language_code
    #   The language code of the text you've used to create a custom
    #   language model.
    #   @return [String]
    #
    # @!attribute [rw] base_model_name
    #   The Amazon Transcribe standard language model, or base model you've
    #   used to create a custom language model.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name you've chosen for your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The data access role and Amazon S3 prefixes you've chosen to create
    #   your custom language model.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] model_status
    #   The status of the custom language model. When the status is
    #   `COMPLETED` the model is ready to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateLanguageModelResponse AWS API Documentation
    #
    class CreateLanguageModelResponse < Struct.new(
      :language_code,
      :base_model_name,
      :model_name,
      :input_data_config,
      :model_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMedicalVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         vocabulary_file_uri: "Uri", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary. This case-sensitive name must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   vocabulary with the same name as a previous vocabulary, you get a
    #   `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the language used for the entries in your
    #   custom vocabulary. The language code of your custom vocabulary must
    #   match the language code of your transcription job. US English
    #   (en-US) is the only language code available for Amazon Transcribe
    #   Medical.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The location in Amazon S3 of the text file you use to define your
    #   custom vocabulary. The URI must be in the same Amazon Web Services
    #   Region as the resource that you're calling. Enter information about
    #   your `VocabularyFileUri` in the following format:
    #
    #   `https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>`
    #
    #   The following is an example URI for a vocabulary file that is stored
    #   in Amazon S3:
    #
    #   `https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt`
    #
    #   For more information about Amazon S3 object names, see [Object
    #   Keys][1] in the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Medical Custom
    #   Vocabularies][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-med.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more tags, each in the form of a key:value pair, to a
    #   new medical vocabulary at the time you create this new vocabulary.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateMedicalVocabularyRequest AWS API Documentation
    #
    class CreateMedicalVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_file_uri,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary. The name must be unique within an Amazon
    #   Web Services account and is case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the entries in your custom vocabulary. US
    #   English (en-US) is the only valid language code for Amazon
    #   Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom vocabulary in Amazon Transcribe
    #   Medical. If the state is `READY`, you can use the vocabulary in a
    #   `StartMedicalTranscriptionJob` request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that you created the vocabulary.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the `VocabularyState` field is `FAILED`, this field contains
    #   information about why the job failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateMedicalVocabularyResponse AWS API Documentation
    #
    class CreateMedicalVocabularyResponse < Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVocabularyFilterRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_filter_name: "VocabularyFilterName", # required
    #         language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         words: ["Word"],
    #         vocabulary_filter_file_uri: "Uri",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The vocabulary filter name. The name must be unique within the
    #   account that contains it. If you try to create a vocabulary filter
    #   with the same name as another vocabulary filter, you get a
    #   `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the words in the vocabulary filter. All words
    #   in the filter must be in the same language. The vocabulary filter
    #   can only be used with transcription jobs in the specified language.
    #   @return [String]
    #
    # @!attribute [rw] words
    #   The words to use in the vocabulary filter. Only use characters from
    #   the character set defined for custom vocabularies. For a list of
    #   character sets, see [Character Sets for Custom Vocabularies][1].
    #
    #   If you provide a list of words in the `Words` parameter, you can't
    #   use the `VocabularyFilterFileUri` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_filter_file_uri
    #   The Amazon S3 location of a text file used as input to create the
    #   vocabulary filter. Only use characters from the character set
    #   defined for custom vocabularies. For a list of character sets, see
    #   [Character Sets for Custom Vocabularies][1].
    #
    #   The specified file must be less than 50 KB of UTF-8 characters.
    #
    #   If you provide the location of a list of words in the
    #   `VocabularyFilterFileUri` parameter, you can't use the `Words`
    #   parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more tags, each in the form of a key:value pair, to a
    #   new Amazon Transcribe vocabulary filter at the time you create this
    #   new vocabulary filter.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyFilterRequest AWS API Documentation
    #
    class CreateVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :words,
      :vocabulary_filter_file_uri,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the words in the collection.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary filter was modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyFilterResponse AWS API Documentation
    #
    class CreateVocabularyFilterResponse < Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         phrases: ["Phrase"],
    #         vocabulary_file_uri: "Uri",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary. The name must be unique within an Amazon
    #   Web Services account. The name is case sensitive. If you try to
    #   create a vocabulary with the same name as a previous vocabulary you
    #   will receive a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see table-language-matrix.
    #   @return [String]
    #
    # @!attribute [rw] phrases
    #   An array of strings that contains the vocabulary entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The S3 location of the text file that contains the definition of the
    #   custom vocabulary. The URI must be in the same region as the API
    #   endpoint that you are calling. The general form is:
    #
    #   `https://s3.<Amazon Web
    #   Services-region>.amazonaws.com/<AWSDOC-EXAMPLE-BUCKET>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Custom
    #   vocabularies][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more tags, each in the form of a key:value pair, to a
    #   new Amazon Transcribe vocabulary at the time you create this new
    #   vocabulary.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyRequest AWS API Documentation
    #
    class CreateVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of the vocabulary. When the `VocabularyState`
    #   field contains `READY` the vocabulary is ready to be used in a
    #   `StartTranscriptionJob` request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary was created.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the `VocabularyState` field is `FAILED`, this field contains
    #   information about why the job failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyResponse AWS API Documentation
    #
    class CreateVocabularyResponse < Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCallAnalyticsCategoryRequest
    #   data as a hash:
    #
    #       {
    #         category_name: "CategoryName", # required
    #       }
    #
    # @!attribute [rw] category_name
    #   The name of the call analytics category that you're choosing to
    #   delete. The value is case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteCallAnalyticsCategoryRequest AWS API Documentation
    #
    class DeleteCallAnalyticsCategoryRequest < Struct.new(
      :category_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteCallAnalyticsCategoryResponse AWS API Documentation
    #
    class DeleteCallAnalyticsCategoryResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteCallAnalyticsJobRequest
    #   data as a hash:
    #
    #       {
    #         call_analytics_job_name: "CallAnalyticsJobName", # required
    #       }
    #
    # @!attribute [rw] call_analytics_job_name
    #   The name of the call analytics job you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteCallAnalyticsJobRequest AWS API Documentation
    #
    class DeleteCallAnalyticsJobRequest < Struct.new(
      :call_analytics_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteCallAnalyticsJobResponse AWS API Documentation
    #
    class DeleteCallAnalyticsJobResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteLanguageModelRequest
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the model you're choosing to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteLanguageModelRequest AWS API Documentation
    #
    class DeleteLanguageModelRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMedicalTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         medical_transcription_job_name: "TranscriptionJobName", # required
    #       }
    #
    # @!attribute [rw] medical_transcription_job_name
    #   The name you provide to the `DeleteMedicalTranscriptionJob` object
    #   to delete a transcription job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteMedicalTranscriptionJobRequest AWS API Documentation
    #
    class DeleteMedicalTranscriptionJobRequest < Struct.new(
      :medical_transcription_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteMedicalVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteMedicalVocabularyRequest AWS API Documentation
    #
    class DeleteMedicalVocabularyRequest < Struct.new(
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         transcription_job_name: "TranscriptionJobName", # required
    #       }
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteTranscriptionJobRequest AWS API Documentation
    #
    class DeleteTranscriptionJobRequest < Struct.new(
      :transcription_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVocabularyFilterRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_filter_name: "VocabularyFilterName", # required
    #       }
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabularyFilterRequest AWS API Documentation
    #
    class DeleteVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabularyRequest AWS API Documentation
    #
    class DeleteVocabularyRequest < Struct.new(
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLanguageModelRequest
    #   data as a hash:
    #
    #       {
    #         model_name: "ModelName", # required
    #       }
    #
    # @!attribute [rw] model_name
    #   The name of the custom language model you submit to get more
    #   information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DescribeLanguageModelRequest AWS API Documentation
    #
    class DescribeLanguageModelRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] language_model
    #   The name of the custom language model you requested more information
    #   about.
    #   @return [Types::LanguageModel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DescribeLanguageModelResponse AWS API Documentation
    #
    class DescribeLanguageModelResponse < Struct.new(
      :language_model)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCallAnalyticsCategoryRequest
    #   data as a hash:
    #
    #       {
    #         category_name: "CategoryName", # required
    #       }
    #
    # @!attribute [rw] category_name
    #   The name of the category you want information about. This value is
    #   case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsCategoryRequest AWS API Documentation
    #
    class GetCallAnalyticsCategoryRequest < Struct.new(
      :category_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category_properties
    #   The rules you've defined for a category.
    #   @return [Types::CategoryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsCategoryResponse AWS API Documentation
    #
    class GetCallAnalyticsCategoryResponse < Struct.new(
      :category_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetCallAnalyticsJobRequest
    #   data as a hash:
    #
    #       {
    #         call_analytics_job_name: "CallAnalyticsJobName", # required
    #       }
    #
    # @!attribute [rw] call_analytics_job_name
    #   The name of the analytics job you want information about. This value
    #   is case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsJobRequest AWS API Documentation
    #
    class GetCallAnalyticsJobRequest < Struct.new(
      :call_analytics_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] call_analytics_job
    #   An object that contains the results of your call analytics job.
    #   @return [Types::CallAnalyticsJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsJobResponse AWS API Documentation
    #
    class GetCallAnalyticsJobResponse < Struct.new(
      :call_analytics_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMedicalTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         medical_transcription_job_name: "TranscriptionJobName", # required
    #       }
    #
    # @!attribute [rw] medical_transcription_job_name
    #   The name of the medical transcription job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetMedicalTranscriptionJobRequest AWS API Documentation
    #
    class GetMedicalTranscriptionJobRequest < Struct.new(
      :medical_transcription_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] medical_transcription_job
    #   An object that contains the results of the medical transcription
    #   job.
    #   @return [Types::MedicalTranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetMedicalTranscriptionJobResponse AWS API Documentation
    #
    class GetMedicalTranscriptionJobResponse < Struct.new(
      :medical_transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMedicalVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary that you want information about. The
    #   value is case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetMedicalVocabularyRequest AWS API Documentation
    #
    class GetMedicalVocabularyRequest < Struct.new(
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary returned by Amazon Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The valid language code for your vocabulary entries.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of the vocabulary. If the `VocabularyState` is
    #   `READY` then you can use it in the `StartMedicalTranscriptionJob`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary was last modified with a text
    #   file different from the one that was previously used.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the `VocabularyState` is `FAILED`, this field contains
    #   information about why the job failed.
    #   @return [String]
    #
    # @!attribute [rw] download_uri
    #   The location in Amazon S3 where the vocabulary is stored. Use this
    #   URI to get the contents of the vocabulary. You can download your
    #   vocabulary from the URI for a limited time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetMedicalVocabularyResponse AWS API Documentation
    #
    class GetMedicalVocabularyResponse < Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason,
      :download_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         transcription_job_name: "TranscriptionJobName", # required
    #       }
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetTranscriptionJobRequest AWS API Documentation
    #
    class GetTranscriptionJobRequest < Struct.new(
      :transcription_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transcription_job
    #   An object that contains the results of the transcription job.
    #   @return [Types::TranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetTranscriptionJobResponse AWS API Documentation
    #
    class GetTranscriptionJobResponse < Struct.new(
      :transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVocabularyFilterRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_filter_name: "VocabularyFilterName", # required
    #       }
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter for which to return information.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabularyFilterRequest AWS API Documentation
    #
    class GetVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the words in the vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the contents of the vocabulary filter were
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] download_uri
    #   The URI of the list of words in the vocabulary filter. You can use
    #   this URI to get the list of words.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabularyFilterResponse AWS API Documentation
    #
    class GetVocabularyFilterResponse < Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time,
      :download_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to return information about. The name is
    #   case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabularyRequest AWS API Documentation
    #
    class GetVocabularyRequest < Struct.new(
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to return.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of the vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the `VocabularyState` field is `FAILED`, this field contains
    #   information about why the job failed.
    #   @return [String]
    #
    # @!attribute [rw] download_uri
    #   The S3 location where the vocabulary is stored. Use this URI to get
    #   the contents of the vocabulary. The URI is available for a limited
    #   time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabularyResponse AWS API Documentation
    #
    class GetVocabularyResponse < Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_state,
      :last_modified_time,
      :failure_reason,
      :download_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object that contains the Amazon S3 object location and access role
    # required to train and tune your custom language model.
    #
    # @note When making an API call, you may pass InputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "Uri", # required
    #         tuning_data_s3_uri: "Uri",
    #         data_access_role_arn: "DataAccessRoleArn", # required
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 prefix you specify to access the plain text files that
    #   you use to train your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] tuning_data_s3_uri
    #   The Amazon S3 prefix you specify to access the plain text files that
    #   you use to tune your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the
    #   permissions you've given Amazon Transcribe to access your Amazon S3
    #   buckets containing your media files or text data. ARNs have the
    #   format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_uri,
      :tuning_data_s3_uri,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal error. Check the error message and try your
    # request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/InternalFailureException AWS API Documentation
    #
    class InternalFailureException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that enables you to configure your category to be applied to
    # call analytics jobs where either the customer or agent was
    # interrupted.
    #
    # @note When making an API call, you may pass InterruptionFilter
    #   data as a hash:
    #
    #       {
    #         threshold: 1,
    #         participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         negate: false,
    #       }
    #
    # @!attribute [rw] threshold
    #   The duration of the interruption.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_role
    #   Indicates whether the caller or customer was interrupting.
    #   @return [String]
    #
    # @!attribute [rw] absolute_time_range
    #   An object you can use to specify a time range (in milliseconds) for
    #   when you'd want to find the interruption. For example, you could
    #   search for an interruption between the 30,000 millisecond mark and
    #   the 45,000 millisecond mark. You could also specify the time period
    #   as the first 15,000 milliseconds or the last 15,000 milliseconds.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   An object that allows percentages to specify the proportion of the
    #   call where there was a interruption. For example, you can specify
    #   the first half of the call. You can also specify the period of time
    #   between halfway through to three-quarters of the way through the
    #   call. Because the length of conversation can vary between calls, you
    #   can apply relative time ranges across all calls.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] negate
    #   Set to `TRUE` to look for a time period where there was no
    #   interruption.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/InterruptionFilter AWS API Documentation
    #
    class InterruptionFilter < Struct.new(
      :threshold,
      :participant_role,
      :absolute_time_range,
      :relative_time_range,
      :negate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about when a transcription job should be
    # executed.
    #
    # @note When making an API call, you may pass JobExecutionSettings
    #   data as a hash:
    #
    #       {
    #         allow_deferred_execution: false,
    #         data_access_role_arn: "DataAccessRoleArn",
    #       }
    #
    # @!attribute [rw] allow_deferred_execution
    #   Indicates whether a job should be queued by Amazon Transcribe when
    #   the concurrent execution limit is exceeded. When the
    #   `AllowDeferredExecution` field is true, jobs are queued and executed
    #   when the number of executing jobs falls below the concurrent
    #   execution limit. If the field is false, Amazon Transcribe returns a
    #   `LimitExceededException` exception.
    #
    #   Note that job queuing is enabled by default for call analytics jobs.
    #
    #   If you specify the `AllowDeferredExecution` field, you must specify
    #   the `DataAccessRoleArn` field.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN), in the form
    #   `arn:partition:service:region:account-id:resource-type/resource-id`,
    #   of a role that has access to the S3 bucket that contains the input
    #   files. Amazon Transcribe assumes this role to read queued media
    #   files. If you have specified an output S3 bucket for the
    #   transcription results, this role should have access to the output
    #   bucket as well.
    #
    #   If you specify the `AllowDeferredExecution` field, you must specify
    #   the `DataAccessRoleArn` field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/JobExecutionSettings AWS API Documentation
    #
    class JobExecutionSettings < Struct.new(
      :allow_deferred_execution,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Language-specific settings that can be specified when language
    # identification is enabled.
    #
    # @note When making an API call, you may pass LanguageIdSettings
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName",
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         language_model_name: "ModelName",
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary you want to use when processing your
    #   transcription job. The vocabulary you specify must have the same
    #   language codes as the transcription job; if the languages don't
    #   match, the vocabulary isn't applied.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter you want to use when transcribing
    #   your audio. The filter you specify must have the same language codes
    #   as the transcription job; if the languages don't match, the
    #   vocabulary filter isn't be applied.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The name of the language model you want to use when transcribing
    #   your audio. The model you specify must have the same language codes
    #   as the transcription job; if the languages don't match, the
    #   language model isn't be applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/LanguageIdSettings AWS API Documentation
    #
    class LanguageIdSettings < Struct.new(
      :vocabulary_name,
      :vocabulary_filter_name,
      :language_model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure used to describe a custom language model.
    #
    # @!attribute [rw] model_name
    #   The name of the custom language model.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time the custom language model was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The most recent time the custom language model was modified.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language code you used to create your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] base_model_name
    #   The Amazon Transcribe standard language model, or base model used to
    #   create the custom language model.
    #   @return [String]
    #
    # @!attribute [rw] model_status
    #   The creation status of a custom language model. When the status is
    #   `COMPLETED` the model is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] upgrade_availability
    #   Whether the base model used for the custom language model is up to
    #   date. If this field is `true` then you are running the most
    #   up-to-date version of the base model in your custom language model.
    #   @return [Boolean]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the custom language model couldn't be created.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The data access role and Amazon S3 prefixes for the input files used
    #   to train the custom language model.
    #   @return [Types::InputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/LanguageModel AWS API Documentation
    #
    class LanguageModel < Struct.new(
      :model_name,
      :create_time,
      :last_modified_time,
      :language_code,
      :base_model_name,
      :model_status,
      :upgrade_availability,
      :failure_reason,
      :input_data_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Either you have sent too many requests or your input file is too long.
    # Wait before you resend your request, or use a smaller file and resend
    # the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCallAnalyticsCategoriesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   When included, `NextToken`fetches the next set of categories if the
    #   result of the previous request was truncated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of categories to return in each page of results.
    #   If there are fewer results than the value you specify, only the
    #   actual results are returned. If you do not specify a value, the
    #   default of 5 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListCallAnalyticsCategoriesRequest AWS API Documentation
    #
    class ListCallAnalyticsCategoriesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The operation returns a page of jobs at a time. The maximum size of
    #   the list is set by the `MaxResults` parameter. If there are more
    #   categories in the list than the page size, Amazon Transcribe returns
    #   the `NextPage` token. Include the token in the next request to the
    #   operation to return the next page of analytics categories.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   A list of objects containing information about analytics categories.
    #   @return [Array<Types::CategoryProperties>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListCallAnalyticsCategoriesResponse AWS API Documentation
    #
    class ListCallAnalyticsCategoriesResponse < Struct.new(
      :next_token,
      :categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListCallAnalyticsJobsRequest
    #   data as a hash:
    #
    #       {
    #         status: "QUEUED", # accepts QUEUED, IN_PROGRESS, FAILED, COMPLETED
    #         job_name_contains: "CallAnalyticsJobName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] status
    #   When specified, returns only call analytics jobs with the specified
    #   status. Jobs are ordered by creation date, with the most recent jobs
    #   returned first. If you don't specify a status, Amazon Transcribe
    #   returns all analytics jobs ordered by creation date.
    #   @return [String]
    #
    # @!attribute [rw] job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you receive a truncated result in the previous request of ,
    #   include `NextToken` to fetch the next set of jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of call analytics jobs to return in each page of
    #   results. If there are fewer results than the value you specify, only
    #   the actual results are returned. If you do not specify a value, the
    #   default of 5 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListCallAnalyticsJobsRequest AWS API Documentation
    #
    class ListCallAnalyticsJobsRequest < Struct.new(
      :status,
      :job_name_contains,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   When specified, returns only call analytics jobs with that status.
    #   Jobs are ordered by creation date, with the most recent jobs
    #   returned first. If you don't specify a status, Amazon Transcribe
    #   returns all transcription jobs ordered by creation date.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The operation returns a page of jobs at a time. The maximum size of
    #   the page is set by the `MaxResults` parameter. If there are more
    #   jobs in the list than the page size, Amazon Transcribe returns the
    #   `NextPage` token. Include the token in your next request to the
    #   operation to return next page of jobs.
    #   @return [String]
    #
    # @!attribute [rw] call_analytics_job_summaries
    #   A list of objects containing summary information for a transcription
    #   job.
    #   @return [Array<Types::CallAnalyticsJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListCallAnalyticsJobsResponse AWS API Documentation
    #
    class ListCallAnalyticsJobsResponse < Struct.new(
      :status,
      :next_token,
      :call_analytics_job_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListLanguageModelsRequest
    #   data as a hash:
    #
    #       {
    #         status_equals: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, COMPLETED
    #         name_contains: "ModelName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] status_equals
    #   When specified, returns only custom language models with the
    #   specified status. Language models are ordered by creation date, with
    #   the newest models first. If you don't specify a status, Amazon
    #   Transcribe returns all custom language models ordered by date.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   When specified, the custom language model names returned contain the
    #   substring you've specified.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When included, fetches the next set of jobs if the result of the
    #   previous request was truncated.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of language models to return in each page of
    #   results. If there are fewer results than the value you specify, only
    #   the actual results are returned. If you do not specify a value, the
    #   default of 5 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListLanguageModelsRequest AWS API Documentation
    #
    class ListLanguageModelsRequest < Struct.new(
      :status_equals,
      :name_contains,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The operation returns a page of jobs at a time. The maximum size of
    #   the list is set by the MaxResults parameter. If there are more
    #   language models in the list than the page size, Amazon Transcribe
    #   returns the `NextPage` token. Include the token in the next request
    #   to the operation to return the next page of language models.
    #   @return [String]
    #
    # @!attribute [rw] models
    #   A list of objects containing information about custom language
    #   models.
    #   @return [Array<Types::LanguageModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListLanguageModelsResponse AWS API Documentation
    #
    class ListLanguageModelsResponse < Struct.new(
      :next_token,
      :models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMedicalTranscriptionJobsRequest
    #   data as a hash:
    #
    #       {
    #         status: "QUEUED", # accepts QUEUED, IN_PROGRESS, FAILED, COMPLETED
    #         job_name_contains: "TranscriptionJobName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] status
    #   When specified, returns only medical transcription jobs with the
    #   specified status. Jobs are ordered by creation date, with the newest
    #   jobs returned first. If you don't specify a status, Amazon
    #   Transcribe Medical returns all transcription jobs ordered by
    #   creation date.
    #   @return [String]
    #
    # @!attribute [rw] job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you a receive a truncated result in the previous request of
    #   `ListMedicalTranscriptionJobs`, include `NextToken` to fetch the
    #   next set of jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of medical transcription jobs to return in each
    #   page of results. If there are fewer results than the value you
    #   specify, only the actual results are returned. If you do not specify
    #   a value, the default of 5 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListMedicalTranscriptionJobsRequest AWS API Documentation
    #
    class ListMedicalTranscriptionJobsRequest < Struct.new(
      :status,
      :job_name_contains,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The requested status of the medical transcription jobs returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `ListMedicalTranscriptionJobs` operation returns a page of jobs
    #   at a time. The maximum size of the page is set by the `MaxResults`
    #   parameter. If the number of jobs exceeds what can fit on a page,
    #   Amazon Transcribe Medical returns the `NextPage` token. Include the
    #   token in the next request to the `ListMedicalTranscriptionJobs`
    #   operation to return in the next page of jobs.
    #   @return [String]
    #
    # @!attribute [rw] medical_transcription_job_summaries
    #   A list of objects containing summary information for a transcription
    #   job.
    #   @return [Array<Types::MedicalTranscriptionJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListMedicalTranscriptionJobsResponse AWS API Documentation
    #
    class ListMedicalTranscriptionJobsResponse < Struct.new(
      :status,
      :next_token,
      :medical_transcription_job_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMedicalVocabulariesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         state_equals: "PENDING", # accepts PENDING, READY, FAILED
    #         name_contains: "VocabularyName",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of your previous request to `ListMedicalVocabularies`
    #   was truncated, include the `NextToken` to fetch the next set of
    #   vocabularies.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of vocabularies to return in each page of
    #   results. If there are fewer results than the value you specify, only
    #   the actual results are returned. If you do not specify a value, the
    #   default of 5 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] state_equals
    #   When specified, returns only vocabularies with the `VocabularyState`
    #   equal to the specified vocabulary state. Use this field to see which
    #   vocabularies are ready for your medical transcription jobs.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   Returns vocabularies whose names contain the specified string. The
    #   search is not case sensitive. `ListMedicalVocabularies` returns both
    #   "`vocabularyname`" and "`VocabularyName`".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListMedicalVocabulariesRequest AWS API Documentation
    #
    class ListMedicalVocabulariesRequest < Struct.new(
      :next_token,
      :max_results,
      :state_equals,
      :name_contains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The requested vocabulary state.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `ListMedicalVocabularies` operation returns a page of
    #   vocabularies at a time. You set the maximum number of vocabularies
    #   to return on a page with the `MaxResults` parameter. If there are
    #   more jobs in the list will fit on a page, Amazon Transcribe Medical
    #   returns the `NextPage` token. To return the next page of
    #   vocabularies, include the token in the next request to the
    #   `ListMedicalVocabularies` operation .
    #   @return [String]
    #
    # @!attribute [rw] vocabularies
    #   A list of objects that describe the vocabularies that match your
    #   search criteria.
    #   @return [Array<Types::VocabularyInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListMedicalVocabulariesResponse AWS API Documentation
    #
    class ListMedicalVocabulariesResponse < Struct.new(
      :status,
      :next_token,
      :vocabularies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TranscribeArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   Lists all tags associated with a given Amazon Resource Name (ARN).
    #   ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`
    #   (for example,
    #   `arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name`).
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   Lists all tags associated with the given Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Lists all tags associated with the given transcription job,
    #   vocabulary, or resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTranscriptionJobsRequest
    #   data as a hash:
    #
    #       {
    #         status: "QUEUED", # accepts QUEUED, IN_PROGRESS, FAILED, COMPLETED
    #         job_name_contains: "TranscriptionJobName",
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] status
    #   When specified, returns only transcription jobs with the specified
    #   status. Jobs are ordered by creation date, with the newest jobs
    #   returned first. If you don’t specify a status, Amazon Transcribe
    #   returns all transcription jobs ordered by creation date.
    #   @return [String]
    #
    # @!attribute [rw] job_name_contains
    #   When specified, the jobs returned in the list are limited to jobs
    #   whose name contains the specified string.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request to `ListTranscriptionJobs` is
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in each page of results. If
    #   there are fewer results than the value you specify, only the actual
    #   results are returned. If you do not specify a value, the default of
    #   5 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobsRequest AWS API Documentation
    #
    class ListTranscriptionJobsRequest < Struct.new(
      :status,
      :job_name_contains,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The requested status of the jobs returned.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `ListTranscriptionJobs` operation returns a page of jobs at a
    #   time. The maximum size of the page is set by the `MaxResults`
    #   parameter. If there are more jobs in the list than the page size,
    #   Amazon Transcribe returns the `NextPage` token. Include the token in
    #   the next request to the `ListTranscriptionJobs` operation to return
    #   in the next page of jobs.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_summaries
    #   A list of objects containing summary information for a transcription
    #   job.
    #   @return [Array<Types::TranscriptionJobSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobsResponse AWS API Documentation
    #
    class ListTranscriptionJobsResponse < Struct.new(
      :status,
      :next_token,
      :transcription_job_summaries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVocabulariesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         state_equals: "PENDING", # accepts PENDING, READY, FAILED
    #         name_contains: "VocabularyName",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request to `ListVocabularies` was
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of vocabularies to return in each page of
    #   results. If there are fewer results than the value you specify, only
    #   the actual results are returned. If you do not specify a value, the
    #   default of 5 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] state_equals
    #   When specified, only returns vocabularies with the `VocabularyState`
    #   field equal to the specified state.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   When specified, the vocabularies returned in the list are limited to
    #   vocabularies whose name contains the specified string. The search is
    #   not case sensitive, `ListVocabularies` returns both
    #   "vocabularyname" and "VocabularyName" in the response list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabulariesRequest AWS API Documentation
    #
    class ListVocabulariesRequest < Struct.new(
      :next_token,
      :max_results,
      :state_equals,
      :name_contains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The requested vocabulary state.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `ListVocabularies` operation returns a page of vocabularies at a
    #   time. The maximum size of the page is set in the `MaxResults`
    #   parameter. If there are more jobs in the list than will fit on the
    #   page, Amazon Transcribe returns the `NextPage` token. To return in
    #   the next page of jobs, include the token in the next request to the
    #   `ListVocabularies` operation.
    #   @return [String]
    #
    # @!attribute [rw] vocabularies
    #   A list of objects that describe the vocabularies that match the
    #   search criteria in the request.
    #   @return [Array<Types::VocabularyInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabulariesResponse AWS API Documentation
    #
    class ListVocabulariesResponse < Struct.new(
      :status,
      :next_token,
      :vocabularies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVocabularyFiltersRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #         name_contains: "VocabularyFilterName",
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the previous request to `ListVocabularyFilters` was
    #   truncated, include the `NextToken` to fetch the next set of
    #   collections.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of filters to return in each page of results. If
    #   there are fewer results than the value you specify, only the actual
    #   results are returned. If you do not specify a value, the default of
    #   5 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Filters the response so that it only contains vocabulary filters
    #   whose name contains the specified string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularyFiltersRequest AWS API Documentation
    #
    class ListVocabularyFiltersRequest < Struct.new(
      :next_token,
      :max_results,
      :name_contains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The `ListVocabularyFilters` operation returns a page of collections
    #   at a time. The maximum size of the page is set by the `MaxResults`
    #   parameter. If there are more jobs in the list than the page size,
    #   Amazon Transcribe returns the `NextPage` token. Include the token in
    #   the next request to the `ListVocabularyFilters` operation to return
    #   in the next page of jobs.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filters
    #   The list of vocabulary filters. It contains at most `MaxResults`
    #   number of filters. If there are more filters, call the
    #   `ListVocabularyFilters` operation again with the `NextToken`
    #   parameter in the request set to the value of the `NextToken` field
    #   in the response.
    #   @return [Array<Types::VocabularyFilterInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListVocabularyFiltersResponse AWS API Documentation
    #
    class ListVocabularyFiltersResponse < Struct.new(
      :next_token,
      :vocabulary_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the input media file in a transcription request.
    #
    # @note When making an API call, you may pass Media
    #   data as a hash:
    #
    #       {
    #         media_file_uri: "Uri",
    #         redacted_media_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] media_file_uri
    #   The S3 object location of the input media file. The URI must be in
    #   the same region as the API endpoint that you are calling. The
    #   general form is:
    #
    #   ` s3://<AWSDOC-EXAMPLE-BUCKET>/<keyprefix>/<objectkey>`
    #
    #   For example:
    #
    #   `s3://AWSDOC-EXAMPLE-BUCKET/example.mp4`
    #
    #   `s3://AWSDOC-EXAMPLE-BUCKET/mediadocs/example.mp4`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   @return [String]
    #
    # @!attribute [rw] redacted_media_file_uri
    #   The S3 object location for your redacted output media file. This is
    #   only supported for call analytics jobs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Media AWS API Documentation
    #
    class Media < Struct.new(
      :media_file_uri,
      :redacted_media_file_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the location of a medical transcript.
    #
    # @!attribute [rw] transcript_file_uri
    #   The S3 object location of the medical transcript.
    #
    #   Use this URI to access the medical transcript. This URI points to
    #   the S3 bucket you created to store the medical transcript.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/MedicalTranscript AWS API Documentation
    #
    class MedicalTranscript < Struct.new(
      :transcript_file_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data structure that contains the information for a medical
    # transcription job.
    #
    # @!attribute [rw] medical_transcription_job_name
    #   The name for a given medical transcription job.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   The completion status of a medical transcription job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the language spoken in the source audio file.
    #   US English (en-US) is the only supported language for medical
    #   transcriptions. Any other value you enter for language code results
    #   in a `BadRequestException` error.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz, of the source audio containing medical
    #   information.
    #
    #   If you don't specify the sample rate, Amazon Transcribe Medical
    #   determines it for you. If you choose to specify the sample rate, it
    #   must match the rate detected by Amazon Transcribe Medical.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The format of the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the input media file in a transcription request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] transcript
    #   An object that contains the `MedicalTranscript`. The
    #   `MedicalTranscript` contains the `TranscriptFileUri`.
    #   @return [Types::MedicalTranscript]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the job started processing.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   A timestamp that shows when the job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the `TranscriptionJobStatus` field is `FAILED`, this field
    #   contains information about why the job failed.
    #
    #   The `FailureReason` field contains one of the following values:
    #
    #   * `Unsupported media format`- The media format specified in the
    #     `MediaFormat` field of the request isn't valid. See the
    #     description of the `MediaFormat` field for a list of valid values.
    #
    #   * `The media format provided does not match the detected media
    #     format`- The media format of the audio file doesn't match the
    #     format specified in the `MediaFormat` field in the request. Check
    #     the media format of your media file and make sure the two values
    #     match.
    #
    #   * `Invalid sample rate for audio file`- The sample rate specified in
    #     the `MediaSampleRateHertz` of the request isn't valid. The sample
    #     rate must be between 8,000 and 48,000 Hertz.
    #
    #   * `The sample rate provided does not match the detected sample
    #     rate`- The sample rate in the audio file doesn't match the sample
    #     rate specified in the `MediaSampleRateHertz` field in the request.
    #     Check the sample rate of your media file and make sure that the
    #     two values match.
    #
    #   * `Invalid file size: file size too large`- The size of your audio
    #     file is larger than what Amazon Transcribe Medical can process.
    #     For more information, see [Guidelines and Quotas][1] in the
    #     *Amazon Transcribe Medical Guide*.
    #
    #   * `Invalid number of channels: number of channels too large`- Your
    #     audio contains more channels than Amazon Transcribe Medical is
    #     configured to process. To request additional channels, see [Amazon
    #     Transcribe Medical Endpoints and Quotas][2] in the *Amazon Web
    #     Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/transcribe-medical.html
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Object that contains object.
    #   @return [Types::MedicalTranscriptionSetting]
    #
    # @!attribute [rw] content_identification_type
    #   Shows the type of content that you've configured Amazon Transcribe
    #   Medical to identify in a transcription job. If the value is `PHI`,
    #   you've configured the job to identify personal health information
    #   (PHI) in the transcription output.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   The medical specialty of any clinicians providing a dictation or
    #   having a conversation. Refer to [Transcribing a medical
    #   conversation][1]for a list of supported specialties.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-medical-conversation.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of speech in the transcription job. `CONVERSATION` is
    #   generally used for patient-physician dialogues. `DICTATION` is the
    #   setting for physicians speaking their notes after seeing a patient.
    #   For more information, see [What is Amazon Transcribe Medical?][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/what-is-transcribe-med.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A key:value pair assigned to a given medical transcription job.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/MedicalTranscriptionJob AWS API Documentation
    #
    class MedicalTranscriptionJob < Struct.new(
      :medical_transcription_job_name,
      :transcription_job_status,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :transcript,
      :start_time,
      :creation_time,
      :completion_time,
      :failure_reason,
      :settings,
      :content_identification_type,
      :specialty,
      :type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides summary information about a transcription job.
    #
    # @!attribute [rw] medical_transcription_job_name
    #   The name of a medical transcription job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the medical transcription job was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the job began processing.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   A timestamp that shows when the job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language of the transcript in the source audio file.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   The status of the medical transcription job.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the `TranscriptionJobStatus` field is `FAILED`, a description of
    #   the error.
    #   @return [String]
    #
    # @!attribute [rw] output_location_type
    #   Indicates the location of the transcription job's output. This
    #   field must be the path of an S3 bucket; if you don't already have
    #   an S3 bucket, one is created based on the path you add.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   The medical specialty of the transcription job. Refer to
    #   [Transcribing a medical conversation][1]for a list of supported
    #   specialties.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/transcribe-medical-conversation.html
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Shows the type of information you've configured Amazon Transcribe
    #   Medical to identify in a transcription job. If the value is `PHI`,
    #   you've configured the transcription job to identify personal health
    #   information (PHI).
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The speech of the clinician in the input audio.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/MedicalTranscriptionJobSummary AWS API Documentation
    #
    class MedicalTranscriptionJobSummary < Struct.new(
      :medical_transcription_job_name,
      :creation_time,
      :start_time,
      :completion_time,
      :language_code,
      :transcription_job_status,
      :failure_reason,
      :output_location_type,
      :specialty,
      :content_identification_type,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Optional settings for the StartMedicalTranscriptionJob operation.
    #
    # @note When making an API call, you may pass MedicalTranscriptionSetting
    #   data as a hash:
    #
    #       {
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         show_alternatives: false,
    #         max_alternatives: 1,
    #         vocabulary_name: "VocabularyName",
    #       }
    #
    # @!attribute [rw] show_speaker_labels
    #   Determines whether the transcription job uses speaker recognition to
    #   identify different speakers in the input audio. Speaker recognition
    #   labels individual speakers in the audio file. If you set the
    #   `ShowSpeakerLabels` field to true, you must also set the maximum
    #   number of speaker labels in the `MaxSpeakerLabels` field.
    #
    #   You can't set both `ShowSpeakerLabels` and `ChannelIdentification`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_speaker_labels
    #   The maximum number of speakers to identify in the input audio. If
    #   there are more speakers in the audio than this number, multiple
    #   speakers are identified as a single speaker. If you specify the
    #   `MaxSpeakerLabels` field, you must set the `ShowSpeakerLabels` field
    #   to true.
    #   @return [Integer]
    #
    # @!attribute [rw] channel_identification
    #   Instructs Amazon Transcribe Medical to process each audio channel
    #   separately and then merge the transcription output of each channel
    #   into a single transcription.
    #
    #   Amazon Transcribe Medical also produces a transcription of each item
    #   detected on an audio channel, including the start time and end time
    #   of the item and alternative transcriptions of item. The alternative
    #   transcriptions also come with confidence scores provided by Amazon
    #   Transcribe Medical.
    #
    #   You can't set both `ShowSpeakerLabels` and `ChannelIdentification`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #   @return [Boolean]
    #
    # @!attribute [rw] show_alternatives
    #   Determines whether alternative transcripts are generated along with
    #   the transcript that has the highest confidence. If you set
    #   `ShowAlternatives` field to true, you must also set the maximum
    #   number of alternatives to return in the `MaxAlternatives` field.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_alternatives
    #   The maximum number of alternatives that you tell the service to
    #   return. If you specify the `MaxAlternatives` field, you must set the
    #   `ShowAlternatives` field to true.
    #   @return [Integer]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to use when processing a medical
    #   transcription job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/MedicalTranscriptionSetting AWS API Documentation
    #
    class MedicalTranscriptionSetting < Struct.new(
      :show_speaker_labels,
      :max_speaker_labels,
      :channel_identification,
      :show_alternatives,
      :max_alternatives,
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object used to call your custom language model to your
    # transcription job.
    #
    # @note When making an API call, you may pass ModelSettings
    #   data as a hash:
    #
    #       {
    #         language_model_name: "ModelName",
    #       }
    #
    # @!attribute [rw] language_model_name
    #   The name of your custom language model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ModelSettings AWS API Documentation
    #
    class ModelSettings < Struct.new(
      :language_model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that enables you to configure your category to be applied to
    # call analytics jobs where either the customer or agent was
    # interrupted.
    #
    # @note When making an API call, you may pass NonTalkTimeFilter
    #   data as a hash:
    #
    #       {
    #         threshold: 1,
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         negate: false,
    #       }
    #
    # @!attribute [rw] threshold
    #   The duration of the period when neither the customer nor agent was
    #   talking.
    #   @return [Integer]
    #
    # @!attribute [rw] absolute_time_range
    #   An object you can use to specify a time range (in milliseconds) for
    #   when no one is talking. For example, you could specify a time period
    #   between the 30,000 millisecond mark and the 45,000 millisecond mark.
    #   You could also specify the time period as the first 15,000
    #   milliseconds or the last 15,000 milliseconds.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   An object that allows percentages to specify the proportion of the
    #   call where there was silence. For example, you can specify the first
    #   half of the call. You can also specify the period of time between
    #   halfway through to three-quarters of the way through the call.
    #   Because the length of conversation can vary between calls, you can
    #   apply relative time ranges across all calls.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] negate
    #   Set to `TRUE` to look for a time period when people were talking.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/NonTalkTimeFilter AWS API Documentation
    #
    class NonTalkTimeFilter < Struct.new(
      :threshold,
      :absolute_time_range,
      :relative_time_range,
      :negate)
      SENSITIVE = []
      include Aws::Structure
    end

    # We can't find the requested resource. Check the name and try your
    # request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that allows percentages to specify the proportion of the
    # call where you would like to apply a filter. For example, you can
    # specify the first half of the call. You can also specify the period of
    # time between halfway through to three-quarters of the way through the
    # call. Because the length of conversation can vary between calls, you
    # can apply relative time ranges across all calls.
    #
    # @note When making an API call, you may pass RelativeTimeRange
    #   data as a hash:
    #
    #       {
    #         start_percentage: 1,
    #         end_percentage: 1,
    #         first: 1,
    #         last: 1,
    #       }
    #
    # @!attribute [rw] start_percentage
    #   A value that indicates the percentage of the beginning of the time
    #   range. To set a relative time range, you must specify a start
    #   percentage and an end percentage. For example, if you specify the
    #   following values:
    #
    #   * StartPercentage - 10
    #
    #   * EndPercentage - 50
    #
    #   This looks at the time range starting from 10% of the way into the
    #   call to 50% of the way through the call. For a call that lasts
    #   100,000 milliseconds, this example range would apply from the 10,000
    #   millisecond mark to the 50,000 millisecond mark.
    #   @return [Integer]
    #
    # @!attribute [rw] end_percentage
    #   A value that indicates the percentage of the end of the time range.
    #   To set a relative time range, you must specify a start percentage
    #   and an end percentage. For example, if you specify the following
    #   values:
    #
    #   * StartPercentage - 10
    #
    #   * EndPercentage - 50
    #
    #   This looks at the time range starting from 10% of the way into the
    #   call to 50% of the way through the call. For a call that lasts
    #   100,000 milliseconds, this example range would apply from the 10,000
    #   millisecond mark to the 50,000 millisecond mark.
    #   @return [Integer]
    #
    # @!attribute [rw] first
    #   A range that takes the portion of the call up to the time in
    #   milliseconds set by the value that you've specified. For example,
    #   if you specify `120000`, the time range is set for the first 120,000
    #   milliseconds of the call.
    #   @return [Integer]
    #
    # @!attribute [rw] last
    #   A range that takes the portion of the call from the time in
    #   milliseconds set by the value that you've specified to the end of
    #   the call. For example, if you specify `120000`, the time range is
    #   set for the last 120,000 milliseconds of the call.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/RelativeTimeRange AWS API Documentation
    #
    class RelativeTimeRange < Struct.new(
      :start_percentage,
      :end_percentage,
      :first,
      :last)
      SENSITIVE = []
      include Aws::Structure
    end

    # A condition in the call between the customer and the agent that you
    # want to filter for.
    #
    # @note Rule is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Rule is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Rule corresponding to the set member.
    #
    # @!attribute [rw] non_talk_time_filter
    #   A condition for a time period when neither the customer nor the
    #   agent was talking.
    #   @return [Types::NonTalkTimeFilter]
    #
    # @!attribute [rw] interruption_filter
    #   A condition for a time period when either the customer or agent was
    #   interrupting the other person.
    #   @return [Types::InterruptionFilter]
    #
    # @!attribute [rw] transcript_filter
    #   A condition that catches particular words or phrases based on a
    #   exact match. For example, if you set the phrase "I want to speak to
    #   the manager", only that exact phrase will be returned.
    #   @return [Types::TranscriptFilter]
    #
    # @!attribute [rw] sentiment_filter
    #   A condition that is applied to a particular customer sentiment.
    #   @return [Types::SentimentFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :non_talk_time_filter,
      :interruption_filter,
      :transcript_filter,
      :sentiment_filter,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class NonTalkTimeFilter < Rule; end
      class InterruptionFilter < Rule; end
      class TranscriptFilter < Rule; end
      class SentimentFilter < Rule; end
      class Unknown < Rule; end
    end

    # An object that enables you to specify a particular customer or agent
    # sentiment. If at least 50 percent of the conversation turns (the
    # back-and-forth between two speakers) in a specified time period match
    # the specified sentiment, Amazon Transcribe will consider the sentiment
    # a match.
    #
    # @note When making an API call, you may pass SentimentFilter
    #   data as a hash:
    #
    #       {
    #         sentiments: ["POSITIVE"], # required, accepts POSITIVE, NEGATIVE, NEUTRAL, MIXED
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #         negate: false,
    #       }
    #
    # @!attribute [rw] sentiments
    #   An array that enables you to specify sentiments for the customer or
    #   agent. You can specify one or more values.
    #   @return [Array<String>]
    #
    # @!attribute [rw] absolute_time_range
    #   The time range, measured in seconds, of the sentiment.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   The time range, set in percentages, that correspond to proportion of
    #   the call.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] participant_role
    #   A value that determines whether the sentiment belongs to the
    #   customer or the agent.
    #   @return [String]
    #
    # @!attribute [rw] negate
    #   Set to `TRUE` to look for sentiments that weren't specified in the
    #   request.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/SentimentFilter AWS API Documentation
    #
    class SentimentFilter < Struct.new(
      :sentiments,
      :absolute_time_range,
      :relative_time_range,
      :participant_role,
      :negate)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides optional settings for the `StartTranscriptionJob` operation.
    #
    # @note When making an API call, you may pass Settings
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName",
    #         show_speaker_labels: false,
    #         max_speaker_labels: 1,
    #         channel_identification: false,
    #         show_alternatives: false,
    #         max_alternatives: 1,
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of a vocabulary to use when processing the transcription
    #   job.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_labels
    #   Determines whether the transcription job uses speaker recognition to
    #   identify different speakers in the input audio. Speaker recognition
    #   labels individual speakers in the audio file. If you set the
    #   `ShowSpeakerLabels` field to true, you must also set the maximum
    #   number of speaker labels `MaxSpeakerLabels` field.
    #
    #   You can't set both `ShowSpeakerLabels` and `ChannelIdentification`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_speaker_labels
    #   The maximum number of speakers to identify in the input audio. If
    #   there are more speakers in the audio than this number, multiple
    #   speakers are identified as a single speaker. If you specify the
    #   `MaxSpeakerLabels` field, you must set the `ShowSpeakerLabels` field
    #   to true.
    #   @return [Integer]
    #
    # @!attribute [rw] channel_identification
    #   Instructs Amazon Transcribe to process each audio channel separately
    #   and then merge the transcription output of each channel into a
    #   single transcription.
    #
    #   Amazon Transcribe also produces a transcription of each item
    #   detected on an audio channel, including the start time and end time
    #   of the item and alternative transcriptions of the item including the
    #   confidence that Amazon Transcribe has in the transcription.
    #
    #   You can't set both `ShowSpeakerLabels` and `ChannelIdentification`
    #   in the same request. If you set both, your request returns a
    #   `BadRequestException`.
    #   @return [Boolean]
    #
    # @!attribute [rw] show_alternatives
    #   Determines whether the transcription contains alternative
    #   transcriptions. If you set the `ShowAlternatives` field to true, you
    #   must also set the maximum number of alternatives to return in the
    #   `MaxAlternatives` field.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_alternatives
    #   The number of alternative transcriptions that the service should
    #   return. If you specify the `MaxAlternatives` field, you must set the
    #   `ShowAlternatives` field to true.
    #   @return [Integer]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter to use when transcribing the
    #   audio. The filter that you specify must have the same language code
    #   as the transcription job.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Set to `mask` to remove filtered text from the transcript and
    #   replace it with three asterisks ("***") as placeholder text.
    #   Set to `remove` to remove filtered text from the transcript without
    #   using placeholder text. Set to `tag` to mark the word in the
    #   transcription output that matches the vocabulary filter. When you
    #   set the filter method to `tag`, the words matching your vocabulary
    #   filter are not masked or removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Settings AWS API Documentation
    #
    class Settings < Struct.new(
      :vocabulary_name,
      :show_speaker_labels,
      :max_speaker_labels,
      :channel_identification,
      :show_alternatives,
      :max_alternatives,
      :vocabulary_filter_name,
      :vocabulary_filter_method)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartCallAnalyticsJobRequest
    #   data as a hash:
    #
    #       {
    #         call_analytics_job_name: "CallAnalyticsJobName", # required
    #         media: { # required
    #           media_file_uri: "Uri",
    #           redacted_media_file_uri: "Uri",
    #         },
    #         output_location: "Uri",
    #         output_encryption_kms_key_id: "KMSKeyId",
    #         data_access_role_arn: "DataAccessRoleArn", # required
    #         settings: {
    #           vocabulary_name: "VocabularyName",
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #           language_model_name: "ModelName",
    #           content_redaction: {
    #             redaction_type: "PII", # required, accepts PII
    #             redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #             pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
    #           },
    #           language_options: ["af-ZA"], # accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #           language_id_settings: {
    #             "af-ZA" => {
    #               vocabulary_name: "VocabularyName",
    #               vocabulary_filter_name: "VocabularyFilterName",
    #               language_model_name: "ModelName",
    #             },
    #           },
    #         },
    #         channel_definitions: [
    #           {
    #             channel_id: 1,
    #             participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] call_analytics_job_name
    #   The name of the call analytics job. You can't use the string "."
    #   or ".." by themselves as the job name. The name must also be
    #   unique within an Amazon Web Services account. If you try to create a
    #   call analytics job with the same name as a previous call analytics
    #   job, you get a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the input media file in a transcription request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] output_location
    #   The Amazon S3 location where the output of the call analytics job is
    #   stored. You can provide the following location types to store the
    #   output of call analytics job:
    #
    #   * s3://DOC-EXAMPLE-BUCKET1
    #
    #     If you specify a bucket, Amazon Transcribe saves the output of the
    #     analytics job as a JSON file at the root level of the bucket.
    #
    #   * s3://DOC-EXAMPLE-BUCKET1/folder/
    #
    #     f you specify a path, Amazon Transcribe saves the output of the
    #     analytics job as
    #     s3://DOC-EXAMPLE-BUCKET1/folder/your-transcription-job-name.json.
    #
    #     If you specify a folder, you must provide a trailing slash.
    #
    #   * s3://DOC-EXAMPLE-BUCKET1/folder/filename.json.
    #
    #     If you provide a path that has the filename specified, Amazon
    #     Transcribe saves the output of the analytics job as
    #     s3://DOC-EXAMPLEBUCKET1/folder/filename.json.
    #
    #   You can specify an Amazon Web Services Key Management Service (KMS)
    #   key to encrypt the output of our analytics job using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS
    #   key, Amazon Transcribe uses the default Amazon S3 key for
    #   server-side encryption of the analytics job output that is placed in
    #   your S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Key
    #   Management Service key used to encrypt the output of the call
    #   analytics job. The user calling the operation must have permission
    #   to use the specified KMS key.
    #
    #   You use either of the following to identify an Amazon Web Services
    #   KMS key in the current account:
    #
    #   * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * KMS Key Alias: "alias/ExampleAlias"
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account or another account:
    #
    #   * Amazon Resource Name (ARN) of a KMS key in the current account or
    #     another account: "arn:aws:kms:region:account
    #     ID:key/1234abcd-12ab-34cd-56ef1234567890ab"
    #
    #   * ARN of a KMS Key Alias:
    #     "arn:aws:kms:region:accountID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the call
    #   analytics job is encrypted with the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also
    #   specify an output location in the `OutputLocation` parameter.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of a role that has access to the S3
    #   bucket that contains your input files. Amazon Transcribe assumes
    #   this role to read queued audio files. If you have specified an
    #   output S3 bucket for your transcription results, this role should
    #   have access to the output bucket as well.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   A `Settings` object that provides optional settings for a call
    #   analytics job.
    #   @return [Types::CallAnalyticsJobSettings]
    #
    # @!attribute [rw] channel_definitions
    #   When you start a call analytics job, you must pass an array that
    #   maps the agent and the customer to specific audio channels. The
    #   values you can assign to a channel are 0 and 1. The agent and the
    #   customer must each have their own channel. You can't assign more
    #   than one channel to an agent or customer.
    #   @return [Array<Types::ChannelDefinition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartCallAnalyticsJobRequest AWS API Documentation
    #
    class StartCallAnalyticsJobRequest < Struct.new(
      :call_analytics_job_name,
      :media,
      :output_location,
      :output_encryption_kms_key_id,
      :data_access_role_arn,
      :settings,
      :channel_definitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] call_analytics_job
    #   An object containing the details of the asynchronous call analytics
    #   job.
    #   @return [Types::CallAnalyticsJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartCallAnalyticsJobResponse AWS API Documentation
    #
    class StartCallAnalyticsJobResponse < Struct.new(
      :call_analytics_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartMedicalTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         medical_transcription_job_name: "TranscriptionJobName", # required
    #         language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         media_sample_rate_hertz: 1,
    #         media_format: "mp3", # accepts mp3, mp4, wav, flac, ogg, amr, webm
    #         media: { # required
    #           media_file_uri: "Uri",
    #           redacted_media_file_uri: "Uri",
    #         },
    #         output_bucket_name: "OutputBucketName", # required
    #         output_key: "OutputKey",
    #         output_encryption_kms_key_id: "KMSKeyId",
    #         kms_encryption_context: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         settings: {
    #           show_speaker_labels: false,
    #           max_speaker_labels: 1,
    #           channel_identification: false,
    #           show_alternatives: false,
    #           max_alternatives: 1,
    #           vocabulary_name: "VocabularyName",
    #         },
    #         content_identification_type: "PHI", # accepts PHI
    #         specialty: "PRIMARYCARE", # required, accepts PRIMARYCARE
    #         type: "CONVERSATION", # required, accepts CONVERSATION, DICTATION
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] medical_transcription_job_name
    #   The name of the medical transcription job. You can't use the
    #   strings "`.`" or "`..`" by themselves as the job name. The name
    #   must also be unique within an Amazon Web Services account. If you
    #   try to create a medical transcription job with the same name as a
    #   previous medical transcription job, you get a `ConflictException`
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the language spoken in the input media file.
    #   US English (en-US) is the valid value for medical transcription
    #   jobs. Any other value you enter for language code results in a
    #   `BadRequestException` error.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio track in the input media
    #   file.
    #
    #   If you do not specify the media sample rate, Amazon Transcribe
    #   Medical determines the sample rate. If you specify the sample rate,
    #   it must match the rate detected by Amazon Transcribe Medical. In
    #   most cases, you should leave the `MediaSampleRateHertz` field blank
    #   and let Amazon Transcribe Medical determine the sample rate.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The audio format of the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the input media file in a transcription request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] output_bucket_name
    #   The Amazon S3 location where the transcription is stored.
    #
    #   You must set `OutputBucketName` for Amazon Transcribe Medical to
    #   store the transcription results. Your transcript appears in the S3
    #   location you specify. When you call the GetMedicalTranscriptionJob,
    #   the operation returns this location in the `TranscriptFileUri`
    #   field. The S3 bucket must have permissions that allow Amazon
    #   Transcribe Medical to put files in the bucket. For more information,
    #   see [Permissions Required for IAM User Roles][1].
    #
    #   You can specify an Amazon Web Services Key Management Service (KMS)
    #   key to encrypt the output of your transcription using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS
    #   key, Amazon Transcribe Medical uses the default Amazon S3 key for
    #   server-side encryption of transcripts that are placed in your S3
    #   bucket.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #   @return [String]
    #
    # @!attribute [rw] output_key
    #   You can specify a location in an Amazon S3 bucket to store the
    #   output of your medical transcription job.
    #
    #   If you don't specify an output key, Amazon Transcribe Medical
    #   stores the output of your transcription job in the Amazon S3 bucket
    #   you specified. By default, the object key is
    #   "your-transcription-job-name.json".
    #
    #   You can use output keys to specify the Amazon S3 prefix and file
    #   name of the transcription output. For example, specifying the Amazon
    #   S3 prefix, "folder1/folder2/", as an output key would lead to the
    #   output being stored as
    #   "folder1/folder2/your-transcription-job-name.json". If you specify
    #   "my-other-job-name.json" as the output key, the object key is
    #   changed to "my-other-job-name.json". You can use an output key to
    #   change both the prefix and the file name, for example
    #   "folder/my-other-job-name.json".
    #
    #   If you specify an output key, you must also specify an S3 bucket in
    #   the `OutputBucketName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Key
    #   Management Service (KMS) key used to encrypt the output of the
    #   transcription job. The user calling the StartMedicalTranscriptionJob
    #   operation must have permission to use the specified KMS key.
    #
    #   You use either of the following to identify a KMS key in the current
    #   account:
    #
    #   * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * KMS Key Alias: "alias/ExampleAlias"
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account or another account:
    #
    #   * Amazon Resource Name (ARN) of a KMS key in the current account or
    #     another account:
    #     "arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * ARN of a KMS Key Alias: "arn:aws:kms:region:account
    #     ID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the medical
    #   transcription job is encrypted with the default Amazon S3 key
    #   (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also
    #   specify an output location in the `OutputBucketName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your
    #   data.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] settings
    #   Optional settings for the medical transcription job.
    #   @return [Types::MedicalTranscriptionSetting]
    #
    # @!attribute [rw] content_identification_type
    #   You can configure Amazon Transcribe Medical to label content in the
    #   transcription output. If you specify `PHI`, Amazon Transcribe
    #   Medical labels the personal health information (PHI) that it
    #   identifies in the transcription output.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   The medical specialty of any clinician speaking in the input media.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of speech in the input audio. `CONVERSATION` refers to
    #   conversations between two or more speakers, e.g., a conversations
    #   between doctors and patients. `DICTATION` refers to single-speaker
    #   dictated speech, such as clinical notes.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Add tags to an Amazon Transcribe medical transcription job.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartMedicalTranscriptionJobRequest AWS API Documentation
    #
    class StartMedicalTranscriptionJobRequest < Struct.new(
      :medical_transcription_job_name,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :output_bucket_name,
      :output_key,
      :output_encryption_kms_key_id,
      :kms_encryption_context,
      :settings,
      :content_identification_type,
      :specialty,
      :type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] medical_transcription_job
    #   A batch job submitted to transcribe medical speech to text.
    #   @return [Types::MedicalTranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartMedicalTranscriptionJobResponse AWS API Documentation
    #
    class StartMedicalTranscriptionJobResponse < Struct.new(
      :medical_transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         transcription_job_name: "TranscriptionJobName", # required
    #         language_code: "af-ZA", # accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         media_sample_rate_hertz: 1,
    #         media_format: "mp3", # accepts mp3, mp4, wav, flac, ogg, amr, webm
    #         media: { # required
    #           media_file_uri: "Uri",
    #           redacted_media_file_uri: "Uri",
    #         },
    #         output_bucket_name: "OutputBucketName",
    #         output_key: "OutputKey",
    #         output_encryption_kms_key_id: "KMSKeyId",
    #         kms_encryption_context: {
    #           "NonEmptyString" => "NonEmptyString",
    #         },
    #         settings: {
    #           vocabulary_name: "VocabularyName",
    #           show_speaker_labels: false,
    #           max_speaker_labels: 1,
    #           channel_identification: false,
    #           show_alternatives: false,
    #           max_alternatives: 1,
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove", # accepts remove, mask, tag
    #         },
    #         model_settings: {
    #           language_model_name: "ModelName",
    #         },
    #         job_execution_settings: {
    #           allow_deferred_execution: false,
    #           data_access_role_arn: "DataAccessRoleArn",
    #         },
    #         content_redaction: {
    #           redaction_type: "PII", # required, accepts PII
    #           redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #           pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, ALL
    #         },
    #         identify_language: false,
    #         language_options: ["af-ZA"], # accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         subtitles: {
    #           formats: ["vtt"], # accepts vtt, srt
    #         },
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #         language_id_settings: {
    #           "af-ZA" => {
    #             vocabulary_name: "VocabularyName",
    #             vocabulary_filter_name: "VocabularyFilterName",
    #             language_model_name: "ModelName",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the job. You can't use the strings "`.`" or "`..`"
    #   by themselves as the job name. The name must also be unique within
    #   an Amazon Web Services account. If you try to create a transcription
    #   job with the same name as a previous transcription job, you get a
    #   `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the language used in the input media file.
    #
    #   To transcribe speech in Modern Standard Arabic (ar-SA), your audio
    #   or video file must be encoded at a sample rate of 16,000 Hz or
    #   higher.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio track in the input media
    #   file.
    #
    #   If you do not specify the media sample rate, Amazon Transcribe
    #   determines the sample rate. If you specify the sample rate, it must
    #   match the sample rate detected by Amazon Transcribe. In most cases,
    #   you should leave the `MediaSampleRateHertz` field blank and let
    #   Amazon Transcribe determine the sample rate.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The format of the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   An object that describes the input media for a transcription job.
    #   @return [Types::Media]
    #
    # @!attribute [rw] output_bucket_name
    #   The location where the transcription is stored.
    #
    #   If you set the `OutputBucketName`, Amazon Transcribe puts the
    #   transcript in the specified S3 bucket. When you call the
    #   GetTranscriptionJob operation, the operation returns this location
    #   in the `TranscriptFileUri` field. If you enable content redaction,
    #   the redacted transcript appears in `RedactedTranscriptFileUri`. If
    #   you enable content redaction and choose to output an unredacted
    #   transcript, that transcript's location still appears in the
    #   `TranscriptFileUri`. The S3 bucket must have permissions that allow
    #   Amazon Transcribe to put files in the bucket. For more information,
    #   see [Permissions Required for IAM User Roles][1].
    #
    #   You can specify an Amazon Web Services Key Management Service (KMS)
    #   key to encrypt the output of your transcription using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS
    #   key, Amazon Transcribe uses the default Amazon S3 key for
    #   server-side encryption of transcripts that are placed in your S3
    #   bucket.
    #
    #   If you don't set the `OutputBucketName`, Amazon Transcribe
    #   generates a pre-signed URL, a shareable URL that provides secure
    #   access to your transcription, and returns it in the
    #   `TranscriptFileUri` field. Use this URL to download the
    #   transcription.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #   @return [String]
    #
    # @!attribute [rw] output_key
    #   You can specify a location in an Amazon S3 bucket to store the
    #   output of your transcription job.
    #
    #   If you don't specify an output key, Amazon Transcribe stores the
    #   output of your transcription job in the Amazon S3 bucket you
    #   specified. By default, the object key is
    #   "your-transcription-job-name.json".
    #
    #   You can use output keys to specify the Amazon S3 prefix and file
    #   name of the transcription output. For example, specifying the Amazon
    #   S3 prefix, "folder1/folder2/", as an output key would lead to the
    #   output being stored as
    #   "folder1/folder2/your-transcription-job-name.json". If you specify
    #   "my-other-job-name.json" as the output key, the object key is
    #   changed to "my-other-job-name.json". You can use an output key to
    #   change both the prefix and the file name, for example
    #   "folder/my-other-job-name.json".
    #
    #   If you specify an output key, you must also specify an S3 bucket in
    #   the `OutputBucketName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the Amazon Web Services Key
    #   Management Service (KMS) key used to encrypt the output of the
    #   transcription job. The user calling the `StartTranscriptionJob`
    #   operation must have permission to use the specified KMS key.
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account:
    #
    #   * KMS Key ID: "1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * KMS Key Alias: "alias/ExampleAlias"
    #
    #   You can use either of the following to identify a KMS key in the
    #   current account or another account:
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     "arn:aws:kms:region:account
    #     ID:key/1234abcd-12ab-34cd-56ef-1234567890ab"
    #
    #   * ARN of a KMS Key Alias:
    #     "arn:aws:kms:region:account-ID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the
    #   transcription job is encrypted with the default Amazon S3 key
    #   (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also
    #   specify an output location in the `OutputBucketName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your
    #   data.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] settings
    #   A `Settings` object that provides optional settings for a
    #   transcription job.
    #   @return [Types::Settings]
    #
    # @!attribute [rw] model_settings
    #   Choose the custom language model you use for your transcription job
    #   in this parameter.
    #   @return [Types::ModelSettings]
    #
    # @!attribute [rw] job_execution_settings
    #   Provides information about how a transcription job is executed. Use
    #   this field to indicate that the job can be queued for deferred
    #   execution if the concurrency limit is reached and there are no slots
    #   available to immediately run the job.
    #   @return [Types::JobExecutionSettings]
    #
    # @!attribute [rw] content_redaction
    #   An object that contains the request parameters for content
    #   redaction.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] identify_language
    #   Set this field to `true` to enable automatic language
    #   identification. Automatic language identification is disabled by
    #   default. You receive a `BadRequestException` error if you enter a
    #   value for a `LanguageCode`.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   An object containing a list of languages that might be present in
    #   your collection of audio files. Automatic language identification
    #   chooses a language that best matches the source audio from that
    #   list.
    #
    #   To transcribe speech in Modern Standard Arabic (ar-SA), your audio
    #   or video file must be encoded at a sample rate of 16,000 Hz or
    #   higher.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subtitles
    #   Add subtitles to your batch transcription job.
    #   @return [Types::Subtitles]
    #
    # @!attribute [rw] tags
    #   Add tags to an Amazon Transcribe transcription job.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] language_id_settings
    #   The language identification settings associated with your
    #   transcription job. These settings include `VocabularyName`,
    #   `VocabularyFilterName`, and `LanguageModelName`.
    #   @return [Hash<String,Types::LanguageIdSettings>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJobRequest AWS API Documentation
    #
    class StartTranscriptionJobRequest < Struct.new(
      :transcription_job_name,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :output_bucket_name,
      :output_key,
      :output_encryption_kms_key_id,
      :kms_encryption_context,
      :settings,
      :model_settings,
      :job_execution_settings,
      :content_redaction,
      :identify_language,
      :language_options,
      :subtitles,
      :tags,
      :language_id_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transcription_job
    #   An object containing details of the asynchronous transcription job.
    #   @return [Types::TranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJobResponse AWS API Documentation
    #
    class StartTranscriptionJobResponse < Struct.new(
      :transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Generate subtitles for your batch transcription job.
    #
    # @note When making an API call, you may pass Subtitles
    #   data as a hash:
    #
    #       {
    #         formats: ["vtt"], # accepts vtt, srt
    #       }
    #
    # @!attribute [rw] formats
    #   Specify the output format for your subtitle file.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Subtitles AWS API Documentation
    #
    class Subtitles < Struct.new(
      :formats)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specify the output format for your subtitle file.
    #
    # @!attribute [rw] formats
    #   Specify the output format for your subtitle file; if you select both
    #   SRT and VTT formats, two output files are generated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subtitle_file_uris
    #   Choose the output location for your subtitle file. This location
    #   must be an S3 bucket.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/SubtitlesOutput AWS API Documentation
    #
    class SubtitlesOutput < Struct.new(
      :formats,
      :subtitle_file_uris)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key:value pair that adds metadata to a resource used by Amazon
    # Transcribe. For example, a tag with the key:value pair
    # ‘Department’:’Sales’ might be added to a resource to indicate its use
    # by your organization's sales department.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   The first part of a key:value pair that forms a tag associated with
    #   a given resource. For example, in the tag ‘Department’:’Sales’, the
    #   key is 'Department'.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The second part of a key:value pair that forms a tag associated with
    #   a given resource. For example, in the tag ‘Department’:’Sales’, the
    #   value is 'Sales'.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TranscribeArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Transcribe resource you
    #   want to tag. ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`
    #   (for example,
    #   `arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name`).
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags you are assigning to a given Amazon Transcribe resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Identifies the location of a transcription.
    #
    # @!attribute [rw] transcript_file_uri
    #   The S3 object location of the transcript.
    #
    #   Use this URI to access the transcript. If you specified an S3 bucket
    #   in the `OutputBucketName` field when you created the job, this is
    #   the URI of that bucket. If you chose to store the transcript in
    #   Amazon Transcribe, this is a shareable URL that provides secure
    #   access to that location.
    #   @return [String]
    #
    # @!attribute [rw] redacted_transcript_file_uri
    #   The S3 object location of the redacted transcript.
    #
    #   Use this URI to access the redacted transcript. If you specified an
    #   S3 bucket in the `OutputBucketName` field when you created the job,
    #   this is the URI of that bucket. If you chose to store the transcript
    #   in Amazon Transcribe, this is a shareable URL that provides secure
    #   access to that location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Transcript AWS API Documentation
    #
    class Transcript < Struct.new(
      :transcript_file_uri,
      :redacted_transcript_file_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Matches the output of the transcription to either the specific phrases
    # that you specify, or the intent of the phrases that you specify.
    #
    # @note When making an API call, you may pass TranscriptFilter
    #   data as a hash:
    #
    #       {
    #         transcript_filter_type: "EXACT", # required, accepts EXACT
    #         absolute_time_range: {
    #           start_time: 1,
    #           end_time: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         relative_time_range: {
    #           start_percentage: 1,
    #           end_percentage: 1,
    #           first: 1,
    #           last: 1,
    #         },
    #         participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #         negate: false,
    #         targets: ["NonEmptyString"], # required
    #       }
    #
    # @!attribute [rw] transcript_filter_type
    #   Matches the phrase to the transcription output in a word for word
    #   fashion. For example, if you specify the phrase "I want to speak to
    #   the manager." Amazon Transcribe attempts to match that specific
    #   phrase to the transcription.
    #   @return [String]
    #
    # @!attribute [rw] absolute_time_range
    #   A time range, set in seconds, between two points in the call.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   An object that allows percentages to specify the proportion of the
    #   call where you would like to apply a filter. For example, you can
    #   specify the first half of the call. You can also specify the period
    #   of time between halfway through to three-quarters of the way through
    #   the call. Because the length of conversation can vary between calls,
    #   you can apply relative time ranges across all calls.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] participant_role
    #   Determines whether the customer or the agent is speaking the phrases
    #   that you've specified.
    #   @return [String]
    #
    # @!attribute [rw] negate
    #   If `TRUE`, the rule that you specify is applied to everything except
    #   for the phrases that you specify.
    #   @return [Boolean]
    #
    # @!attribute [rw] targets
    #   The phrases that you're specifying for the transcript filter to
    #   match.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/TranscriptFilter AWS API Documentation
    #
    class TranscriptFilter < Struct.new(
      :transcript_filter_type,
      :absolute_time_range,
      :relative_time_range,
      :participant_role,
      :negate,
      :targets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an asynchronous transcription job that was created with the
    # `StartTranscriptionJob` operation.
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   The status of the transcription job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the input speech.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz (Hz), of the audio track in the input
    #   media file.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The format of the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   An object that describes the input media for the transcription job.
    #   @return [Types::Media]
    #
    # @!attribute [rw] transcript
    #   An object that describes the output of the transcription job.
    #   @return [Types::Transcript]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the job started processing.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   A timestamp that shows when the job completed.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If the `TranscriptionJobStatus` field is `FAILED`, this field
    #   contains information about why the job failed.
    #
    #   The `FailureReason` field can contain one of the following values:
    #
    #   * `Unsupported media format` - The media format specified in the
    #     `MediaFormat` field of the request isn't valid. See the
    #     description of the `MediaFormat` field for a list of valid values.
    #
    #   * `The media format provided does not match the detected media
    #     format` - The media format of the audio file doesn't match the
    #     format specified in the `MediaFormat` field in the request. Check
    #     the media format of your media file and make sure that the two
    #     values match.
    #
    #   * `Invalid sample rate for audio file` - The sample rate specified
    #     in the `MediaSampleRateHertz` of the request isn't valid. The
    #     sample rate must be between 8,000 and 48,000 Hertz.
    #
    #   * `The sample rate provided does not match the detected sample rate`
    #     - The sample rate in the audio file doesn't match the sample rate
    #     specified in the `MediaSampleRateHertz` field in the request.
    #     Check the sample rate of your media file and make sure that the
    #     two values match.
    #
    #   * `Invalid file size: file size too large` - The size of your audio
    #     file is larger than Amazon Transcribe can process. For more
    #     information, see [Limits][1] in the *Amazon Transcribe Developer
    #     Guide*.
    #
    #   * `Invalid number of channels: number of channels too large` - Your
    #     audio contains more channels than Amazon Transcribe is configured
    #     to process. To request additional channels, see [Amazon Transcribe
    #     Limits][2] in the *Amazon Web Services General Reference*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits
    #   [2]: https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits-amazon-transcribe
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Optional settings for the transcription job. Use these settings to
    #   turn on speaker recognition, to set the maximum number of speakers
    #   that should be identified and to specify a custom vocabulary to use
    #   when processing the transcription job.
    #   @return [Types::Settings]
    #
    # @!attribute [rw] model_settings
    #   An object containing the details of your custom language model.
    #   @return [Types::ModelSettings]
    #
    # @!attribute [rw] job_execution_settings
    #   Provides information about how a transcription job is executed.
    #   @return [Types::JobExecutionSettings]
    #
    # @!attribute [rw] content_redaction
    #   An object that describes content redaction settings for the
    #   transcription job.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] identify_language
    #   A value that shows if automatic language identification was enabled
    #   for a transcription job.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   An object that shows the optional array of languages inputted for
    #   transcription jobs with automatic language identification enabled.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identified_language_score
    #   A value between zero and one that Amazon Transcribe assigned to the
    #   language that it identified in the source audio. Larger values
    #   indicate that Amazon Transcribe has higher confidence in the
    #   language it identified.
    #   @return [Float]
    #
    # @!attribute [rw] tags
    #   A key:value pair assigned to a given transcription job.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] subtitles
    #   Generate subtitles for your batch transcription job.
    #   @return [Types::SubtitlesOutput]
    #
    # @!attribute [rw] language_id_settings
    #   Language-specific settings that can be specified when language
    #   identification is enabled for your transcription job. These settings
    #   include `VocabularyName`, `VocabularyFilterName`, and
    #   `LanguageModelName`.
    #   @return [Hash<String,Types::LanguageIdSettings>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/TranscriptionJob AWS API Documentation
    #
    class TranscriptionJob < Struct.new(
      :transcription_job_name,
      :transcription_job_status,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :transcript,
      :start_time,
      :creation_time,
      :completion_time,
      :failure_reason,
      :settings,
      :model_settings,
      :job_execution_settings,
      :content_redaction,
      :identify_language,
      :language_options,
      :identified_language_score,
      :tags,
      :subtitles,
      :language_id_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of information about a transcription job.
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the job was created.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   A timestamp that shows when the job started processing.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   A timestamp that shows when the job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language code for the input speech.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   The status of the transcription job. When the status is `COMPLETED`,
    #   use the `GetTranscriptionJob` operation to get the results of the
    #   transcription.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If the `TranscriptionJobStatus` field is `FAILED`, a description of
    #   the error.
    #   @return [String]
    #
    # @!attribute [rw] output_location_type
    #   Indicates the location of the output of the transcription job.
    #
    #   If the value is `CUSTOMER_BUCKET` then the location is the S3 bucket
    #   specified in the `outputBucketName` field when the transcription job
    #   was started with the `StartTranscriptionJob` operation.
    #
    #   If the value is `SERVICE_BUCKET` then the output is stored by Amazon
    #   Transcribe and can be retrieved using the URI in the
    #   `GetTranscriptionJob` response's `TranscriptFileUri` field.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction
    #   The content redaction settings of the transcription job.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] model_settings
    #   The object used to call your custom language model to your
    #   transcription job.
    #   @return [Types::ModelSettings]
    #
    # @!attribute [rw] identify_language
    #   Whether automatic language identification was enabled for a
    #   transcription job.
    #   @return [Boolean]
    #
    # @!attribute [rw] identified_language_score
    #   A value between zero and one that Amazon Transcribe assigned to the
    #   language it identified in the source audio. A higher score indicates
    #   that Amazon Transcribe is more confident in the language it
    #   identified.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/TranscriptionJobSummary AWS API Documentation
    #
    class TranscriptionJobSummary < Struct.new(
      :transcription_job_name,
      :creation_time,
      :start_time,
      :completion_time,
      :language_code,
      :transcription_job_status,
      :failure_reason,
      :output_location_type,
      :content_redaction,
      :model_settings,
      :identify_language,
      :identified_language_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "TranscribeArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Transcribe resource you
    #   want to remove tags from. ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`
    #   (for example,
    #   `arn:aws:transcribe:us-east-1:account-id:transcription-job/your-job-name`).
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A list of tag keys you want to remove from a specified Amazon
    #   Transcribe resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateCallAnalyticsCategoryRequest
    #   data as a hash:
    #
    #       {
    #         category_name: "CategoryName", # required
    #         rules: [ # required
    #           {
    #             non_talk_time_filter: {
    #               threshold: 1,
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               negate: false,
    #             },
    #             interruption_filter: {
    #               threshold: 1,
    #               participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               negate: false,
    #             },
    #             transcript_filter: {
    #               transcript_filter_type: "EXACT", # required, accepts EXACT
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #               negate: false,
    #               targets: ["NonEmptyString"], # required
    #             },
    #             sentiment_filter: {
    #               sentiments: ["POSITIVE"], # required, accepts POSITIVE, NEGATIVE, NEUTRAL, MIXED
    #               absolute_time_range: {
    #                 start_time: 1,
    #                 end_time: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               relative_time_range: {
    #                 start_percentage: 1,
    #                 end_percentage: 1,
    #                 first: 1,
    #                 last: 1,
    #               },
    #               participant_role: "AGENT", # accepts AGENT, CUSTOMER
    #               negate: false,
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] category_name
    #   The name of the analytics category to update. The name is case
    #   sensitive. If you try to update a call analytics category with the
    #   same name as a previous category you will receive a
    #   `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The rules used for the updated analytics category. The rules that
    #   you provide in this field replace the ones that are currently being
    #   used.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateCallAnalyticsCategoryRequest AWS API Documentation
    #
    class UpdateCallAnalyticsCategoryRequest < Struct.new(
      :category_name,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category_properties
    #   The attributes describing the analytics category. You can see
    #   information such as the rules that you've used to update the
    #   category and when the category was originally created.
    #   @return [Types::CategoryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateCallAnalyticsCategoryResponse AWS API Documentation
    #
    class UpdateCallAnalyticsCategoryResponse < Struct.new(
      :category_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateMedicalVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         vocabulary_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to update. The name is case sensitive. If
    #   you try to update a vocabulary with the same name as a vocabulary
    #   you've already made, you get a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the language used for the entries in the
    #   updated vocabulary. U.S. English (en-US) is the only valid language
    #   code in Amazon Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The location in Amazon S3 of the text file that contains your custom
    #   vocabulary. The URI must be in the same Amazon Web Services Region
    #   as the resource that you are calling. The following is the format
    #   for a URI:
    #
    #   `
    #   https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt`
    #
    #   For more information about Amazon S3 object names, see [Object
    #   Keys][1] in the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies in Amazon Transcribe
    #   Medical, see [Medical Custom Vocabularies][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/vocabulary-med.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateMedicalVocabularyRequest AWS API Documentation
    #
    class UpdateMedicalVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :vocabulary_file_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the updated vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the language of the text file used to update
    #   the custom vocabulary. US English (en-US) is the only language
    #   supported in Amazon Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary was updated.
    #   @return [Time]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of the update to the vocabulary. When the
    #   `VocabularyState` field is `READY`, the vocabulary is ready to be
    #   used in a `StartMedicalTranscriptionJob` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateMedicalVocabularyResponse AWS API Documentation
    #
    class UpdateMedicalVocabularyResponse < Struct.new(
      :vocabulary_name,
      :language_code,
      :last_modified_time,
      :vocabulary_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVocabularyFilterRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_filter_name: "VocabularyFilterName", # required
    #         words: ["Word"],
    #         vocabulary_filter_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter to update. If you try to update a
    #   vocabulary filter with the same name as another vocabulary filter,
    #   you get a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] words
    #   The words to use in the vocabulary filter. Only use characters from
    #   the character set defined for custom vocabularies. For a list of
    #   character sets, see [Character Sets for Custom Vocabularies][1].
    #
    #   If you provide a list of words in the `Words` parameter, you can't
    #   use the `VocabularyFilterFileUri` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_filter_file_uri
    #   The Amazon S3 location of a text file used as input to create the
    #   vocabulary filter. Only use characters from the character set
    #   defined for custom vocabularies. For a list of character sets, see
    #   [Character Sets for Custom Vocabularies][1].
    #
    #   The specified file must be less than 50 KB of UTF-8 characters.
    #
    #   If you provide the location of a list of words in the
    #   `VocabularyFilterFileUri` parameter, you can't use the `Words`
    #   parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyFilterRequest AWS API Documentation
    #
    class UpdateVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name,
      :words,
      :vocabulary_filter_file_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_filter_name
    #   The name of the updated vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the words in the vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary filter was updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyFilterResponse AWS API Documentation
    #
    class UpdateVocabularyFilterResponse < Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "af-ZA", # required, accepts af-ZA, ar-AE, ar-SA, cy-GB, da-DK, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fa-IR, fr-CA, fr-FR, ga-IE, gd-GB, he-IL, hi-IN, id-ID, it-IT, ja-JP, ko-KR, ms-MY, nl-NL, pt-BR, pt-PT, ru-RU, ta-IN, te-IN, tr-TR, zh-CN, zh-TW, th-TH, en-ZA, en-NZ
    #         phrases: ["Phrase"],
    #         vocabulary_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to update. The name is case sensitive. If
    #   you try to update a vocabulary with the same name as a previous
    #   vocabulary you will receive a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries. For a list of languages
    #   and their corresponding language codes, see [Supported
    #   languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] phrases
    #   An array of strings containing the vocabulary entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The S3 location of the text file that contains the definition of the
    #   custom vocabulary. The URI must be in the same region as the API
    #   endpoint that you are calling. The general form is:
    #
    #   `https://s3.<aws-region>.amazonaws.com/<AWSDOC-EXAMPLE-BUCKET>/<keyprefix>/<objectkey>`
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/AWSDOC-EXAMPLE-BUCKET/vocab.txt`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Custom
    #   Vocabularies][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyRequest AWS API Documentation
    #
    class UpdateVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary that was updated.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary was updated.
    #   @return [Time]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of the vocabulary. When the `VocabularyState`
    #   field contains `READY` the vocabulary is ready to be used in a
    #   `StartTranscriptionJob` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyResponse AWS API Documentation
    #
    class UpdateVocabularyResponse < Struct.new(
      :vocabulary_name,
      :language_code,
      :last_modified_time,
      :vocabulary_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a vocabulary filter.
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the vocabulary filter. The name must be unique in the
    #   account that holds the filter.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the words in the vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/VocabularyFilterInfo AWS API Documentation
    #
    class VocabularyFilterInfo < Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a custom vocabulary.
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the vocabulary was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of the vocabulary. If the state is `READY` you
    #   can use the vocabulary in a `StartTranscriptionJob` request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/VocabularyInfo AWS API Documentation
    #
    class VocabularyInfo < Struct.new(
      :vocabulary_name,
      :language_code,
      :last_modified_time,
      :vocabulary_state)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
