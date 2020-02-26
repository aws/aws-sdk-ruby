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

    # When you are using the `CreateVocabulary` operation, the `JobName`
    # field is a duplicate of a previously entered job name. Resend your
    # request with a different name.
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

    # Settings for content redaction within a transcription job.
    #
    # You can redact transcripts in US English (en-us). For more information
    # see: [Automatic Content Redaction][1]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/transcribe/latest/dg/content-redaction.html
    #
    # @note When making an API call, you may pass ContentRedaction
    #   data as a hash:
    #
    #       {
    #         redaction_type: "PII", # required, accepts PII
    #         redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
    #       }
    #
    # @!attribute [rw] redaction_type
    #   Request parameter that defines the entities to be redacted. The only
    #   accepted value is `PII`.
    #   @return [String]
    #
    # @!attribute [rw] redaction_output
    #   Request parameter where you choose whether to output only the
    #   redacted transcript or generate an additional unredacted transcript.
    #
    #   When you choose `redacted` Amazon Transcribe outputs a JSON file
    #   with only the redacted transcript and related information.
    #
    #   When you choose `redacted_and_unredacted` Amazon Transcribe outputs
    #   a JSON file with the unredacted transcript and related information
    #   in addition to the JSON file with the redacted transcript.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/ContentRedaction AWS API Documentation
    #
    class ContentRedaction < Struct.new(
      :redaction_type,
      :redaction_output)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVocabularyFilterRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_filter_name: "VocabularyFilterName", # required
    #         language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
    #         words: ["Word"],
    #         vocabulary_filter_file_uri: "Uri",
    #       }
    #
    # @!attribute [rw] vocabulary_filter_name
    #   The vocabulary filter name. The name must be unique within the
    #   account that contains it.
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
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
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
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/CreateVocabularyFilterRequest AWS API Documentation
    #
    class CreateVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name,
      :language_code,
      :words,
      :vocabulary_filter_file_uri)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
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
    #   https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/examplebucket/vocab.txt`
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
    #   `AllowDeferredExecution` field is true, jobs are queued and will be
    #   executed when the number of executing jobs falls below the
    #   concurrent execution limit. If the field is false, Amazon Transcribe
    #   returns a `LimitExceededException` exception.
    #
    #   If you specify the `AllowDeferredExecution` field, you must specify
    #   the `DataAccessRoleArn` field.
    #   @return [Boolean]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of a role that has access to the S3
    #   bucket that contains the input files. Amazon Transcribe will assume
    #   this role to read queued media files. If you have specified an
    #   output S3 bucket for the transcription results, this role should
    #   have access to the output bucket as well.
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
    #   The maximum number of filters to return in the response. If there
    #   are fewer results in the list, this response contains only the
    #   actual results.
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
    #   The list of vocabulary filters. It will contain at most `MaxResults`
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
    #   The S3 object location of the input media file. The URI must be in
    #   the same region as the API endpoint that you are calling. The
    #   general form is:
    #
    #   ` s3://<bucket-name>/<keyprefix>/<objectkey> `
    #
    #   For example:
    #
    #   `s3://examplebucket/example.mp4`
    #
    #   `s3://examplebucket/mediadocs/example.mp4`
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
    #         show_alternatives: false,
    #         max_alternatives: 1,
    #         vocabulary_filter_name: "VocabularyFilterName",
    #         vocabulary_filter_method: "remove", # accepts remove, mask
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
    #   using placeholder text.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTranscriptionJobRequest
    #   data as a hash:
    #
    #       {
    #         transcription_job_name: "TranscriptionJobName", # required
    #         language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
    #         media_sample_rate_hertz: 1,
    #         media_format: "mp3", # accepts mp3, mp4, wav, flac
    #         media: { # required
    #           media_file_uri: "Uri",
    #         },
    #         output_bucket_name: "OutputBucketName",
    #         output_encryption_kms_key_id: "KMSKeyId",
    #         settings: {
    #           vocabulary_name: "VocabularyName",
    #           show_speaker_labels: false,
    #           max_speaker_labels: 1,
    #           channel_identification: false,
    #           show_alternatives: false,
    #           max_alternatives: 1,
    #           vocabulary_filter_name: "VocabularyFilterName",
    #           vocabulary_filter_method: "remove", # accepts remove, mask
    #         },
    #         job_execution_settings: {
    #           allow_deferred_execution: false,
    #           data_access_role_arn: "DataAccessRoleArn",
    #         },
    #         content_redaction: {
    #           redaction_type: "PII", # required, accepts PII
    #           redaction_output: "redacted", # required, accepts redacted, redacted_and_unredacted
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
    #   You can specify an AWS Key Management Service (KMS) key to encrypt
    #   the output of your transcription using the
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
    # @!attribute [rw] output_encryption_kms_key_id
    #   The Amazon Resource Name (ARN) of the AWS Key Management Service
    #   (KMS) key used to encrypt the output of the transcription job. The
    #   user calling the `StartTranscriptionJob` operation must have
    #   permission to use the specified KMS key.
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
    #   * ARN of a KMS Key Alias: "arn:aws:kms:region:account
    #     ID:alias/ExampleAlias"
    #
    #   If you don't specify an encryption key, the output of the
    #   transcription job is encrypted with the default Amazon S3 key
    #   (SSE-S3).
    #
    #   If you specify a KMS key to encrypt your output, you must also
    #   specify an output location in the `OutputBucketName` parameter.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   A `Settings` object that provides optional settings for a
    #   transcription job.
    #   @return [Types::Settings]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/StartTranscriptionJobRequest AWS API Documentation
    #
    class StartTranscriptionJobRequest < Struct.new(
      :transcription_job_name,
      :language_code,
      :media_sample_rate_hertz,
      :media_format,
      :media,
      :output_bucket_name,
      :output_encryption_kms_key_id,
      :settings,
      :job_execution_settings,
      :content_redaction)
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
    #   The S3 object location of the the transcript.
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
    #   Use this URI to access the redacated transcript. If you specified an
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
    # @!attribute [rw] start_time
    #   A timestamp that shows with the job was started processing.
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
    # @!attribute [rw] job_execution_settings
    #   Provides information about how a transcription job is executed.
    #   @return [Types::JobExecutionSettings]
    #
    # @!attribute [rw] content_redaction
    #   An object that describes content redaction settings for the
    #   transcription job.
    #   @return [Types::ContentRedaction]
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
      :job_execution_settings,
      :content_redaction)
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
      :content_redaction)
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
    #   The name of the vocabulary filter to update.
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
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
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
    #   [1]: https://docs.aws.amazon.com/transcribe/latest/dg/how-vocabulary.html#charsets
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26/UpdateVocabularyFilterRequest AWS API Documentation
    #
    class UpdateVocabularyFilterRequest < Struct.new(
      :vocabulary_filter_name,
      :words,
      :vocabulary_filter_file_uri)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVocabularyRequest
    #   data as a hash:
    #
    #       {
    #         vocabulary_name: "VocabularyName", # required
    #         language_code: "en-US", # required, accepts en-US, es-US, en-AU, fr-CA, en-GB, de-DE, pt-BR, fr-FR, it-IT, ko-KR, es-ES, en-IN, hi-IN, ar-SA, ru-RU, zh-CN, nl-NL, id-ID, ta-IN, fa-IR, en-IE, en-AB, en-WL, pt-PT, te-IN, tr-TR, de-CH, he-IL, ms-MY, ja-JP, ar-AE
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
    #   https://s3.<aws-region>.amazonaws.com/<bucket-name>/<keyprefix>/<objectkey>
    #   `
    #
    #   For example:
    #
    #   `https://s3.us-east-1.amazonaws.com/examplebucket/vocab.txt`
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
