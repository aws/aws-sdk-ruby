# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::TranscribeService
  module Types

    # Your request didn't pass one or more validation tests. For example,
    # if the transcription you're trying to delete doesn't exist or if it
    # is in a non-terminal state (for example, it's "in progress"). See
    # the exception `Message` field for more information.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      include Aws::Structure
    end

    # When you are using the `StartTranscriptionJob` operation, the
    # `JobName` field is a duplicate of a previously entered job name.
    # Resend your request with a different name.
    #
    # When you are using the `UpdateVocabulary` operation, there are two
    # jobs running at the same time. Resend the second request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN
    #         phrases: ["Phrase"],
    #         vocabulary_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary. The name must be unique within an AWS
    #   account. The name is case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries.
    #   @return [String]
    #
    # @!attribute [rw] phrases
    #   An array of strings that contains the vocabulary entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The S3 location of the text file that contains the definition of the
    #   custom vocabulary. The URI must be in the same region as the API
    #   endpoint that you are calling. The general form is
    #
    #   `
    #   https://s3-<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3-us-east-1.amazonaws.com/examplebucket/vocab.txt`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Custom
    #   Vocabularies][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyRequest AWS API Documentation
    #
    class CreateVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri)
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
    #   case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/GetVocabularyRequest AWS API Documentation
    #
    class GetVocabularyRequest < Struct.new(
      :vocabulary_name)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTranscriptionJobsRequest
    #   data as a hash:
    #
    #       {
    #         status: "IN_PROGRESS", # accepts IN_PROGRESS, FAILED, COMPLETED
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
    #   If the result of the previous request to `ListTranscriptionJobs` was
    #   truncated, include the `NextToken` to fetch the next set of jobs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of jobs to return in the response. If there are
    #   fewer results in the list, this response contains only the actual
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ListTranscriptionJobsRequest AWS API Documentation
    #
    class ListTranscriptionJobsRequest < Struct.new(
      :status,
      :job_name_contains,
      :next_token,
      :max_results)
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
    #   The maximum number of vocabularies to return in the response. If
    #   there are fewer results in the list, this response contains only the
    #   actual results.
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
    #   case-insensitive, `ListVocabularies` will return both
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
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The requested vocabulary state.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The `ListVocabularies` operation returns a page of vocabularies at a
    #   time. The maximum size of the page is set by the `MaxResults`
    #   parameter. If there are more jobs in the list than the page size,
    #   Amazon Transcribe returns the `NextPage` token. Include the token in
    #   the next request to the `ListVocabularies` operation to return in
    #   the next page of jobs.
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
      include Aws::Structure
    end

    # Describes the input media file in a transcription request.
    #
    # @note When making an API call, you may pass Media
    #   data as a hash:
    #
    #       {
    #         media_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] media_file_uri
    #   The S3 location of the input media file. The URI must be in the same
    #   region as the API endpoint that you are calling. The general form
    #   is:
    #
    #   `
    #   https://s3-<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3-us-east-1.amazonaws.com/examplebucket/example.mp4`
    #
    #   `https://s3-us-east-1.amazonaws.com/examplebucket/mediadocs/example.mp4`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Media AWS API Documentation
    #
    class Media < Struct.new(
      :media_file_uri)
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
    #   speakers will be identified as a single speaker. If you specify the
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Settings AWS API Documentation
    #
    class Settings < Struct.new(
      :vocabulary_name,
      :show_speaker_labels,
      :max_speaker_labels,
      :channel_identification)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         transcription_job_name: "TranscriptionJobName", # required
    #         language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN
    #         media_sample_rate_hertz: 1,
    #         media_format: "mp3", # required, accepts mp3, mp4, wav, flac
    #         media: { # required
    #           media_file_uri: "Uri",
    #         },
    #         output_bucket_name: "OutputBucketName",
    #         settings: {
    #           vocabulary_name: "VocabularyName",
    #           show_speaker_labels: false,
    #           max_speaker_labels: 1,
    #           channel_identification: false,
    #         },
    #       }
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the job. Note that you can't use the strings "." or
    #   ".." by themselves as the job name. The name must also be unique
    #   within an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the language used in the input media file.
    #   @return [String]
    #
    # @!attribute [rw] media_sample_rate_hertz
    #   The sample rate, in Hertz, of the audio track in the input media
    #   file.
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
    #   transcription in the specified S3 bucket. When you call the
    #   GetTranscriptionJob operation, the operation returns this location
    #   in the `TranscriptFileUri` field. The S3 bucket must have
    #   permissions that allow Amazon Transcribe to put files in the bucket.
    #   For more information, see [Permissions Required for IAM User
    #   Roles][1].
    #
    #   Amazon Transcribe uses the default Amazon S3 key for server-side
    #   encryption of transcripts that are placed in your S3 bucket. You
    #   can't specify your own encryption key.
    #
    #   If you don't set the `OutputBucketName`, Amazon Transcribe
    #   generates a pre-signed URL, a shareable URL that provides secure
    #   access to your transcription, and returns it in the
    #   `TranscriptFileUri` field. Use this URL to download the
    #   transcription.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/access-control-managing-permissions.html#auth-role-iam-user
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   A `Settings` object that provides optional settings for a
    #   transcription job.
    #   @return [Types::Settings]
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
      :settings)
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
      include Aws::Structure
    end

    # Identifies the location of a transcription.
    #
    # @!attribute [rw] transcript_file_uri
    #   The location where the transcription is stored.
    #
    #   Use this URI to access the transcription. If you specified an S3
    #   bucket in the `OutputBucketName` field when you created the job,
    #   this is the URI of that bucket. If you chose to store the
    #   transcription in Amazon Transcribe, this is a shareable URL that
    #   provides secure access to that location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/Transcript AWS API Documentation
    #
    class Transcript < Struct.new(
      :transcript_file_uri)
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
    #   The sample rate, in Hertz, of the audio track in the input media
    #   file.
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
    #     sample rate must be between 8000 and 48000 Hertz.
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
      :creation_time,
      :completion_time,
      :failure_reason,
      :settings)
      include Aws::Structure
    end

    # Provides a summary of information about a transcription job. .
    #
    # @!attribute [rw] transcription_job_name
    #   The name of the transcription job.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   A timestamp that shows when the job was created.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/TranscriptionJobSummary AWS API Documentation
    #
    class TranscriptionJobSummary < Struct.new(
      :transcription_job_name,
      :creation_time,
      :completion_time,
      :language_code,
      :transcription_job_status,
      :failure_reason,
      :output_location_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN
    #         phrases: ["Phrase"],
    #         vocabulary_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] vocabulary_name
    #   The name of the vocabulary to update. The name is case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the vocabulary entries.
    #   @return [String]
    #
    # @!attribute [rw] phrases
    #   An array of strings containing the vocabulary entries.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vocabulary_file_uri
    #   The S3 location of the text file that contains the definition of the
    #   custom vocabulary. The URI must be in the same region as the API
    #   endpoint that you are calling. The general form is
    #
    #   `
    #   https://s3-<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3-us-east-1.amazonaws.com/examplebucket/vocab.txt`
    #
    #   For more information about S3 object names, see [Object Keys][1] in
    #   the *Amazon S3 Developer Guide*.
    #
    #   For more information about custom vocabularies, see [Custom
    #   Vocabularies][2].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html#object-keys
    #   [2]: http://docs.aws.amazon.com/transcribe/latest/dg/how-it-works.html#how-vocabulary
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyRequest AWS API Documentation
    #
    class UpdateVocabularyRequest < Struct.new(
      :vocabulary_name,
      :language_code,
      :phrases,
      :vocabulary_file_uri)
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
      include Aws::Structure
    end

  end
end
