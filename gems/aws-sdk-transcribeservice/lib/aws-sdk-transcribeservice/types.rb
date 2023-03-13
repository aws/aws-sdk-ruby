# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeService
  module Types

    # A time range, in milliseconds, between two points in your media file.
    #
    # You can use `StartTime` and `EndTime` to search a custom segment. For
    # example, setting `StartTime` to 10000 and `EndTime` to 50000 only
    # searches for your specified criteria in the audio contained between
    # the 10,000 millisecond mark and the 50,000 millisecond mark of your
    # media file. You must use `StartTime` and `EndTime` as a set; that is,
    # if you include one, you must include both.
    #
    # You can use also `First` to search from the start of the audio until
    # the time that you specify, or `Last` to search from the time that you
    # specify until the end of the audio. For example, setting `First` to
    # 50000 only searches for your specified criteria in the audio contained
    # between the start of the media file to the 50,000 millisecond mark.
    # You can use `First` and `Last` independently of each other.
    #
    # If you prefer to use percentage instead of milliseconds, see .
    #
    # @!attribute [rw] start_time
    #   The time, in milliseconds, when Amazon Transcribe starts searching
    #   for the specified criteria in your audio. If you include `StartTime`
    #   in your request, you must also include `EndTime`.
    #   @return [Integer]
    #
    # @!attribute [rw] end_time
    #   The time, in milliseconds, when Amazon Transcribe stops searching
    #   for the specified criteria in your audio. If you include `EndTime`
    #   in your request, you must also include `StartTime`.
    #   @return [Integer]
    #
    # @!attribute [rw] first
    #   The time, in milliseconds, from the start of your media file until
    #   the specified value. Amazon Transcribe searches for your specified
    #   criteria in this time segment.
    #   @return [Integer]
    #
    # @!attribute [rw] last
    #   The time, in milliseconds, from the specified value until the end of
    #   your media file. Amazon Transcribe searches for your specified
    #   criteria in this time segment.
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

    # Your request didn't pass one or more validation tests. This can occur
    # when the entity you're trying to delete doesn't exist or if it's in
    # a non-terminal state (such as `IN PROGRESS`). See the exception
    # message field for more information.
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

    # Provides detailed information about a Call Analytics job.
    #
    # To view the job's status, refer to `CallAnalyticsJobStatus`. If the
    # status is `COMPLETED`, the job is finished. You can find your
    # completed transcript at the URI specified in `TranscriptFileUri`. If
    # the status is `FAILED`, `FailureReason` provides details on why your
    # transcription job failed.
    #
    # If you enabled personally identifiable information (PII) redaction,
    # the redacted transcript appears at the location specified in
    # `RedactedTranscriptFileUri`.
    #
    # If you chose to redact the audio in your media file, you can find your
    # redacted media file at the location specified in the
    # `RedactedMediaFileUri` field of your response.
    #
    # @!attribute [rw] call_analytics_job_name
    #   The name of the Call Analytics job. Job names are case sensitive and
    #   must be unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] call_analytics_job_status
    #   Provides the status of the specified Call Analytics job.
    #
    #   If the status is `COMPLETED`, the job is finished and you can find
    #   the results at the location specified in `TranscriptFileUri` (or
    #   `RedactedTranscriptFileUri`, if you requested transcript redaction).
    #   If the status is `FAILED`, `FailureReason` provides details on why
    #   your transcription job failed.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your Call Analytics job. For a list
    #   of supported languages and their associated language codes, refer to
    #   the [Supported languages][1] table.
    #
    #   If you don't know the language spoken in your media file, you can
    #   omit this field and let Amazon Transcribe automatically identify the
    #   language of your media. To improve the accuracy of language
    #   identification, you can include several language codes and Amazon
    #   Transcribe chooses the closest match for your transcription.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in hertz, of the audio track in your input media
    #   file.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The format of the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Provides the Amazon S3 location of the media file you used in your
    #   Call Analytics request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] transcript
    #   Provides you with the Amazon S3 URI you can use to access your
    #   transcript.
    #   @return [Types::Transcript]
    #
    # @!attribute [rw] start_time
    #   The date and time the specified Call Analytics job began processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.789000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The date and time the specified Call Analytics job request was made.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time the specified Call Analytics job finished
    #   processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:33:13.922000-07:00` represents a
    #   transcription job that started processing at 12:33 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If `CallAnalyticsJobStatus` is `FAILED`, `FailureReason` contains
    #   information about why the Call Analytics job request failed.
    #
    #   The `FailureReason` field contains one of the following values:
    #
    #   * `Unsupported media format`.
    #
    #     The media format specified in `MediaFormat` isn't valid. Refer to
    #     **MediaFormat** for a list of supported formats.
    #
    #   * `The media format provided does not match the detected media
    #     format`.
    #
    #     The media format specified in `MediaFormat` doesn't match the
    #     format of the input file. Check the media format of your media
    #     file and correct the specified value.
    #
    #   * `Invalid sample rate for audio file`.
    #
    #     The sample rate specified in `MediaSampleRateHertz` isn't valid.
    #     The sample rate must be between 8,000 and 48,000 hertz.
    #
    #   * `The sample rate provided does not match the detected sample
    #     rate`.
    #
    #     The sample rate specified in `MediaSampleRateHertz` doesn't match
    #     the sample rate detected in your input media file. Check the
    #     sample rate of your media file and correct the specified value.
    #
    #   * `Invalid file size: file size too large`.
    #
    #     The size of your media file is larger than what Amazon Transcribe
    #     can process. For more information, refer to [Guidelines and
    #     quotas][1].
    #
    #   * `Invalid number of channels: number of channels too large`.
    #
    #     Your audio contains more channels than Amazon Transcribe is able
    #     to process. For more information, refer to [Guidelines and
    #     quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) you included in your request.
    #   @return [String]
    #
    # @!attribute [rw] identified_language_score
    #   The confidence score associated with the language identified in your
    #   media file.
    #
    #   Confidence scores are values between 0 and 1; a larger value
    #   indicates a higher probability that the identified language
    #   correctly matches the language spoken in your media.
    #   @return [Float]
    #
    # @!attribute [rw] settings
    #   Provides information on any additional settings that were included
    #   in your request. Additional settings include content redaction and
    #   language identification settings.
    #   @return [Types::CallAnalyticsJobSettings]
    #
    # @!attribute [rw] channel_definitions
    #   Indicates which speaker is on which channel.
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

    # Provides additional optional settings for your request, including
    # content redaction, automatic language identification; allows you to
    # apply custom language models, custom vocabulary filters, and custom
    # vocabularies.
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary you want to include in your Call
    #   Analytics transcription request. Custom vocabulary names are case
    #   sensitive.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the custom vocabulary filter you want to include in your
    #   Call Analytics transcription request. Custom vocabulary filter names
    #   are case sensitive.
    #
    #   Note that if you include `VocabularyFilterName` in your request, you
    #   must also include `VocabularyFilterMethod`.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Specify how you want your custom vocabulary filter applied to your
    #   transcript.
    #
    #   To replace words with `***`, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The name of the custom language model you want to use when
    #   processing your Call Analytics job. Note that custom language model
    #   names are case sensitive.
    #
    #   The language of the specified custom language model must match the
    #   language code that you specify in your transcription request. If the
    #   languages don't match, the custom language model isn't applied.
    #   There are no errors or warnings associated with a language mismatch.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction
    #   Makes it possible to redact or flag specified personally
    #   identifiable information (PII) in your transcript. If you use
    #   `ContentRedaction`, you must also include the sub-parameters:
    #   `PiiEntityTypes`, `RedactionOutput`, and `RedactionType`.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] language_options
    #   You can specify two or more language codes that represent the
    #   languages you think may be present in your media. Including more
    #   than five is not recommended. If you're unsure what languages are
    #   present, do not include this parameter.
    #
    #   Including language options can improve the accuracy of language
    #   identification.
    #
    #   For a list of languages supported with Call Analytics, refer to the
    #   [Supported languages][1] table.
    #
    #   To transcribe speech in Modern Standard Arabic (`ar-SA`), your media
    #   file must be encoded at a sample rate of 16,000 Hz or higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_id_settings
    #   If using automatic language identification in your request and you
    #   want to apply a custom language model, a custom vocabulary, or a
    #   custom vocabulary filter, include `LanguageIdSettings` with the
    #   relevant sub-parameters (`VocabularyName`, `LanguageModelName`, and
    #   `VocabularyFilterName`).
    #
    #   `LanguageIdSettings` supports two to five language codes. Each
    #   language code you include can have an associated custom language
    #   model, custom vocabulary, and custom vocabulary filter. The language
    #   codes that you specify must match the languages of the associated
    #   custom language models, custom vocabularies, and custom vocabulary
    #   filters.
    #
    #   It's recommended that you include `LanguageOptions` when using
    #   `LanguageIdSettings` to ensure that the correct language dialect is
    #   identified. For example, if you specify a custom vocabulary that is
    #   in `en-US` but Amazon Transcribe determines that the language spoken
    #   in your media is `en-AU`, your custom vocabulary *is not* applied to
    #   your transcription. If you include `LanguageOptions` and include
    #   `en-US` as the only English language dialect, your custom vocabulary
    #   *is* applied to your transcription.
    #
    #   If you want to include a custom language model, custom vocabulary,
    #   or custom vocabulary filter with your request but **do not** want to
    #   use automatic language identification, use instead the ` parameter
    #   with the LanguageModelName, VocabularyName, or VocabularyFilterName
    #   sub-parameters.</p> For a list of languages supported with Call
    #   Analytics, refer to Supported languages and language-specific
    #   features.
    #   `
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

    # Provides detailed information about a specific Call Analytics job.
    #
    # @!attribute [rw] call_analytics_job_name
    #   The name of the Call Analytics job. Job names are case sensitive and
    #   must be unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the specified Call Analytics job request was made.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The date and time your Call Analytics job began processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.789000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time the specified Call Analytics job finished
    #   processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:33:13.922000-07:00` represents a
    #   transcription job that started processing at 12:33 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your Call Analytics transcription.
    #   @return [String]
    #
    # @!attribute [rw] call_analytics_job_status
    #   Provides the status of your Call Analytics job.
    #
    #   If the status is `COMPLETED`, the job is finished and you can find
    #   the results at the location specified in `TranscriptFileUri` (or
    #   `RedactedTranscriptFileUri`, if you requested transcript redaction).
    #   If the status is `FAILED`, `FailureReason` provides details on why
    #   your transcription job failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `CallAnalyticsJobStatus` is `FAILED`, `FailureReason` contains
    #   information about why the Call Analytics job failed. See also:
    #   [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
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

    # Provides you with the properties of the Call Analytics category you
    # specified in your request. This includes the list of rules that define
    # the specified category.
    #
    # @!attribute [rw] category_name
    #   The name of the Call Analytics category. Category names are case
    #   sensitive and must be unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The rules used to define a Call Analytics category. Each category
    #   can have between 1 and 20 rules.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] create_time
    #   The date and time the specified Call Analytics category was created.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The date and time the specified Call Analytics category was last
    #   updated.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-05T12:45:32.691000-07:00` represents 12:45 PM
    #   UTC-7 on May 5, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] input_type
    #   The input type associated with the specified category. `POST_CALL`
    #   refers to a category that is applied to batch transcriptions;
    #   `REAL_TIME` refers to a category that is applied to streaming
    #   transcriptions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CategoryProperties AWS API Documentation
    #
    class CategoryProperties < Struct.new(
      :category_name,
      :rules,
      :create_time,
      :last_update_time,
      :input_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Makes it possible to specify which speaker is on which channel. For
    # example, if your agent is the first participant to speak, you would
    # set `ChannelId` to `0` (to indicate the first channel) and
    # `ParticipantRole` to `AGENT` (to indicate that it's the agent
    # speaking).
    #
    # @!attribute [rw] channel_id
    #   Specify the audio channel you want to define.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_role
    #   Specify the speaker you want to define. Omitting this parameter is
    #   equivalent to specifying both participants.
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

    # A resource already exists with this name. Resource names must be
    # unique within an Amazon Web Services account.
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

    # Makes it possible to redact or flag specified personally identifiable
    # information (PII) in your transcript. If you use `ContentRedaction`,
    # you must also include the sub-parameters: `PiiEntityTypes`,
    # `RedactionOutput`, and `RedactionType`.
    #
    # @!attribute [rw] redaction_type
    #   Specify the category of information you want to redact; `PII`
    #   (personally identifiable information) is the only valid value. You
    #   can use `PiiEntityTypes` to choose which types of PII you want to
    #   redact.
    #   @return [String]
    #
    # @!attribute [rw] redaction_output
    #   Specify if you want only a redacted transcript, or if you want a
    #   redacted and an unredacted transcript.
    #
    #   When you choose `redacted` Amazon Transcribe creates only a redacted
    #   transcript.
    #
    #   When you choose `redacted_and_unredacted` Amazon Transcribe creates
    #   a redacted and an unredacted transcript (as two separate files).
    #   @return [String]
    #
    # @!attribute [rw] pii_entity_types
    #   Specify which types of personally identifiable information (PII) you
    #   want to redact in your transcript. You can include as many types as
    #   you'd like, or you can select `ALL`.
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

    # @!attribute [rw] category_name
    #   A unique name, chosen by you, for your Call Analytics category.
    #   It's helpful to use a detailed naming system that will make sense
    #   to you in the future. For example, it's better to use
    #   `sentiment-positive-last30seconds` for a category over a generic
    #   name like `test-category`.
    #
    #   Category names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   Rules define a Call Analytics category. When creating a new
    #   category, you must create between 1 and 20 rules for that category.
    #   For each rule, you specify a filter you want applied to the
    #   attributes of a call. For example, you can choose a sentiment filter
    #   that detects if a customer's sentiment was positive during the last
    #   30 seconds of the call.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] input_type
    #   Choose whether you want to create a real-time or a post-call
    #   category for your Call Analytics transcription.
    #
    #   Specifying `POST_CALL` assigns your category to post-call
    #   transcriptions; categories with this input type cannot be applied to
    #   streaming (real-time) transcriptions.
    #
    #   Specifying `REAL_TIME` assigns your category to streaming
    #   transcriptions; categories with this input type cannot be applied to
    #   post-call transcriptions.
    #
    #   If you do not include `InputType`, your category is created as a
    #   post-call category by default.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateCallAnalyticsCategoryRequest AWS API Documentation
    #
    class CreateCallAnalyticsCategoryRequest < Struct.new(
      :category_name,
      :rules,
      :input_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category_properties
    #   Provides you with the properties of your new category, including its
    #   associated rules.
    #   @return [Types::CategoryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateCallAnalyticsCategoryResponse AWS API Documentation
    #
    class CreateCallAnalyticsCategoryResponse < Struct.new(
      :category_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] language_code
    #   The language code that represents the language of your model. Each
    #   custom language model must contain terms in only one language, and
    #   the language you select for your custom language model must match
    #   the language of your training and tuning data.
    #
    #   For a list of supported languages and their associated language
    #   codes, refer to the [Supported languages][1] table. Note that US
    #   English (`en-US`) is the only language supported with Amazon
    #   Transcribe Medical.
    #
    #   A custom language model can only be used to transcribe files in the
    #   same language as the model. For example, if you create a custom
    #   language model using US English (`en-US`), you can only apply this
    #   model to files that contain English audio.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] base_model_name
    #   The Amazon Transcribe standard language model, or base model, used
    #   to create your custom language model. Amazon Transcribe offers two
    #   options for base models: Wideband and Narrowband.
    #
    #   If the audio you want to transcribe has a sample rate of 16,000 Hz
    #   or greater, choose `WideBand`. To transcribe audio with a sample
    #   rate less than 16,000 Hz, choose `NarrowBand`.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   A unique name, chosen by you, for your custom language model.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   new custom language model with the same name as an existing custom
    #   language model, you get a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Contains the Amazon S3 location of the training data you want to use
    #   to create a new custom language model, and permissions to access
    #   this location.
    #
    #   When using `InputDataConfig`, you must include these sub-parameters:
    #   `S3Uri`, which is the Amazon S3 location of your training data, and
    #   `DataAccessRoleArn`, which is the Amazon Resource Name (ARN) of the
    #   role that has permission to access your specified Amazon S3
    #   location. You can optionally include `TuningDataS3Uri`, which is the
    #   Amazon S3 location of your tuning data. If you specify different
    #   Amazon S3 locations for training and tuning data, the ARN you use
    #   must have permissions to access both locations.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] tags
    #   Adds one or more custom tags, each in the form of a key:value pair,
    #   to a new custom language model at the time you create this new
    #   model.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
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
    #   The language code you selected for your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] base_model_name
    #   The Amazon Transcribe standard language model, or base model, you
    #   specified when creating your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name of your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Lists your data access role ARN (Amazon Resource Name) and the
    #   Amazon S3 locations you provided for your training (`S3Uri`) and
    #   tuning (`TuningDataS3Uri`) data.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] model_status
    #   The status of your custom language model. When the status displays
    #   as `COMPLETED`, your model is ready to use.
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

    # @!attribute [rw] vocabulary_name
    #   A unique name, chosen by you, for your new custom medical
    #   vocabulary.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   new custom medical vocabulary with the same name as an existing
    #   custom medical vocabulary, you get a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language of the entries in
    #   your custom vocabulary. US English (`en-US`) is the only language
    #   supported with Amazon Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The Amazon S3 location (URI) of the text file that contains your
    #   custom medical vocabulary. The URI must be in the same Amazon Web
    #   Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more custom tags, each in the form of a key:value pair,
    #   to a new custom medical vocabulary at the time you create this new
    #   custom vocabulary.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
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
    #   The name you chose for your custom medical vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom medical vocabulary.
    #   US English (`en-US`) is the only language supported with Amazon
    #   Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom medical vocabulary. If the state
    #   is `READY`, you can use the custom vocabulary in a
    #   `StartMedicalTranscriptionJob` request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time you created your custom medical vocabulary.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If `VocabularyState` is `FAILED`, `FailureReason` contains
    #   information about why the medical transcription job request failed.
    #   See also: [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
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

    # @!attribute [rw] vocabulary_filter_name
    #   A unique name, chosen by you, for your new custom vocabulary filter.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   new custom vocabulary filter with the same name as an existing
    #   custom vocabulary filter, you get a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language of the entries in
    #   your vocabulary filter. Each custom vocabulary filter must contain
    #   terms in only one language.
    #
    #   A custom vocabulary filter can only be used to transcribe files in
    #   the same language as the filter. For example, if you create a custom
    #   vocabulary filter using US English (`en-US`), you can only apply
    #   this filter to files that contain English audio.
    #
    #   For a list of supported languages and their associated language
    #   codes, refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] words
    #   Use this parameter if you want to create your custom vocabulary
    #   filter by including all desired terms, as comma-separated values,
    #   within your request. The other option for creating your vocabulary
    #   filter is to save your entries in a text file and upload them to an
    #   Amazon S3 bucket, then specify the location of your file using the
    #   `VocabularyFilterFileUri` parameter.
    #
    #   Note that if you include `Words` in your request, you cannot use
    #   `VocabularyFilterFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed
    #   characters for that specific language. If you use unsupported
    #   characters, your custom vocabulary filter request fails. Refer to
    #   [Character Sets for Custom Vocabularies][1] to get the character set
    #   for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_filter_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary filter terms. The URI must be located in the same Amazon
    #   Web Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt`
    #
    #   Note that if you include `VocabularyFilterFileUri` in your request,
    #   you cannot use `Words`; you must choose one or the other.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more custom tags, each in the form of a key:value pair,
    #   to a new custom vocabulary filter at the time you create this new
    #   vocabulary filter.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files (in
    #   this case, your custom vocabulary filter). If the role that you
    #   specify doesn’t have the appropriate permissions to access the
    #   specified Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyFilterRequest AWS API Documentation
    #
    class CreateVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :words,
      :vocabulary_filter_file_uri,
      :tags,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_filter_name
    #   The name you chose for your custom vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time you created your custom vocabulary filter.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
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

    # @!attribute [rw] vocabulary_name
    #   A unique name, chosen by you, for your new custom vocabulary.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   new custom vocabulary with the same name as an existing custom
    #   vocabulary, you get a `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language of the entries in
    #   your custom vocabulary. Each custom vocabulary must contain terms in
    #   only one language.
    #
    #   A custom vocabulary can only be used to transcribe files in the same
    #   language as the custom vocabulary. For example, if you create a
    #   custom vocabulary using US English (`en-US`), you can only apply
    #   this custom vocabulary to files that contain English audio.
    #
    #   For a list of supported languages and their associated language
    #   codes, refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] phrases
    #   Use this parameter if you want to create your custom vocabulary by
    #   including all desired terms, as comma-separated values, within your
    #   request. The other option for creating your custom vocabulary is to
    #   save your entries in a text file and upload them to an Amazon S3
    #   bucket, then specify the location of your file using the
    #   `VocabularyFileUri` parameter.
    #
    #   Note that if you include `Phrases` in your request, you cannot use
    #   `VocabularyFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed
    #   characters for that specific language. If you use unsupported
    #   characters, your custom vocabulary filter request fails. Refer to
    #   [Character Sets for Custom Vocabularies][1] to get the character set
    #   for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary. The URI must be located in the same Amazon Web Services
    #   Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
    #
    #   Note that if you include `VocabularyFileUri` in your request, you
    #   cannot use the `Phrases` flag; you must choose one or the other.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more custom tags, each in the form of a key:value pair,
    #   to a new custom vocabulary at the time you create this new custom
    #   vocabulary.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files (in
    #   this case, your custom vocabulary). If the role that you specify
    #   doesn’t have the appropriate permissions to access the specified
    #   Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyRequest AWS API Documentation
    #
    class CreateVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri,
      :tags,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name you chose for your custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom vocabulary. If the state is
    #   `READY`, you can use the custom vocabulary in a
    #   `StartTranscriptionJob` request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time you created your custom vocabulary.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If `VocabularyState` is `FAILED`, `FailureReason` contains
    #   information about why the custom vocabulary request failed. See
    #   also: [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
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

    # @!attribute [rw] category_name
    #   The name of the Call Analytics category you want to delete. Category
    #   names are case sensitive.
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

    # @!attribute [rw] call_analytics_job_name
    #   The name of the Call Analytics job you want to delete. Job names are
    #   case sensitive.
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

    # @!attribute [rw] model_name
    #   The name of the custom language model you want to delete. Model
    #   names are case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteLanguageModelRequest AWS API Documentation
    #
    class DeleteLanguageModelRequest < Struct.new(
      :model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] medical_transcription_job_name
    #   The name of the medical transcription job you want to delete. Job
    #   names are case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteMedicalTranscriptionJobRequest AWS API Documentation
    #
    class DeleteMedicalTranscriptionJobRequest < Struct.new(
      :medical_transcription_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the custom medical vocabulary you want to delete. Custom
    #   medical vocabulary names are case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteMedicalVocabularyRequest AWS API Documentation
    #
    class DeleteMedicalVocabularyRequest < Struct.new(
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job you want to delete. Job names are
    #   case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteTranscriptionJobRequest AWS API Documentation
    #
    class DeleteTranscriptionJobRequest < Struct.new(
      :transcription_job_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_filter_name
    #   The name of the custom vocabulary filter you want to delete. Custom
    #   vocabulary filter names are case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabularyFilterRequest AWS API Documentation
    #
    class DeleteVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary you want to delete. Custom
    #   vocabulary names are case sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DeleteVocabularyRequest AWS API Documentation
    #
    class DeleteVocabularyRequest < Struct.new(
      :vocabulary_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_name
    #   The name of the custom language model you want information about.
    #   Model names are case sensitive.
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
    #   Provides information about the specified custom language model.
    #
    #   This parameter also shows if the base language model you used to
    #   create your custom language model has been updated. If Amazon
    #   Transcribe has updated the base model, you can create a new custom
    #   language model using the updated base model.
    #
    #   If you tried to create a new custom language model and the request
    #   wasn't successful, you can use this `DescribeLanguageModel` to help
    #   identify the reason for this failure.
    #   @return [Types::LanguageModel]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/DescribeLanguageModelResponse AWS API Documentation
    #
    class DescribeLanguageModelResponse < Struct.new(
      :language_model)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category_name
    #   The name of the Call Analytics category you want information about.
    #   Category names are case sensitive.
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
    #   Provides you with the properties of the Call Analytics category you
    #   specified in your `GetCallAnalyticsCategory` request.
    #   @return [Types::CategoryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsCategoryResponse AWS API Documentation
    #
    class GetCallAnalyticsCategoryResponse < Struct.new(
      :category_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] call_analytics_job_name
    #   The name of the Call Analytics job you want information about. Job
    #   names are case sensitive.
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
    #   Provides detailed information about the specified Call Analytics
    #   job, including job status and, if applicable, failure reason.
    #   @return [Types::CallAnalyticsJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetCallAnalyticsJobResponse AWS API Documentation
    #
    class GetCallAnalyticsJobResponse < Struct.new(
      :call_analytics_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] medical_transcription_job_name
    #   The name of the medical transcription job you want information
    #   about. Job names are case sensitive.
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
    #   Provides detailed information about the specified medical
    #   transcription job, including job status and, if applicable, failure
    #   reason.
    #   @return [Types::MedicalTranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetMedicalTranscriptionJobResponse AWS API Documentation
    #
    class GetMedicalTranscriptionJobResponse < Struct.new(
      :medical_transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the custom medical vocabulary you want information
    #   about. Custom medical vocabulary names are case sensitive.
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
    #   The name of the custom medical vocabulary you requested information
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom medical vocabulary.
    #   US English (`en-US`) is the only language supported with Amazon
    #   Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom medical vocabulary. If the state
    #   is `READY`, you can use the custom vocabulary in a
    #   `StartMedicalTranscriptionJob` request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom medical vocabulary was last
    #   modified.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If `VocabularyState` is `FAILED`, `FailureReason` contains
    #   information about why the custom medical vocabulary request failed.
    #   See also: [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
    #   @return [String]
    #
    # @!attribute [rw] download_uri
    #   The S3 location where the specified custom medical vocabulary is
    #   stored; use this URI to view or download the custom vocabulary.
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

    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job you want information about. Job
    #   names are case sensitive.
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
    #   Provides detailed information about the specified transcription job,
    #   including job status and, if applicable, failure reason.
    #   @return [Types::TranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetTranscriptionJobResponse AWS API Documentation
    #
    class GetTranscriptionJobResponse < Struct.new(
      :transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_filter_name
    #   The name of the custom vocabulary filter you want information about.
    #   Custom vocabulary filter names are case sensitive.
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
    #   The name of the custom vocabulary filter you requested information
    #   about.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom vocabulary filter was last
    #   modified.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] download_uri
    #   The Amazon S3 location where the custom vocabulary filter is stored;
    #   use this URI to view or download the custom vocabulary filter.
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

    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary you want information about. Custom
    #   vocabulary names are case sensitive.
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
    #   The name of the custom vocabulary you requested information about.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom vocabulary. If the state is
    #   `READY`, you can use the custom vocabulary in a
    #   `StartTranscriptionJob` request.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom vocabulary was last modified.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If `VocabularyState` is `FAILED`, `FailureReason` contains
    #   information about why the custom vocabulary request failed. See
    #   also: [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
    #   @return [String]
    #
    # @!attribute [rw] download_uri
    #   The S3 location where the custom vocabulary is stored; use this URI
    #   to view or download the custom vocabulary.
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

    # Contains the Amazon S3 location of the training data you want to use
    # to create a new custom language model, and permissions to access this
    # location.
    #
    # When using `InputDataConfig`, you must include these sub-parameters:
    # `S3Uri` and `DataAccessRoleArn`. You can optionally include
    # `TuningDataS3Uri`.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 location (URI) of the text files you want to use to
    #   train your custom language model.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-model-training-data/`
    #   @return [String]
    #
    # @!attribute [rw] tuning_data_s3_uri
    #   The Amazon S3 location (URI) of the text files you want to use to
    #   tune your custom language model.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-model-tuning-data/`
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files. If
    #   the role that you specify doesn’t have the appropriate permissions
    #   to access the specified Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
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

    # There was an internal error. Check the error message, correct the
    # issue, and try your request again.
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

    # Flag the presence or absence of interruptions in your Call Analytics
    # transcription output.
    #
    # Rules using `InterruptionFilter` are designed to match:
    #
    # * Instances where an agent interrupts a customer
    #
    # * Instances where a customer interrupts an agent
    #
    # * Either participant interrupting the other
    #
    # * A lack of interruptions
    #
    # See [Rule criteria for post-call categories][1] for usage examples.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html#tca-rules-batch
    #
    # @!attribute [rw] threshold
    #   Specify the duration of the interruptions in milliseconds. For
    #   example, you can flag speech that contains more than 10,000
    #   milliseconds of interruptions.
    #   @return [Integer]
    #
    # @!attribute [rw] participant_role
    #   Specify the interrupter that you want to flag. Omitting this
    #   parameter is equivalent to specifying both participants.
    #   @return [String]
    #
    # @!attribute [rw] absolute_time_range
    #   Makes it possible to specify a time range (in milliseconds) in your
    #   audio, during which you want to search for an interruption. See for
    #   more detail.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   Makes it possible to specify a time range (in percentage) in your
    #   media file, during which you want to search for an interruption. See
    #   for more detail.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] negate
    #   Set to `TRUE` to flag speech that does not contain interruptions.
    #   Set to `FALSE` to flag speech that contains interruptions.
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

    # Makes it possible to control how your transcription job is processed.
    # Currently, the only `JobExecutionSettings` modification you can choose
    # is enabling job queueing using the `AllowDeferredExecution`
    # sub-parameter.
    #
    # If you include `JobExecutionSettings` in your request, you must also
    # include the sub-parameters: `AllowDeferredExecution` and
    # `DataAccessRoleArn`.
    #
    # @!attribute [rw] allow_deferred_execution
    #   Makes it possible to enable job queuing when your concurrent request
    #   limit is exceeded. When `AllowDeferredExecution` is set to `true`,
    #   transcription job requests are placed in a queue until the number of
    #   jobs falls below the concurrent request limit. If
    #   `AllowDeferredExecution` is set to `false` and the number of
    #   transcription job requests exceed the concurrent request limit, you
    #   get a `LimitExceededException` error.
    #
    #   If you include `AllowDeferredExecution` in your request, you must
    #   also include `DataAccessRoleArn`.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files. If
    #   the role that you specify doesn’t have the appropriate permissions
    #   to access the specified Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`. For more information, see
    #   [IAM ARNs][1].
    #
    #   Note that if you include `DataAccessRoleArn` in your request, you
    #   must also include `AllowDeferredExecution`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
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

    # Provides information on the speech contained in a discreet utterance
    # when multi-language identification is enabled in your request. This
    # utterance represents a block of speech consisting of one language,
    # preceded or followed by a block of speech in a different language.
    #
    # @!attribute [rw] language_code
    #   Provides the language code for each language identified in your
    #   media.
    #   @return [String]
    #
    # @!attribute [rw] duration_in_seconds
    #   Provides the total time, in seconds, each identified language is
    #   spoken in your media.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/LanguageCodeItem AWS API Documentation
    #
    class LanguageCodeItem < Struct.new(
      :language_code,
      :duration_in_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # If using automatic language identification in your request and you
    # want to apply a custom language model, a custom vocabulary, or a
    # custom vocabulary filter, include `LanguageIdSettings` with the
    # relevant sub-parameters (`VocabularyName`, `LanguageModelName`, and
    # `VocabularyFilterName`). Note that multi-language identification
    # (`IdentifyMultipleLanguages`) doesn't support custom language models.
    #
    # `LanguageIdSettings` supports two to five language codes. Each
    # language code you include can have an associated custom language
    # model, custom vocabulary, and custom vocabulary filter. The language
    # codes that you specify must match the languages of the associated
    # custom language models, custom vocabularies, and custom vocabulary
    # filters.
    #
    # It's recommended that you include `LanguageOptions` when using
    # `LanguageIdSettings` to ensure that the correct language dialect is
    # identified. For example, if you specify a custom vocabulary that is in
    # `en-US` but Amazon Transcribe determines that the language spoken in
    # your media is `en-AU`, your custom vocabulary *is not* applied to your
    # transcription. If you include `LanguageOptions` and include `en-US` as
    # the only English language dialect, your custom vocabulary *is* applied
    # to your transcription.
    #
    # If you want to include a custom language model with your request but
    # **do not** want to use automatic language identification, use instead
    # the ` parameter with the LanguageModelName sub-parameter. If you want
    # to include a custom vocabulary or a custom vocabulary filter (or both)
    # with your request but do not want to use automatic language
    # identification, use instead the  parameter with the VocabularyName or
    # VocabularyFilterName (or both) sub-parameter.</p>
    # `
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary you want to use when processing
    #   your transcription job. Custom vocabulary names are case sensitive.
    #
    #   The language of the specified custom vocabulary must match the
    #   language code that you specify in your transcription request. If the
    #   languages don't match, the custom vocabulary isn't applied. There
    #   are no errors or warnings associated with a language mismatch.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the custom vocabulary filter you want to use when
    #   processing your transcription job. Custom vocabulary filter names
    #   are case sensitive.
    #
    #   The language of the specified custom vocabulary filter must match
    #   the language code that you specify in your transcription request. If
    #   the languages don't match, the custom vocabulary filter isn't
    #   applied. There are no errors or warnings associated with a language
    #   mismatch.
    #
    #   Note that if you include `VocabularyFilterName` in your request, you
    #   must also include `VocabularyFilterMethod`.
    #   @return [String]
    #
    # @!attribute [rw] language_model_name
    #   The name of the custom language model you want to use when
    #   processing your transcription job. Note that custom language model
    #   names are case sensitive.
    #
    #   The language of the specified custom language model must match the
    #   language code that you specify in your transcription request. If the
    #   languages don't match, the custom language model isn't applied.
    #   There are no errors or warnings associated with a language mismatch.
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

    # Provides information about a custom language model, including:
    #
    # * The base model name
    #
    # * When the model was created
    #
    # * The location of the files used to train the model
    #
    # * When the model was last modified
    #
    # * The name you chose for the model
    #
    # * The model's language
    #
    # * The model's processing state
    #
    # * Any available upgrades for the base model
    #
    # @!attribute [rw] model_name
    #   A unique name, chosen by you, for your custom language model.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The date and time the specified custom language model was created.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom language model was last
    #   modified.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your custom language model. Each
    #   custom language model must contain terms in only one language, and
    #   the language you select for your custom language model must match
    #   the language of your training and tuning data.
    #
    #   For a list of supported languages and their associated language
    #   codes, refer to the [Supported languages][1] table. Note that U.S.
    #   English (`en-US`) is the only language supported with Amazon
    #   Transcribe Medical.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] base_model_name
    #   The Amazon Transcribe standard language model, or base model, used
    #   to create your custom language model.
    #   @return [String]
    #
    # @!attribute [rw] model_status
    #   The status of the specified custom language model. When the status
    #   displays as `COMPLETED` the model is ready for use.
    #   @return [String]
    #
    # @!attribute [rw] upgrade_availability
    #   Shows if a more current base model is available for use with the
    #   specified custom language model.
    #
    #   If `false`, your custom language model is using the most up-to-date
    #   base model.
    #
    #   If `true`, there is a newer base model available than the one your
    #   language model is using.
    #
    #   Note that to update a base model, you must recreate the custom
    #   language model using the new base model. Base model upgrades for
    #   existing custom language models are not supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] failure_reason
    #   If `ModelStatus` is `FAILED`, `FailureReason` contains information
    #   about why the custom language model request failed. See also:
    #   [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The Amazon S3 location of the input files used to train and tune
    #   your custom language model, in addition to the data access role ARN
    #   (Amazon Resource Name) that has permissions to access these data.
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

    # You've either sent too many requests or your input file is too long.
    # Wait before retrying your request, or use a smaller file and try your
    # request again.
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

    # @!attribute [rw] next_token
    #   If your `ListCallAnalyticsCategories` request returns more results
    #   than can be displayed, `NextToken` is displayed in the response with
    #   an associated string. To get the next page of results, copy this
    #   string and repeat your request, including `NextToken` with the value
    #   of the copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Call Analytics categories to return in each
    #   page of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify
    #   a value, a default of 5 is used.
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
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] categories
    #   Provides detailed information about your Call Analytics categories,
    #   including all the rules associated with each category.
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

    # @!attribute [rw] status
    #   Returns only Call Analytics jobs with the specified status. Jobs are
    #   ordered by creation date, with the newest job first. If you don't
    #   include `Status`, all Call Analytics jobs are returned.
    #   @return [String]
    #
    # @!attribute [rw] job_name_contains
    #   Returns only the Call Analytics jobs that contain the specified
    #   string. The search is not case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your `ListCallAnalyticsJobs` request returns more results than
    #   can be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Call Analytics jobs to return in each page of
    #   results. If there are fewer results than the value that you specify,
    #   only the actual results are returned. If you don't specify a value,
    #   a default of 5 is used.
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
    #   Lists all Call Analytics jobs that have the status specified in your
    #   request. Jobs are ordered by creation date, with the newest job
    #   first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] call_analytics_job_summaries
    #   Provides a summary of information about each result.
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

    # @!attribute [rw] status_equals
    #   Returns only custom language models with the specified status.
    #   Language models are ordered by creation date, with the newest model
    #   first. If you don't include `StatusEquals`, all custom language
    #   models are returned.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   Returns only the custom language models that contain the specified
    #   string. The search is not case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your `ListLanguageModels` request returns more results than can
    #   be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of custom language models to return in each page
    #   of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify
    #   a value, a default of 5 is used.
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
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] models
    #   Provides information about the custom language models that match the
    #   criteria specified in your request.
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

    # @!attribute [rw] status
    #   Returns only medical transcription jobs with the specified status.
    #   Jobs are ordered by creation date, with the newest job first. If you
    #   don't include `Status`, all medical transcription jobs are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] job_name_contains
    #   Returns only the medical transcription jobs that contain the
    #   specified string. The search is not case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your `ListMedicalTranscriptionJobs` request returns more results
    #   than can be displayed, `NextToken` is displayed in the response with
    #   an associated string. To get the next page of results, copy this
    #   string and repeat your request, including `NextToken` with the value
    #   of the copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of medical transcription jobs to return in each
    #   page of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify
    #   a value, a default of 5 is used.
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
    #   Lists all medical transcription jobs that have the status specified
    #   in your request. Jobs are ordered by creation date, with the newest
    #   job first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] medical_transcription_job_summaries
    #   Provides a summary of information about each result.
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

    # @!attribute [rw] next_token
    #   If your `ListMedicalVocabularies` request returns more results than
    #   can be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of custom medical vocabularies to return in each
    #   page of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify
    #   a value, a default of 5 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] state_equals
    #   Returns only custom medical vocabularies with the specified state.
    #   Custom vocabularies are ordered by creation date, with the newest
    #   vocabulary first. If you don't include `StateEquals`, all custom
    #   medical vocabularies are returned.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   Returns only the custom medical vocabularies that contain the
    #   specified string. The search is not case sensitive.
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
    #   Lists all custom medical vocabularies that have the status specified
    #   in your request. Custom vocabularies are ordered by creation date,
    #   with the newest vocabulary first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] vocabularies
    #   Provides information about the custom medical vocabularies that
    #   match the criteria specified in your request.
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

    # @!attribute [rw] resource_arn
    #   Returns a list of all tags associated with the specified Amazon
    #   Resource Name (ARN). ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #
    #   For example,
    #   `arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name`.
    #
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
    #   The Amazon Resource Name (ARN) specified in your request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Lists all tags associated with the given transcription job,
    #   vocabulary, model, or resource.
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

    # @!attribute [rw] status
    #   Returns only transcription jobs with the specified status. Jobs are
    #   ordered by creation date, with the newest job first. If you don't
    #   include `Status`, all transcription jobs are returned.
    #   @return [String]
    #
    # @!attribute [rw] job_name_contains
    #   Returns only the transcription jobs that contain the specified
    #   string. The search is not case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If your `ListTranscriptionJobs` request returns more results than
    #   can be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of transcription jobs to return in each page of
    #   results. If there are fewer results than the value that you specify,
    #   only the actual results are returned. If you don't specify a value,
    #   a default of 5 is used.
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
    #   Lists all transcription jobs that have the status specified in your
    #   request. Jobs are ordered by creation date, with the newest job
    #   first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_summaries
    #   Provides a summary of information about each result.
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

    # @!attribute [rw] next_token
    #   If your `ListVocabularies` request returns more results than can be
    #   displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of custom vocabularies to return in each page of
    #   results. If there are fewer results than the value that you specify,
    #   only the actual results are returned. If you don't specify a value,
    #   a default of 5 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] state_equals
    #   Returns only custom vocabularies with the specified state.
    #   Vocabularies are ordered by creation date, with the newest
    #   vocabulary first. If you don't include `StateEquals`, all custom
    #   medical vocabularies are returned.
    #   @return [String]
    #
    # @!attribute [rw] name_contains
    #   Returns only the custom vocabularies that contain the specified
    #   string. The search is not case sensitive.
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
    #   Lists all custom vocabularies that have the status specified in your
    #   request. Vocabularies are ordered by creation date, with the newest
    #   vocabulary first.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] vocabularies
    #   Provides information about the custom vocabularies that match the
    #   criteria specified in your request.
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

    # @!attribute [rw] next_token
    #   If your `ListVocabularyFilters` request returns more results than
    #   can be displayed, `NextToken` is displayed in the response with an
    #   associated string. To get the next page of results, copy this string
    #   and repeat your request, including `NextToken` with the value of the
    #   copied string. Repeat as needed to view all your results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of custom vocabulary filters to return in each
    #   page of results. If there are fewer results than the value that you
    #   specify, only the actual results are returned. If you don't specify
    #   a value, a default of 5 is used.
    #   @return [Integer]
    #
    # @!attribute [rw] name_contains
    #   Returns only the custom vocabulary filters that contain the
    #   specified string. The search is not case sensitive.
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
    #   If `NextToken` is present in your response, it indicates that not
    #   all results are displayed. To view the next set of results, copy the
    #   string associated with the `NextToken` parameter in your results
    #   output, then run your request again including `NextToken` with the
    #   value of the copied string. Repeat as needed to view all your
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filters
    #   Provides information about the custom vocabulary filters that match
    #   the criteria specified in your request.
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

    # Describes the Amazon S3 location of the media file you want to use in
    # your request.
    #
    # For information on supported media formats, refer to the
    # [MediaFormat][1] parameter or the [Media formats][2] section in the
    # Amazon S3 Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/APIReference/API_StartTranscriptionJob.html#transcribe-StartTranscriptionJob-request-MediaFormat
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #
    # @!attribute [rw] media_file_uri
    #   The Amazon S3 location of the media file you want to transcribe. For
    #   example:
    #
    #   * `s3://DOC-EXAMPLE-BUCKET/my-media-file.flac`
    #
    #   * `s3://DOC-EXAMPLE-BUCKET/media-files/my-media-file.flac`
    #
    #   Note that the Amazon S3 bucket that contains your input media must
    #   be located in the same Amazon Web Services Region where you're
    #   making your transcription request.
    #   @return [String]
    #
    # @!attribute [rw] redacted_media_file_uri
    #   The Amazon S3 location of the media file you want to redact. For
    #   example:
    #
    #   * `s3://DOC-EXAMPLE-BUCKET/my-media-file.flac`
    #
    #   * `s3://DOC-EXAMPLE-BUCKET/media-files/my-media-file.flac`
    #
    #   Note that the Amazon S3 bucket that contains your input media must
    #   be located in the same Amazon Web Services Region where you're
    #   making your transcription request.
    #
    #   `RedactedMediaFileUri` produces a redacted audio file in addition to
    #   a redacted transcript. It is only supported for Call Analytics
    #   (`StartCallAnalyticsJob`) transcription requests.
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

    # Provides you with the Amazon S3 URI you can use to access your
    # transcript.
    #
    # @!attribute [rw] transcript_file_uri
    #   The Amazon S3 location of your transcript. You can use this URI to
    #   access or download your transcript.
    #
    #   Note that this is the Amazon S3 location you specified in your
    #   request using the `OutputBucketName` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/MedicalTranscript AWS API Documentation
    #
    class MedicalTranscript < Struct.new(
      :transcript_file_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides detailed information about a medical transcription job.
    #
    # To view the status of the specified medical transcription job, check
    # the `TranscriptionJobStatus` field. If the status is `COMPLETED`, the
    # job is finished and you can find the results at the location specified
    # in `TranscriptFileUri`. If the status is `FAILED`, `FailureReason`
    # provides details on why your transcription job failed.
    #
    # @!attribute [rw] medical_transcription_job_name
    #   The name of the medical transcription job. Job names are case
    #   sensitive and must be unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   Provides the status of the specified medical transcription job.
    #
    #   If the status is `COMPLETED`, the job is finished and you can find
    #   the results at the location specified in `TranscriptFileUri`. If the
    #   status is `FAILED`, `FailureReason` provides details on why your
    #   transcription job failed.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your medical transcription job. US
    #   English (`en-US`) is the only supported language for medical
    #   transcriptions.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in hertz, of the audio track in your input media
    #   file.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The format of the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the Amazon S3 location of the media file you want to use
    #   in your request.
    #
    #   For information on supported media formats, refer to the
    #   [MediaFormat][1] parameter or the [Media formats][2] section in the
    #   Amazon S3 Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/APIReference/API_StartTranscriptionJob.html#transcribe-StartTranscriptionJob-request-MediaFormat
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #   @return [Types::Media]
    #
    # @!attribute [rw] transcript
    #   Provides you with the Amazon S3 URI you can use to access your
    #   transcript.
    #   @return [Types::MedicalTranscript]
    #
    # @!attribute [rw] start_time
    #   The date and time the specified medical transcription job began
    #   processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.789000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The date and time the specified medical transcription job request
    #   was made.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time the specified medical transcription job finished
    #   processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:33:13.922000-07:00` represents a
    #   transcription job that started processing at 12:33 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If `TranscriptionJobStatus` is `FAILED`, `FailureReason` contains
    #   information about why the transcription job request failed.
    #
    #   The `FailureReason` field contains one of the following values:
    #
    #   * `Unsupported media format`.
    #
    #     The media format specified in `MediaFormat` isn't valid. Refer to
    #     **MediaFormat** for a list of supported formats.
    #
    #   * `The media format provided does not match the detected media
    #     format`.
    #
    #     The media format specified in `MediaFormat` doesn't match the
    #     format of the input file. Check the media format of your media
    #     file and correct the specified value.
    #
    #   * `Invalid sample rate for audio file`.
    #
    #     The sample rate specified in `MediaSampleRateHertz` isn't valid.
    #     The sample rate must be between 16,000 and 48,000 hertz.
    #
    #   * `The sample rate provided does not match the detected sample
    #     rate`.
    #
    #     The sample rate specified in `MediaSampleRateHertz` doesn't match
    #     the sample rate detected in your input media file. Check the
    #     sample rate of your media file and correct the specified value.
    #
    #   * `Invalid file size: file size too large`.
    #
    #     The size of your media file is larger than what Amazon Transcribe
    #     can process. For more information, refer to [Guidelines and
    #     quotas][1].
    #
    #   * `Invalid number of channels: number of channels too large`.
    #
    #     Your audio contains more channels than Amazon Transcribe is able
    #     to process. For more information, refer to [Guidelines and
    #     quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Provides information on any additional settings that were included
    #   in your request. Additional settings include channel identification,
    #   alternative transcriptions, speaker partitioning, custom
    #   vocabularies, and custom vocabulary filters.
    #   @return [Types::MedicalTranscriptionSetting]
    #
    # @!attribute [rw] content_identification_type
    #   Indicates whether content identification was enabled for your
    #   transcription request.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   Describes the medical specialty represented in your media.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the input media is a dictation or a conversation,
    #   as specified in the `StartMedicalTranscriptionJob` request.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags, each in the form of a key:value pair, assigned to the
    #   specified medical transcription job.
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

    # Provides detailed information about a specific medical transcription
    # job.
    #
    # @!attribute [rw] medical_transcription_job_name
    #   The name of the medical transcription job. Job names are case
    #   sensitive and must be unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the specified medical transcription job request
    #   was made.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The date and time your medical transcription job began processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.789000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time the specified medical transcription job finished
    #   processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:33:13.922000-07:00` represents a
    #   transcription job that started processing at 12:33 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your medical transcription. US
    #   English (`en-US`) is the only supported language for medical
    #   transcriptions.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   Provides the status of your medical transcription job.
    #
    #   If the status is `COMPLETED`, the job is finished and you can find
    #   the results at the location specified in `TranscriptFileUri`. If the
    #   status is `FAILED`, `FailureReason` provides details on why your
    #   transcription job failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `TranscriptionJobStatus` is `FAILED`, `FailureReason` contains
    #   information about why the transcription job failed. See also:
    #   [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
    #   @return [String]
    #
    # @!attribute [rw] output_location_type
    #   Indicates where the specified medical transcription output is
    #   stored.
    #
    #   If the value is `CUSTOMER_BUCKET`, the location is the Amazon S3
    #   bucket you specified using the `OutputBucketName` parameter in your
    #   request. If you also included `OutputKey` in your request, your
    #   output is located in the path you specified in your request.
    #
    #   If the value is `SERVICE_BUCKET`, the location is a service-managed
    #   Amazon S3 bucket. To access a transcript stored in a service-managed
    #   bucket, use the URI shown in the `TranscriptFileUri` field.
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   Provides the medical specialty represented in your media.
    #   @return [String]
    #
    # @!attribute [rw] content_identification_type
    #   Labels all personal health information (PHI) identified in your
    #   transcript. For more information, see [Identifying personal health
    #   information (PHI) in a transcription][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Indicates whether the input media is a dictation or a conversation,
    #   as specified in the `StartMedicalTranscriptionJob` request.
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

    # Allows additional optional settings in your request, including channel
    # identification, alternative transcriptions, and speaker partitioning.
    # You can use that to apply custom vocabularies to your medical
    # transcription job.
    #
    # @!attribute [rw] show_speaker_labels
    #   Enables speaker partitioning (diarization) in your transcription
    #   output. Speaker partitioning labels the speech from individual
    #   speakers in your media file.
    #
    #   If you enable `ShowSpeakerLabels` in your request, you must also
    #   include `MaxSpeakerLabels`.
    #
    #   You can't include `ShowSpeakerLabels` and `ChannelIdentification`
    #   in the same request. Including both parameters returns a
    #   `BadRequestException`.
    #
    #   For more information, see [Partitioning speakers (diarization)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_speaker_labels
    #   Specify the maximum number of speakers you want to partition in your
    #   media.
    #
    #   Note that if your media contains more speakers than the specified
    #   number, multiple speakers are treated as a single speaker.
    #
    #   If you specify the `MaxSpeakerLabels` field, you must set the
    #   `ShowSpeakerLabels` field to true.
    #   @return [Integer]
    #
    # @!attribute [rw] channel_identification
    #   Enables channel identification in multi-channel audio.
    #
    #   Channel identification transcribes the audio on each channel
    #   independently, then appends the output for each channel into one
    #   transcript.
    #
    #   If you have multi-channel audio and do not enable channel
    #   identification, your audio is transcribed in a continuous manner and
    #   your transcript does not separate the speech by channel.
    #
    #   You can't include both `ShowSpeakerLabels` and
    #   `ChannelIdentification` in the same request. Including both
    #   parameters returns a `BadRequestException`.
    #
    #   For more information, see [Transcribing multi-channel audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html
    #   @return [Boolean]
    #
    # @!attribute [rw] show_alternatives
    #   To include alternative transcriptions within your transcription
    #   output, include `ShowAlternatives` in your transcription request.
    #
    #   If you include `ShowAlternatives`, you must also include
    #   `MaxAlternatives`, which is the maximum number of alternative
    #   transcriptions you want Amazon Transcribe Medical to generate.
    #
    #   For more information, see [Alternative transcriptions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_alternatives
    #   Indicate the maximum number of alternative transcriptions you want
    #   Amazon Transcribe Medical to include in your transcript.
    #
    #   If you select a number greater than the number of alternative
    #   transcriptions generated by Amazon Transcribe Medical, only the
    #   actual number of alternative transcriptions are included.
    #
    #   If you include `MaxAlternatives` in your request, you must also
    #   include `ShowAlternatives` with a value of `true`.
    #
    #   For more information, see [Alternative transcriptions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html
    #   @return [Integer]
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary you want to use when processing
    #   your medical transcription job. Custom vocabulary names are case
    #   sensitive.
    #
    #   The language of the specified custom vocabulary must match the
    #   language code that you specify in your transcription request. If the
    #   languages don't match, the custom vocabulary isn't applied. There
    #   are no errors or warnings associated with a language mismatch. US
    #   English (`en-US`) is the only valid language for Amazon Transcribe
    #   Medical.
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

    # Provides the name of the custom language model that was included in
    # the specified transcription job.
    #
    # Only use `ModelSettings` with the `LanguageModelName` sub-parameter if
    # you're **not** using automatic language identification (`). If using
    # LanguageIdSettings in your request, this parameter contains a
    # LanguageModelName sub-parameter.</p>
    # `
    #
    # @!attribute [rw] language_model_name
    #   The name of the custom language model you want to use when
    #   processing your transcription job. Note that custom language model
    #   names are case sensitive.
    #
    #   The language of the specified custom language model must match the
    #   language code that you specify in your transcription request. If the
    #   languages don't match, the custom language model isn't applied.
    #   There are no errors or warnings associated with a language mismatch.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ModelSettings AWS API Documentation
    #
    class ModelSettings < Struct.new(
      :language_model_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Flag the presence or absence of periods of silence in your Call
    # Analytics transcription output.
    #
    # Rules using `NonTalkTimeFilter` are designed to match:
    #
    # * The presence of silence at specified periods throughout the call
    #
    # * The presence of speech at specified periods throughout the call
    #
    # See [Rule criteria for post-call categories][1] for usage examples.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html#tca-rules-batch
    #
    # @!attribute [rw] threshold
    #   Specify the duration, in milliseconds, of the period of silence that
    #   you want to flag. For example, you can flag a silent period that
    #   lasts 30,000 milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] absolute_time_range
    #   Makes it possible to specify a time range (in milliseconds) in your
    #   audio, during which you want to search for a period of silence. See
    #   for more detail.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   Makes it possible to specify a time range (in percentage) in your
    #   media file, during which you want to search for a period of silence.
    #   See for more detail.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] negate
    #   Set to `TRUE` to flag periods of speech. Set to `FALSE` to flag
    #   periods of silence
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

    # We can't find the requested resource. Check that the specified name
    # is correct and try your request again.
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

    # A time range, in percentage, between two points in your media file.
    #
    # You can use `StartPercentage` and `EndPercentage` to search a custom
    # segment. For example, setting `StartPercentage` to 10 and
    # `EndPercentage` to 50 only searches for your specified criteria in the
    # audio contained between the 10 percent mark and the 50 percent mark of
    # your media file.
    #
    # You can use also `First` to search from the start of the media file
    # until the time that you specify. Or use `Last` to search from the time
    # that you specify until the end of the media file. For example, setting
    # `First` to 10 only searches for your specified criteria in the audio
    # contained in the first 10 percent of the media file.
    #
    # If you prefer to use milliseconds instead of percentage, see .
    #
    # @!attribute [rw] start_percentage
    #   The time, in percentage, when Amazon Transcribe starts searching for
    #   the specified criteria in your media file. If you include
    #   `StartPercentage` in your request, you must also include
    #   `EndPercentage`.
    #   @return [Integer]
    #
    # @!attribute [rw] end_percentage
    #   The time, in percentage, when Amazon Transcribe stops searching for
    #   the specified criteria in your media file. If you include
    #   `EndPercentage` in your request, you must also include
    #   `StartPercentage`.
    #   @return [Integer]
    #
    # @!attribute [rw] first
    #   The time, in percentage, from the start of your media file until the
    #   specified value. Amazon Transcribe searches for your specified
    #   criteria in this time segment.
    #   @return [Integer]
    #
    # @!attribute [rw] last
    #   The time, in percentage, from the specified value until the end of
    #   your media file. Amazon Transcribe searches for your specified
    #   criteria in this time segment.
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

    # A rule is a set of criteria that you can specify to flag an attribute
    # in your Call Analytics output. Rules define a Call Analytics category.
    #
    # Rules can include these parameters: , , , and .
    #
    # To learn more about Call Analytics rules and categories, see [Creating
    # categories for post-call transcriptions][1] and [Creating categories
    # for real-time transcriptions][2].
    #
    # To learn more about Call Analytics, see [Analyzing call center audio
    # with Call Analytics][3].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html
    # [3]: https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html
    #
    # @note Rule is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Rule is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Rule corresponding to the set member.
    #
    # @!attribute [rw] non_talk_time_filter
    #   Flag the presence or absence of periods of silence in your Call
    #   Analytics transcription output. Refer to for more detail.
    #   @return [Types::NonTalkTimeFilter]
    #
    # @!attribute [rw] interruption_filter
    #   Flag the presence or absence of interruptions in your Call Analytics
    #   transcription output. Refer to for more detail.
    #   @return [Types::InterruptionFilter]
    #
    # @!attribute [rw] transcript_filter
    #   Flag the presence or absence of specific words or phrases in your
    #   Call Analytics transcription output. Refer to for more detail.
    #   @return [Types::TranscriptFilter]
    #
    # @!attribute [rw] sentiment_filter
    #   Flag the presence or absence of specific sentiments in your Call
    #   Analytics transcription output. Refer to for more detail.
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

    # Flag the presence or absence of specific sentiments detected in your
    # Call Analytics transcription output.
    #
    # Rules using `SentimentFilter` are designed to match:
    #
    # * The presence or absence of a positive sentiment felt by the
    #   customer, agent, or both at specified points in the call
    #
    # * The presence or absence of a negative sentiment felt by the
    #   customer, agent, or both at specified points in the call
    #
    # * The presence or absence of a neutral sentiment felt by the customer,
    #   agent, or both at specified points in the call
    #
    # * The presence or absence of a mixed sentiment felt by the customer,
    #   the agent, or both at specified points in the call
    #
    # See [Rule criteria for post-call categories][1] for usage examples.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html#tca-rules-batch
    #
    # @!attribute [rw] sentiments
    #   Specify the sentiments that you want to flag.
    #   @return [Array<String>]
    #
    # @!attribute [rw] absolute_time_range
    #   Makes it possible to specify a time range (in milliseconds) in your
    #   audio, during which you want to search for the specified sentiments.
    #   See for more detail.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   Makes it possible to specify a time range (in percentage) in your
    #   media file, during which you want to search for the specified
    #   sentiments. See for more detail.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] participant_role
    #   Specify the participant that you want to flag. Omitting this
    #   parameter is equivalent to specifying both participants.
    #   @return [String]
    #
    # @!attribute [rw] negate
    #   Set to `TRUE` to flag the sentiments that you didn't include in
    #   your request. Set to `FALSE` to flag the sentiments that you
    #   specified in your request.
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

    # Allows additional optional settings in your request, including channel
    # identification, alternative transcriptions, and speaker partitioning.
    # You can use that to apply custom vocabularies to your transcription
    # job.
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary you want to use in your
    #   transcription job request. This name is case sensitive, cannot
    #   contain spaces, and must be unique within an Amazon Web Services
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] show_speaker_labels
    #   Enables speaker partitioning (diarization) in your transcription
    #   output. Speaker partitioning labels the speech from individual
    #   speakers in your media file.
    #
    #   If you enable `ShowSpeakerLabels` in your request, you must also
    #   include `MaxSpeakerLabels`.
    #
    #   You can't include both `ShowSpeakerLabels` and
    #   `ChannelIdentification` in the same request. Including both
    #   parameters returns a `BadRequestException`.
    #
    #   For more information, see [Partitioning speakers (diarization)][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/diarization.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_speaker_labels
    #   Specify the maximum number of speakers you want to partition in your
    #   media.
    #
    #   Note that if your media contains more speakers than the specified
    #   number, multiple speakers are treated as a single speaker.
    #
    #   If you specify the `MaxSpeakerLabels` field, you must set the
    #   `ShowSpeakerLabels` field to true.
    #   @return [Integer]
    #
    # @!attribute [rw] channel_identification
    #   Enables channel identification in multi-channel audio.
    #
    #   Channel identification transcribes the audio on each channel
    #   independently, then appends the output for each channel into one
    #   transcript.
    #
    #   You can't include both `ShowSpeakerLabels` and
    #   `ChannelIdentification` in the same request. Including both
    #   parameters returns a `BadRequestException`.
    #
    #   For more information, see [Transcribing multi-channel audio][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/channel-id.html
    #   @return [Boolean]
    #
    # @!attribute [rw] show_alternatives
    #   To include alternative transcriptions within your transcription
    #   output, include `ShowAlternatives` in your transcription request.
    #
    #   If you have multi-channel audio and do not enable channel
    #   identification, your audio is transcribed in a continuous manner and
    #   your transcript does not separate the speech by channel.
    #
    #   If you include `ShowAlternatives`, you must also include
    #   `MaxAlternatives`, which is the maximum number of alternative
    #   transcriptions you want Amazon Transcribe to generate.
    #
    #   For more information, see [Alternative transcriptions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_alternatives
    #   Indicate the maximum number of alternative transcriptions you want
    #   Amazon Transcribe to include in your transcript.
    #
    #   If you select a number greater than the number of alternative
    #   transcriptions generated by Amazon Transcribe, only the actual
    #   number of alternative transcriptions are included.
    #
    #   If you include `MaxAlternatives` in your request, you must also
    #   include `ShowAlternatives` with a value of `true`.
    #
    #   For more information, see [Alternative transcriptions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-alternatives.html
    #   @return [Integer]
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The name of the custom vocabulary filter you want to use in your
    #   transcription job request. This name is case sensitive, cannot
    #   contain spaces, and must be unique within an Amazon Web Services
    #   account.
    #
    #   Note that if you include `VocabularyFilterName` in your request, you
    #   must also include `VocabularyFilterMethod`.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_filter_method
    #   Specify how you want your custom vocabulary filter applied to your
    #   transcript.
    #
    #   To replace words with `***`, choose `mask`.
    #
    #   To delete words, choose `remove`.
    #
    #   To flag words without changing them, choose `tag`.
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

    # @!attribute [rw] call_analytics_job_name
    #   A unique name, chosen by you, for your Call Analytics job.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   new job with the same name as an existing job, you get a
    #   `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the Amazon S3 location of the media file you want to use
    #   in your Call Analytics request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] output_location
    #   The Amazon S3 location where you want your Call Analytics
    #   transcription output stored. You can use any of the following
    #   formats to specify the output location:
    #
    #   1.  s3://DOC-EXAMPLE-BUCKET
    #
    #   2.  s3://DOC-EXAMPLE-BUCKET/my-output-folder/
    #
    #   3.  s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json
    #
    #   Unless you specify a file name (option 3), the name of your output
    #   file has a default value that matches the name you specified for
    #   your transcription job using the `CallAnalyticsJobName` parameter.
    #
    #   You can specify a KMS key to encrypt your output using the
    #   `OutputEncryptionKMSKeyId` parameter. If you don't specify a KMS
    #   key, Amazon Transcribe uses the default Amazon S3 key for
    #   server-side encryption.
    #
    #   If you don't specify `OutputLocation`, your transcript is placed in
    #   a service-managed Amazon S3 bucket and you are provided with a URI
    #   to access your transcript.
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The KMS key you want to use to encrypt your Call Analytics output.
    #
    #   If using a key located in the **current** Amazon Web Services
    #   account, you can specify your KMS key in one of four ways:
    #
    #   1.  Use the KMS key ID itself. For example,
    #       `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use an alias for the KMS key ID. For example,
    #       `alias/ExampleAlias`.
    #
    #   3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #       example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   4.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If using a key located in a **different** Amazon Web Services
    #   account than the current Amazon Web Services account, you can
    #   specify your KMS key in one of two ways:
    #
    #   1.  Use the ARN for the KMS key ID. For example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If you don't specify an encryption key, your output is encrypted
    #   with the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also
    #   specify an output location using the `OutputLocation` parameter.
    #
    #   Note that the role making the request must have permission to use
    #   the specified KMS key.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files. If
    #   the role that you specify doesn’t have the appropriate permissions
    #   to access the specified Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Specify additional optional settings in your request, including
    #   content redaction; allows you to apply custom language models,
    #   vocabulary filters, and custom vocabularies to your Call Analytics
    #   job.
    #   @return [Types::CallAnalyticsJobSettings]
    #
    # @!attribute [rw] channel_definitions
    #   Makes it possible to specify which speaker is on which channel. For
    #   example, if your agent is the first participant to speak, you would
    #   set `ChannelId` to `0` (to indicate the first channel) and
    #   `ParticipantRole` to `AGENT` (to indicate that it's the agent
    #   speaking).
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
    #   Provides detailed information about the current Call Analytics job,
    #   including job status and, if applicable, failure reason.
    #   @return [Types::CallAnalyticsJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartCallAnalyticsJobResponse AWS API Documentation
    #
    class StartCallAnalyticsJobResponse < Struct.new(
      :call_analytics_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] medical_transcription_job_name
    #   A unique name, chosen by you, for your medical transcription job.
    #   The name that you specify is also used as the default name of your
    #   transcription output file. If you want to specify a different name
    #   for your transcription output, use the `OutputKey` parameter.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   new job with the same name as an existing job, you get a
    #   `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language spoken in the input
    #   media file. US English (`en-US`) is the only valid value for medical
    #   transcription jobs. Any other value you enter for language code
    #   results in a `BadRequestException` error.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in hertz, of the audio track in your input media
    #   file.
    #
    #   If you don't specify the media sample rate, Amazon Transcribe
    #   Medical determines it for you. If you specify the sample rate, it
    #   must match the rate detected by Amazon Transcribe Medical; if
    #   there's a mismatch between the value that you specify and the value
    #   detected, your job fails. Therefore, in most cases, it's advised to
    #   omit `MediaSampleRateHertz` and let Amazon Transcribe Medical
    #   determine the sample rate.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   Specify the format of your input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the Amazon S3 location of the media file you want to use
    #   in your request.
    #
    #   For information on supported media formats, refer to the
    #   [MediaFormat][1] parameter or the [Media formats][2] section in the
    #   Amazon S3 Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/APIReference/API_StartTranscriptionJob.html#transcribe-StartTranscriptionJob-request-MediaFormat
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/how-input.html#how-input-audio
    #   @return [Types::Media]
    #
    # @!attribute [rw] output_bucket_name
    #   The name of the Amazon S3 bucket where you want your medical
    #   transcription output stored. Do not include the `S3://` prefix of
    #   the specified bucket.
    #
    #   If you want your output to go to a sub-folder of this bucket,
    #   specify it using the `OutputKey` parameter; `OutputBucketName` only
    #   accepts the name of a bucket.
    #
    #   For example, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET`. However, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET/test-files/`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET` and `OutputKey` to `test-files/`.
    #
    #   Note that Amazon Transcribe must have permission to use the
    #   specified location. You can change Amazon S3 permissions using the
    #   [Amazon Web Services Management Console][1]. See also [Permissions
    #   Required for IAM User Roles][2].
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/s3
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #   @return [String]
    #
    # @!attribute [rw] output_key
    #   Use in combination with `OutputBucketName` to specify the output
    #   location of your transcript and, optionally, a unique name for your
    #   output file. The default name for your transcription output is the
    #   same as the name you specified for your medical transcription job
    #   (`MedicalTranscriptionJobName`).
    #
    #   Here are some examples of how you can use `OutputKey`:
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName`
    #     and 'my-transcript.json' as the `OutputKey`, your transcription
    #     output path is `s3://DOC-EXAMPLE-BUCKET/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `MedicalTranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'my-transcript' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json`.
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName`
    #     and 'test-files/my-transcript.json' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `MedicalTranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'test-files/my-transcript' as the
    #     `OutputKey`, your transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json`.
    #
    #   If you specify the name of an Amazon S3 bucket sub-folder that
    #   doesn't exist, one is created for you.
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The KMS key you want to use to encrypt your medical transcription
    #   output.
    #
    #   If using a key located in the **current** Amazon Web Services
    #   account, you can specify your KMS key in one of four ways:
    #
    #   1.  Use the KMS key ID itself. For example,
    #       `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use an alias for the KMS key ID. For example,
    #       `alias/ExampleAlias`.
    #
    #   3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #       example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   4.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If using a key located in a **different** Amazon Web Services
    #   account than the current Amazon Web Services account, you can
    #   specify your KMS key in one of two ways:
    #
    #   1.  Use the ARN for the KMS key ID. For example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If you don't specify an encryption key, your output is encrypted
    #   with the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also
    #   specify an output location using the `OutputLocation` parameter.
    #
    #   Note that the role making the request must have permission to use
    #   the specified KMS key.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your
    #   data. For more information, see [KMS encryption context][1] and
    #   [Asymmetric keys in KMS][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] settings
    #   Specify additional optional settings in your request, including
    #   channel identification, alternative transcriptions, and speaker
    #   partitioning. You can use that to apply custom vocabularies to your
    #   transcription job.
    #   @return [Types::MedicalTranscriptionSetting]
    #
    # @!attribute [rw] content_identification_type
    #   Labels all personal health information (PHI) identified in your
    #   transcript. For more information, see [Identifying personal health
    #   information (PHI) in a transcription][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html
    #   @return [String]
    #
    # @!attribute [rw] specialty
    #   Specify the predominant medical specialty represented in your media.
    #   For batch transcriptions, `PRIMARYCARE` is the only valid value. If
    #   you require additional specialties, refer to .
    #   @return [String]
    #
    # @!attribute [rw] type
    #   Specify whether your input media contains only one person
    #   (`DICTATION`) or contains a conversation between two people
    #   (`CONVERSATION`).
    #
    #   For example, `DICTATION` could be used for a medical professional
    #   wanting to transcribe voice memos; `CONVERSATION` could be used for
    #   transcribing the doctor-patient dialogue during the patient's
    #   office visit.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more custom tags, each in the form of a key:value pair,
    #   to a new medical transcription job at the time you start this new
    #   job.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
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
    #   Provides detailed information about the current medical
    #   transcription job, including job status and, if applicable, failure
    #   reason.
    #   @return [Types::MedicalTranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartMedicalTranscriptionJobResponse AWS API Documentation
    #
    class StartMedicalTranscriptionJobResponse < Struct.new(
      :medical_transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transcription_job_name
    #   A unique name, chosen by you, for your transcription job. The name
    #   that you specify is also used as the default name of your
    #   transcription output file. If you want to specify a different name
    #   for your transcription output, use the `OutputKey` parameter.
    #
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account. If you try to create a
    #   new job with the same name as an existing job, you get a
    #   `ConflictException` error.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language spoken in the input
    #   media file.
    #
    #   If you're unsure of the language spoken in your media file,
    #   consider using `IdentifyLanguage` or `IdentifyMultipleLanguages` to
    #   enable automatic language identification.
    #
    #   Note that you must include one of `LanguageCode`,
    #   `IdentifyLanguage`, or `IdentifyMultipleLanguages` in your request.
    #   If you include more than one of these parameters, your transcription
    #   job fails.
    #
    #   For a list of supported languages and their associated language
    #   codes, refer to the [Supported languages][1] table.
    #
    #   <note markdown="1"> To transcribe speech in Modern Standard Arabic (`ar-SA`), your media
    #   file must be encoded at a sample rate of 16,000 Hz or higher.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in hertz, of the audio track in your input media
    #   file.
    #
    #   If you don't specify the media sample rate, Amazon Transcribe
    #   determines it for you. If you specify the sample rate, it must match
    #   the rate detected by Amazon Transcribe. If there's a mismatch
    #   between the value that you specify and the value detected, your job
    #   fails. In most cases, you can omit `MediaSampleRateHertz` and let
    #   Amazon Transcribe determine the sample rate.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   Specify the format of your input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Describes the Amazon S3 location of the media file you want to use
    #   in your request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] output_bucket_name
    #   The name of the Amazon S3 bucket where you want your transcription
    #   output stored. Do not include the `S3://` prefix of the specified
    #   bucket.
    #
    #   If you want your output to go to a sub-folder of this bucket,
    #   specify it using the `OutputKey` parameter; `OutputBucketName` only
    #   accepts the name of a bucket.
    #
    #   For example, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET`. However, if you want your output stored in
    #   `S3://DOC-EXAMPLE-BUCKET/test-files/`, set `OutputBucketName` to
    #   `DOC-EXAMPLE-BUCKET` and `OutputKey` to `test-files/`.
    #
    #   Note that Amazon Transcribe must have permission to use the
    #   specified location. You can change Amazon S3 permissions using the
    #   [Amazon Web Services Management Console][1]. See also [Permissions
    #   Required for IAM User Roles][2].
    #
    #   If you don't specify `OutputBucketName`, your transcript is placed
    #   in a service-managed Amazon S3 bucket and you are provided with a
    #   URI to access your transcript.
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/s3
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user
    #   @return [String]
    #
    # @!attribute [rw] output_key
    #   Use in combination with `OutputBucketName` to specify the output
    #   location of your transcript and, optionally, a unique name for your
    #   output file. The default name for your transcription output is the
    #   same as the name you specified for your transcription job
    #   (`TranscriptionJobName`).
    #
    #   Here are some examples of how you can use `OutputKey`:
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName`
    #     and 'my-transcript.json' as the `OutputKey`, your transcription
    #     output path is `s3://DOC-EXAMPLE-BUCKET/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `TranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'my-transcript' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json`.
    #
    #   * If you specify 'DOC-EXAMPLE-BUCKET' as the `OutputBucketName`
    #     and 'test-files/my-transcript.json' as the `OutputKey`, your
    #     transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json`.
    #
    #   * If you specify 'my-first-transcription' as the
    #     `TranscriptionJobName`, 'DOC-EXAMPLE-BUCKET' as the
    #     `OutputBucketName`, and 'test-files/my-transcript' as the
    #     `OutputKey`, your transcription output path is
    #     `s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json`.
    #
    #   If you specify the name of an Amazon S3 bucket sub-folder that
    #   doesn't exist, one is created for you.
    #   @return [String]
    #
    # @!attribute [rw] output_encryption_kms_key_id
    #   The KMS key you want to use to encrypt your transcription output.
    #
    #   If using a key located in the **current** Amazon Web Services
    #   account, you can specify your KMS key in one of four ways:
    #
    #   1.  Use the KMS key ID itself. For example,
    #       `1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use an alias for the KMS key ID. For example,
    #       `alias/ExampleAlias`.
    #
    #   3.  Use the Amazon Resource Name (ARN) for the KMS key ID. For
    #       example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   4.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If using a key located in a **different** Amazon Web Services
    #   account than the current Amazon Web Services account, you can
    #   specify your KMS key in one of two ways:
    #
    #   1.  Use the ARN for the KMS key ID. For example,
    #       `arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab`.
    #
    #   2.  Use the ARN for the KMS key alias. For example,
    #       `arn:aws:kms:region:account-ID:alias/ExampleAlias`.
    #
    #   If you don't specify an encryption key, your output is encrypted
    #   with the default Amazon S3 key (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also
    #   specify an output location using the `OutputLocation` parameter.
    #
    #   Note that the role making the request must have permission to use
    #   the specified KMS key.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   A map of plain text, non-secret key:value pairs, known as encryption
    #   context pairs, that provide an added layer of security for your
    #   data. For more information, see [KMS encryption context][1] and
    #   [Asymmetric keys in KMS][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/key-management.html#kms-context
    #   [2]: https://docs.aws.amazon.com/transcribe/latest/dg/symmetric-asymmetric.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] settings
    #   Specify additional optional settings in your request, including
    #   channel identification, alternative transcriptions, speaker
    #   partitioning. You can use that to apply custom vocabularies and
    #   vocabulary filters.
    #
    #   If you want to include a custom vocabulary or a custom vocabulary
    #   filter (or both) with your request but **do not** want to use
    #   automatic language identification, use `Settings` with the
    #   `VocabularyName` or `VocabularyFilterName` (or both) sub-parameter.
    #
    #   If you're using automatic language identification with your request
    #   and want to include a custom language model, a custom vocabulary, or
    #   a custom vocabulary filter, use instead the ` parameter with the
    #   LanguageModelName, VocabularyName or VocabularyFilterName
    #   sub-parameters.</p>
    #   `
    #   @return [Types::Settings]
    #
    # @!attribute [rw] model_settings
    #   Specify the custom language model you want to include with your
    #   transcription job. If you include `ModelSettings` in your request,
    #   you must include the `LanguageModelName` sub-parameter.
    #
    #   For more information, see [Custom language models][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html
    #   @return [Types::ModelSettings]
    #
    # @!attribute [rw] job_execution_settings
    #   Makes it possible to control how your transcription job is
    #   processed. Currently, the only `JobExecutionSettings` modification
    #   you can choose is enabling job queueing using the
    #   `AllowDeferredExecution` sub-parameter.
    #
    #   If you include `JobExecutionSettings` in your request, you must also
    #   include the sub-parameters: `AllowDeferredExecution` and
    #   `DataAccessRoleArn`.
    #   @return [Types::JobExecutionSettings]
    #
    # @!attribute [rw] content_redaction
    #   Makes it possible to redact or flag specified personally
    #   identifiable information (PII) in your transcript. If you use
    #   `ContentRedaction`, you must also include the sub-parameters:
    #   `PiiEntityTypes`, `RedactionOutput`, and `RedactionType`.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] identify_language
    #   Enables automatic language identification in your transcription job
    #   request. Use this parameter if your media file contains only one
    #   language. If your media contains multiple languages, use
    #   `IdentifyMultipleLanguages` instead.
    #
    #   If you include `IdentifyLanguage`, you can optionally include a list
    #   of language codes, using `LanguageOptions`, that you think may be
    #   present in your media file. Including `LanguageOptions` restricts
    #   `IdentifyLanguage` to only the language options that you specify,
    #   which can improve transcription accuracy.
    #
    #   If you want to apply a custom language model, a custom vocabulary,
    #   or a custom vocabulary filter to your automatic language
    #   identification request, include `LanguageIdSettings` with the
    #   relevant sub-parameters (`VocabularyName`, `LanguageModelName`, and
    #   `VocabularyFilterName`). If you include `LanguageIdSettings`, also
    #   include `LanguageOptions`.
    #
    #   Note that you must include one of `LanguageCode`,
    #   `IdentifyLanguage`, or `IdentifyMultipleLanguages` in your request.
    #   If you include more than one of these parameters, your transcription
    #   job fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] identify_multiple_languages
    #   Enables automatic multi-language identification in your
    #   transcription job request. Use this parameter if your media file
    #   contains more than one language. If your media contains only one
    #   language, use `IdentifyLanguage` instead.
    #
    #   If you include `IdentifyMultipleLanguages`, you can optionally
    #   include a list of language codes, using `LanguageOptions`, that you
    #   think may be present in your media file. Including `LanguageOptions`
    #   restricts `IdentifyLanguage` to only the language options that you
    #   specify, which can improve transcription accuracy.
    #
    #   If you want to apply a custom vocabulary or a custom vocabulary
    #   filter to your automatic language identification request, include
    #   `LanguageIdSettings` with the relevant sub-parameters
    #   (`VocabularyName` and `VocabularyFilterName`). If you include
    #   `LanguageIdSettings`, also include `LanguageOptions`.
    #
    #   Note that you must include one of `LanguageCode`,
    #   `IdentifyLanguage`, or `IdentifyMultipleLanguages` in your request.
    #   If you include more than one of these parameters, your transcription
    #   job fails.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   You can specify two or more language codes that represent the
    #   languages you think may be present in your media. Including more
    #   than five is not recommended. If you're unsure what languages are
    #   present, do not include this parameter.
    #
    #   If you include `LanguageOptions` in your request, you must also
    #   include `IdentifyLanguage`.
    #
    #   For more information, refer to [Supported languages][1].
    #
    #   To transcribe speech in Modern Standard Arabic (`ar-SA`), your media
    #   file must be encoded at a sample rate of 16,000 Hz or higher.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] subtitles
    #   Produces subtitle files for your input media. You can specify WebVTT
    #   (*.vtt) and SubRip (*.srt) formats.
    #   @return [Types::Subtitles]
    #
    # @!attribute [rw] tags
    #   Adds one or more custom tags, each in the form of a key:value pair,
    #   to a new transcription job at the time you start this new job.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] language_id_settings
    #   If using automatic language identification in your request and you
    #   want to apply a custom language model, a custom vocabulary, or a
    #   custom vocabulary filter, include `LanguageIdSettings` with the
    #   relevant sub-parameters (`VocabularyName`, `LanguageModelName`, and
    #   `VocabularyFilterName`). Note that multi-language identification
    #   (`IdentifyMultipleLanguages`) doesn't support custom language
    #   models.
    #
    #   `LanguageIdSettings` supports two to five language codes. Each
    #   language code you include can have an associated custom language
    #   model, custom vocabulary, and custom vocabulary filter. The language
    #   codes that you specify must match the languages of the associated
    #   custom language models, custom vocabularies, and custom vocabulary
    #   filters.
    #
    #   It's recommended that you include `LanguageOptions` when using
    #   `LanguageIdSettings` to ensure that the correct language dialect is
    #   identified. For example, if you specify a custom vocabulary that is
    #   in `en-US` but Amazon Transcribe determines that the language spoken
    #   in your media is `en-AU`, your custom vocabulary *is not* applied to
    #   your transcription. If you include `LanguageOptions` and include
    #   `en-US` as the only English language dialect, your custom vocabulary
    #   *is* applied to your transcription.
    #
    #   If you want to include a custom language model with your request but
    #   **do not** want to use automatic language identification, use
    #   instead the ` parameter with the LanguageModelName sub-parameter. If
    #   you want to include a custom vocabulary or a custom vocabulary
    #   filter (or both) with your request but do not want to use automatic
    #   language identification, use instead the  parameter with the
    #   VocabularyName or VocabularyFilterName (or both) sub-parameter.</p>
    #   `
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
      :identify_multiple_languages,
      :language_options,
      :subtitles,
      :tags,
      :language_id_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] transcription_job
    #   Provides detailed information about the current transcription job,
    #   including job status and, if applicable, failure reason.
    #   @return [Types::TranscriptionJob]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJobResponse AWS API Documentation
    #
    class StartTranscriptionJobResponse < Struct.new(
      :transcription_job)
      SENSITIVE = []
      include Aws::Structure
    end

    # Generate subtitles for your media file with your transcription
    # request.
    #
    # You can choose a start index of 0 or 1, and you can specify either
    # WebVTT or SubRip (or both) as your output format.
    #
    # Note that your subtitle files are placed in the same location as your
    # transcription output.
    #
    # @!attribute [rw] formats
    #   Specify the output format for your subtitle file; if you select both
    #   WebVTT (`vtt`) and SubRip (`srt`) formats, two output files are
    #   generated.
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_start_index
    #   Specify the starting value that is assigned to the first subtitle
    #   segment.
    #
    #   The default start index for Amazon Transcribe is `0`, which differs
    #   from the more widely used standard of `1`. If you're uncertain
    #   which value to use, we recommend choosing `1`, as this may improve
    #   compatibility with other services.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Subtitles AWS API Documentation
    #
    class Subtitles < Struct.new(
      :formats,
      :output_start_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about your subtitle file, including format, start
    # index, and Amazon S3 location.
    #
    # @!attribute [rw] formats
    #   Provides the format of your subtitle files. If your request included
    #   both WebVTT (`vtt`) and SubRip (`srt`) formats, both formats are
    #   shown.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subtitle_file_uris
    #   The Amazon S3 location of your transcript. You can use this URI to
    #   access or download your subtitle file. Your subtitle file is stored
    #   in the same location as your transcript. If you specified both
    #   WebVTT and SubRip subtitle formats, two URIs are provided.
    #
    #   If you included `OutputBucketName` in your transcription job
    #   request, this is the URI of that bucket. If you also included
    #   `OutputKey` in your request, your output is located in the path you
    #   specified in your request.
    #
    #   If you didn't include `OutputBucketName` in your transcription job
    #   request, your subtitle file is stored in a service-managed bucket,
    #   and `TranscriptFileUri` provides you with a temporary URI you can
    #   use for secure access to your subtitle file.
    #
    #   <note markdown="1"> Temporary URIs for service-managed Amazon S3 buckets are only valid
    #   for 15 minutes. If you get an `AccesDenied` error, you can get a new
    #   temporary URI by running a `GetTranscriptionJob` or
    #   `ListTranscriptionJob` request.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] output_start_index
    #   Provides the start index value for your subtitle files. If you did
    #   not specify a value in your request, the default value of `0` is
    #   used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/SubtitlesOutput AWS API Documentation
    #
    class SubtitlesOutput < Struct.new(
      :formats,
      :subtitle_file_uris,
      :output_start_index)
      SENSITIVE = []
      include Aws::Structure
    end

    # Adds metadata, in the form of a key:value pair, to the specified
    # resource.
    #
    # For example, you could add the tag `Department:Sales` to a resource to
    # indicate that it pertains to your organization's sales department.
    # You can also use tags for tag-based access control.
    #
    # To learn more about tagging, see [Tagging resources][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
    #
    # @!attribute [rw] key
    #   The first part of a key:value pair that forms a tag associated with
    #   a given resource. For example, in the tag `Department:Sales`, the
    #   key is 'Department'.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The second part of a key:value pair that forms a tag associated with
    #   a given resource. For example, in the tag `Department:Sales`, the
    #   value is 'Sales'.
    #
    #   Note that you can set the value of a tag to an empty string, but you
    #   can't set the value of a tag to null. Omitting the tag value is the
    #   same as using an empty string.
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource you want to tag. ARNs
    #   have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #
    #   For example,
    #   `arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name`.
    #
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Adds one or more custom tags, each in the form of a key:value pair,
    #   to the specified resource.
    #
    #   To learn more about using tags with Amazon Transcribe, refer to
    #   [Tagging resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html
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

    # Provides you with the Amazon S3 URI you can use to access your
    # transcript.
    #
    # @!attribute [rw] transcript_file_uri
    #   The Amazon S3 location of your transcript. You can use this URI to
    #   access or download your transcript.
    #
    #   If you included `OutputBucketName` in your transcription job
    #   request, this is the URI of that bucket. If you also included
    #   `OutputKey` in your request, your output is located in the path you
    #   specified in your request.
    #
    #   If you didn't include `OutputBucketName` in your transcription job
    #   request, your transcript is stored in a service-managed bucket, and
    #   `TranscriptFileUri` provides you with a temporary URI you can use
    #   for secure access to your transcript.
    #
    #   <note markdown="1"> Temporary URIs for service-managed Amazon S3 buckets are only valid
    #   for 15 minutes. If you get an `AccesDenied` error, you can get a new
    #   temporary URI by running a `GetTranscriptionJob` or
    #   `ListTranscriptionJob` request.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] redacted_transcript_file_uri
    #   The Amazon S3 location of your redacted transcript. You can use this
    #   URI to access or download your transcript.
    #
    #   If you included `OutputBucketName` in your transcription job
    #   request, this is the URI of that bucket. If you also included
    #   `OutputKey` in your request, your output is located in the path you
    #   specified in your request.
    #
    #   If you didn't include `OutputBucketName` in your transcription job
    #   request, your transcript is stored in a service-managed bucket, and
    #   `RedactedTranscriptFileUri` provides you with a temporary URI you
    #   can use for secure access to your transcript.
    #
    #   <note markdown="1"> Temporary URIs for service-managed Amazon S3 buckets are only valid
    #   for 15 minutes. If you get an `AccesDenied` error, you can get a new
    #   temporary URI by running a `GetTranscriptionJob` or
    #   `ListTranscriptionJob` request.
    #
    #    </note>
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

    # Flag the presence or absence of specific words or phrases detected in
    # your Call Analytics transcription output.
    #
    # Rules using `TranscriptFilter` are designed to match:
    #
    # * Custom words or phrases spoken by the agent, the customer, or both
    #
    # * Custom words or phrases **not** spoken by the agent, the customer,
    #   or either
    #
    # * Custom words or phrases that occur at a specific time frame
    #
    # See [Rule criteria for post-call categories][1] and [Rule criteria for
    # streaming categories][2] for usage examples.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html#tca-rules-batch
    # [2]: https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html#tca-rules-stream
    #
    # @!attribute [rw] transcript_filter_type
    #   Flag the presence or absence of an exact match to the phrases that
    #   you specify. For example, if you specify the phrase "speak to a
    #   manager" as your `Targets` value, only that exact phrase is
    #   flagged.
    #
    #   Note that semantic matching is not supported. For example, if your
    #   customer says "speak to *the* manager", instead of "speak to *a*
    #   manager", your content is not flagged.
    #   @return [String]
    #
    # @!attribute [rw] absolute_time_range
    #   Makes it possible to specify a time range (in milliseconds) in your
    #   audio, during which you want to search for the specified key words
    #   or phrases. See for more detail.
    #   @return [Types::AbsoluteTimeRange]
    #
    # @!attribute [rw] relative_time_range
    #   Makes it possible to specify a time range (in percentage) in your
    #   media file, during which you want to search for the specified key
    #   words or phrases. See for more detail.
    #   @return [Types::RelativeTimeRange]
    #
    # @!attribute [rw] participant_role
    #   Specify the participant that you want to flag. Omitting this
    #   parameter is equivalent to specifying both participants.
    #   @return [String]
    #
    # @!attribute [rw] negate
    #   Set to `TRUE` to flag the absence of the phrase that you specified
    #   in your request. Set to `FALSE` to flag the presence of the phrase
    #   that you specified in your request.
    #   @return [Boolean]
    #
    # @!attribute [rw] targets
    #   Specify the phrases that you want to flag.
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

    # Provides detailed information about a transcription job.
    #
    # To view the status of the specified transcription job, check the
    # `TranscriptionJobStatus` field. If the status is `COMPLETED`, the job
    # is finished and you can find the results at the location specified in
    # `TranscriptFileUri`. If the status is `FAILED`, `FailureReason`
    # provides details on why your transcription job failed.
    #
    # If you enabled content redaction, the redacted transcript can be found
    # at the location specified in `RedactedTranscriptFileUri`.
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job. Job names are case sensitive and
    #   must be unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   Provides the status of the specified transcription job.
    #
    #   If the status is `COMPLETED`, the job is finished and you can find
    #   the results at the location specified in `TranscriptFileUri` (or
    #   `RedactedTranscriptFileUri`, if you requested transcript redaction).
    #   If the status is `FAILED`, `FailureReason` provides details on why
    #   your transcription job failed.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your transcription job. This
    #   parameter is used with single-language identification. For
    #   multi-language identification requests, refer to the plural version
    #   of this parameter, `LanguageCodes`.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in hertz, of the audio track in your input media
    #   file.
    #   @return [Integer]
    #
    # @!attribute [rw] media_format
    #   The format of the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media
    #   Provides the Amazon S3 location of the media file you used in your
    #   request.
    #   @return [Types::Media]
    #
    # @!attribute [rw] transcript
    #   Provides you with the Amazon S3 URI you can use to access your
    #   transcript.
    #   @return [Types::Transcript]
    #
    # @!attribute [rw] start_time
    #   The date and time the specified transcription job began processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.789000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time
    #   The date and time the specified transcription job request was made.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time the specified transcription job finished
    #   processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:33:13.922000-07:00` represents a
    #   transcription job that started processing at 12:33 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   If `TranscriptionJobStatus` is `FAILED`, `FailureReason` contains
    #   information about why the transcription job request failed.
    #
    #   The `FailureReason` field contains one of the following values:
    #
    #   * `Unsupported media format`.
    #
    #     The media format specified in `MediaFormat` isn't valid. Refer to
    #     **MediaFormat** for a list of supported formats.
    #
    #   * `The media format provided does not match the detected media
    #     format`.
    #
    #     The media format specified in `MediaFormat` doesn't match the
    #     format of the input file. Check the media format of your media
    #     file and correct the specified value.
    #
    #   * `Invalid sample rate for audio file`.
    #
    #     The sample rate specified in `MediaSampleRateHertz` isn't valid.
    #     The sample rate must be between 8,000 and 48,000 hertz.
    #
    #   * `The sample rate provided does not match the detected sample
    #     rate`.
    #
    #     The sample rate specified in `MediaSampleRateHertz` doesn't match
    #     the sample rate detected in your input media file. Check the
    #     sample rate of your media file and correct the specified value.
    #
    #   * `Invalid file size: file size too large`.
    #
    #     The size of your media file is larger than what Amazon Transcribe
    #     can process. For more information, refer to [Guidelines and
    #     quotas][1].
    #
    #   * `Invalid number of channels: number of channels too large`.
    #
    #     Your audio contains more channels than Amazon Transcribe is able
    #     to process. For more information, refer to [Guidelines and
    #     quotas][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/limits-guidelines.html#limits
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Provides information on any additional settings that were included
    #   in your request. Additional settings include channel identification,
    #   alternative transcriptions, speaker partitioning, custom
    #   vocabularies, and custom vocabulary filters.
    #   @return [Types::Settings]
    #
    # @!attribute [rw] model_settings
    #   Provides information on the custom language model you included in
    #   your request.
    #   @return [Types::ModelSettings]
    #
    # @!attribute [rw] job_execution_settings
    #   Provides information about how your transcription job was processed.
    #   This parameter shows if your request was queued and what data access
    #   role was used.
    #   @return [Types::JobExecutionSettings]
    #
    # @!attribute [rw] content_redaction
    #   Indicates whether redaction was enabled in your transcript.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] identify_language
    #   Indicates whether automatic language identification was enabled
    #   (`TRUE`) for the specified transcription job.
    #   @return [Boolean]
    #
    # @!attribute [rw] identify_multiple_languages
    #   Indicates whether automatic multi-language identification was
    #   enabled (`TRUE`) for the specified transcription job.
    #   @return [Boolean]
    #
    # @!attribute [rw] language_options
    #   Provides the language codes you specified in your request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] identified_language_score
    #   The confidence score associated with the language identified in your
    #   media file.
    #
    #   Confidence scores are values between 0 and 1; a larger value
    #   indicates a higher probability that the identified language
    #   correctly matches the language spoken in your media.
    #   @return [Float]
    #
    # @!attribute [rw] language_codes
    #   The language codes used to create your transcription job. This
    #   parameter is used with multi-language identification. For
    #   single-language identification requests, refer to the singular
    #   version of this parameter, `LanguageCode`.
    #   @return [Array<Types::LanguageCodeItem>]
    #
    # @!attribute [rw] tags
    #   The tags, each in the form of a key:value pair, assigned to the
    #   specified transcription job.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] subtitles
    #   Indicates whether subtitles were generated with your transcription.
    #   @return [Types::SubtitlesOutput]
    #
    # @!attribute [rw] language_id_settings
    #   Provides the name and language of all custom language models, custom
    #   vocabularies, and custom vocabulary filters that you included in
    #   your request.
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
      :identify_multiple_languages,
      :language_options,
      :identified_language_score,
      :language_codes,
      :tags,
      :subtitles,
      :language_id_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides detailed information about a specific transcription job.
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job. Job names are case sensitive and
    #   must be unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the specified transcription job request was made.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   The date and time your transcription job began processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.789000-07:00` represents a
    #   transcription job that started processing at 12:32 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] completion_time
    #   The date and time the specified transcription job finished
    #   processing.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:33:13.922000-07:00` represents a
    #   transcription job that started processing at 12:33 PM UTC-7 on May
    #   4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your transcription.
    #   @return [String]
    #
    # @!attribute [rw] transcription_job_status
    #   Provides the status of your transcription job.
    #
    #   If the status is `COMPLETED`, the job is finished and you can find
    #   the results at the location specified in `TranscriptFileUri` (or
    #   `RedactedTranscriptFileUri`, if you requested transcript redaction).
    #   If the status is `FAILED`, `FailureReason` provides details on why
    #   your transcription job failed.
    #   @return [String]
    #
    # @!attribute [rw] failure_reason
    #   If `TranscriptionJobStatus` is `FAILED`, `FailureReason` contains
    #   information about why the transcription job failed. See also:
    #   [Common Errors][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/APIReference/CommonErrors.html
    #   @return [String]
    #
    # @!attribute [rw] output_location_type
    #   Indicates where the specified transcription output is stored.
    #
    #   If the value is `CUSTOMER_BUCKET`, the location is the Amazon S3
    #   bucket you specified using the `OutputBucketName` parameter in your
    #   request. If you also included `OutputKey` in your request, your
    #   output is located in the path you specified in your request.
    #
    #   If the value is `SERVICE_BUCKET`, the location is a service-managed
    #   Amazon S3 bucket. To access a transcript stored in a service-managed
    #   bucket, use the URI shown in the `TranscriptFileUri` or
    #   `RedactedTranscriptFileUri` field.
    #   @return [String]
    #
    # @!attribute [rw] content_redaction
    #   The content redaction settings of the transcription job.
    #   @return [Types::ContentRedaction]
    #
    # @!attribute [rw] model_settings
    #   Provides the name of the custom language model that was included in
    #   the specified transcription job.
    #
    #   Only use `ModelSettings` with the `LanguageModelName` sub-parameter
    #   if you're **not** using automatic language identification (`). If
    #   using LanguageIdSettings in your request, this parameter contains a
    #   LanguageModelName sub-parameter.</p>
    #   `
    #   @return [Types::ModelSettings]
    #
    # @!attribute [rw] identify_language
    #   Indicates whether automatic language identification was enabled
    #   (`TRUE`) for the specified transcription job.
    #   @return [Boolean]
    #
    # @!attribute [rw] identify_multiple_languages
    #   Indicates whether automatic multi-language identification was
    #   enabled (`TRUE`) for the specified transcription job.
    #   @return [Boolean]
    #
    # @!attribute [rw] identified_language_score
    #   The confidence score associated with the language identified in your
    #   media file.
    #
    #   Confidence scores are values between 0 and 1; a larger value
    #   indicates a higher probability that the identified language
    #   correctly matches the language spoken in your media.
    #   @return [Float]
    #
    # @!attribute [rw] language_codes
    #   The language codes used to create your transcription job. This
    #   parameter is used with multi-language identification. For
    #   single-language identification, the singular version of this
    #   parameter, `LanguageCode`, is present.
    #   @return [Array<Types::LanguageCodeItem>]
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
      :identify_multiple_languages,
      :identified_language_score,
      :language_codes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Transcribe resource you
    #   want to remove tags from. ARNs have the format
    #   `arn:partition:service:region:account-id:resource-type/resource-id`.
    #
    #   For example,
    #   `arn:aws:transcribe:us-west-2:111122223333:transcription-job/transcription-job-name`.
    #
    #   Valid values for `resource-type` are: `transcription-job`,
    #   `medical-transcription-job`, `vocabulary`, `medical-vocabulary`,
    #   `vocabulary-filter`, and `language-model`.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Removes the specified tag keys from the specified Amazon Transcribe
    #   resource.
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

    # @!attribute [rw] category_name
    #   The name of the Call Analytics category you want to update. Category
    #   names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The rules used for the updated Call Analytics category. The rules
    #   you provide in this field replace the ones that are currently being
    #   used in the specified category.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] input_type
    #   Choose whether you want to update a real-time or a post-call
    #   category. The input type you specify must match the input type
    #   specified when the category was created. For example, if you created
    #   a category with the `POST_CALL` input type, you must use `POST_CALL`
    #   as the input type when updating this category.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateCallAnalyticsCategoryRequest AWS API Documentation
    #
    class UpdateCallAnalyticsCategoryRequest < Struct.new(
      :category_name,
      :rules,
      :input_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] category_properties
    #   Provides you with the properties of the Call Analytics category you
    #   specified in your `UpdateCallAnalyticsCategory` request.
    #   @return [Types::CategoryProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateCallAnalyticsCategoryResponse AWS API Documentation
    #
    class UpdateCallAnalyticsCategoryResponse < Struct.new(
      :category_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the custom medical vocabulary you want to update. Custom
    #   medical vocabulary names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language of the entries in the
    #   custom vocabulary you want to update. US English (`en-US`) is the
    #   only language supported with Amazon Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   medical vocabulary. The URI must be located in the same Amazon Web
    #   Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
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
    #   The name of the updated custom medical vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom medical vocabulary.
    #   US English (`en-US`) is the only language supported with Amazon
    #   Transcribe Medical.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom medical vocabulary was last
    #   updated.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom medical vocabulary. If the state
    #   is `READY`, you can use the custom vocabulary in a
    #   `StartMedicalTranscriptionJob` request.
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

    # @!attribute [rw] vocabulary_filter_name
    #   The name of the custom vocabulary filter you want to update. Custom
    #   vocabulary filter names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] words
    #   Use this parameter if you want to update your custom vocabulary
    #   filter by including all desired terms, as comma-separated values,
    #   within your request. The other option for updating your vocabulary
    #   filter is to save your entries in a text file and upload them to an
    #   Amazon S3 bucket, then specify the location of your file using the
    #   `VocabularyFilterFileUri` parameter.
    #
    #   Note that if you include `Words` in your request, you cannot use
    #   `VocabularyFilterFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed
    #   characters for that specific language. If you use unsupported
    #   characters, your custom vocabulary filter request fails. Refer to
    #   [Character Sets for Custom Vocabularies][1] to get the character set
    #   for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_filter_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary filter terms. The URI must be located in the same Amazon
    #   Web Services Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-filter-file.txt`
    #
    #   Note that if you include `VocabularyFilterFileUri` in your request,
    #   you cannot use `Words`; you must choose one or the other.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files (in
    #   this case, your custom vocabulary filter). If the role that you
    #   specify doesn’t have the appropriate permissions to access the
    #   specified Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyFilterRequest AWS API Documentation
    #
    class UpdateVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name,
      :words,
      :vocabulary_filter_file_uri,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_filter_name
    #   The name of the updated custom vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom vocabulary filter.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom vocabulary filter was last
    #   updated.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
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

    # @!attribute [rw] vocabulary_name
    #   The name of the custom vocabulary you want to update. Custom
    #   vocabulary names are case sensitive.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language of the entries in the
    #   custom vocabulary you want to update. Each custom vocabulary must
    #   contain terms in only one language.
    #
    #   A custom vocabulary can only be used to transcribe files in the same
    #   language as the custom vocabulary. For example, if you create a
    #   custom vocabulary using US English (`en-US`), you can only apply
    #   this custom vocabulary to files that contain English audio.
    #
    #   For a list of supported languages and their associated language
    #   codes, refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] phrases
    #   Use this parameter if you want to update your custom vocabulary by
    #   including all desired terms, as comma-separated values, within your
    #   request. The other option for updating your custom vocabulary is to
    #   save your entries in a text file and upload them to an Amazon S3
    #   bucket, then specify the location of your file using the
    #   `VocabularyFileUri` parameter.
    #
    #   Note that if you include `Phrases` in your request, you cannot use
    #   `VocabularyFileUri`; you must choose one or the other.
    #
    #   Each language has a character set that contains all allowed
    #   characters for that specific language. If you use unsupported
    #   characters, your custom vocabulary filter request fails. Refer to
    #   [Character Sets for Custom Vocabularies][1] to get the character set
    #   for your language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The Amazon S3 location of the text file that contains your custom
    #   vocabulary. The URI must be located in the same Amazon Web Services
    #   Region as the resource you're calling.
    #
    #   Here's an example URI path:
    #   `s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt`
    #
    #   Note that if you include `VocabularyFileUri` in your request, you
    #   cannot use the `Phrases` flag; you must choose one or the other.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that has permissions
    #   to access the Amazon S3 bucket that contains your input files (in
    #   this case, your custom vocabulary). If the role that you specify
    #   doesn’t have the appropriate permissions to access the specified
    #   Amazon S3 location, your request fails.
    #
    #   IAM role ARNs have the format
    #   `arn:partition:iam::account:role/role-name-with-path`. For example:
    #   `arn:aws:iam::111122223333:role/Admin`.
    #
    #   For more information, see [IAM ARNs][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyRequest AWS API Documentation
    #
    class UpdateVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] vocabulary_name
    #   The name of the updated custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code you selected for your custom vocabulary.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom vocabulary was last updated.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom vocabulary. If the state is
    #   `READY`, you can use the custom vocabulary in a
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

    # Provides information about a custom vocabulary filter, including the
    # language of the filter, when it was last modified, and its name.
    #
    # @!attribute [rw] vocabulary_filter_name
    #   A unique name, chosen by you, for your custom vocabulary filter.
    #   This name is case sensitive, cannot contain spaces, and must be
    #   unique within an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code that represents the language of the entries in
    #   your vocabulary filter. Each custom vocabulary filter must contain
    #   terms in only one language.
    #
    #   A custom vocabulary filter can only be used to transcribe files in
    #   the same language as the filter. For example, if you create a custom
    #   vocabulary filter using US English (`en-US`), you can only apply
    #   this filter to files that contain English audio.
    #
    #   For a list of supported languages and their associated language
    #   codes, refer to the [Supported languages][1] table.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom vocabulary filter was last
    #   modified.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
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

    # Provides information about a custom vocabulary, including the language
    # of the custom vocabulary, when it was last modified, its name, and the
    # processing state.
    #
    # @!attribute [rw] vocabulary_name
    #   A unique name, chosen by you, for your custom vocabulary. This name
    #   is case sensitive, cannot contain spaces, and must be unique within
    #   an Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code used to create your custom vocabulary. Each custom
    #   vocabulary must contain terms in only one language.
    #
    #   A custom vocabulary can only be used to transcribe files in the same
    #   language as the custom vocabulary. For example, if you create a
    #   custom vocabulary using US English (`en-US`), you can only apply
    #   this custom vocabulary to files that contain English audio.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time the specified custom vocabulary was last modified.
    #
    #   Timestamps are in the format `YYYY-MM-DD'T'HH:MM:SS.SSSSSS-UTC`. For
    #   example, `2022-05-04T12:32:58.761000-07:00` represents 12:32 PM
    #   UTC-7 on May 4, 2022.
    #   @return [Time]
    #
    # @!attribute [rw] vocabulary_state
    #   The processing state of your custom vocabulary. If the state is
    #   `READY`, you can use the custom vocabulary in a
    #   `StartTranscriptionJob` request.
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
