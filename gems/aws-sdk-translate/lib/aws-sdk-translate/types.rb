# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Translate
  module Types

    # The custom terminology applied to the input text by Amazon Translate
    # for the translated text response. This is optional in the response and
    # will only be present if you specified terminology input in the
    # request. Currently, only one terminology can be applied per
    # TranslateText request.
    #
    # @!attribute [rw] name
    #   The name of the custom terminology applied to the input text by
    #   Amazon Translate for the translated text response.
    #   @return [String]
    #
    # @!attribute [rw] terms
    #   The specific terms of the custom terminology applied to the input
    #   text by Amazon Translate for the translated text response. A maximum
    #   of 250 terms will be returned, and the specific terms applied will
    #   be the first 250 terms in the source text.
    #   @return [Array<Types::Term>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/AppliedTerminology AWS API Documentation
    #
    class AppliedTerminology < Struct.new(
      :name,
      :terms)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteTerminologyRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom terminology being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DeleteTerminologyRequest AWS API Documentation
    #
    class DeleteTerminologyRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTextTranslationJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Translate generated for the job. The
    #   StartTextTranslationJob operation returns this identifier in its
    #   response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DescribeTextTranslationJobRequest AWS API Documentation
    #
    class DescribeTextTranslationJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] text_translation_job_properties
    #   An object that contains the properties associated with an
    #   asynchronous batch translation job.
    #   @return [Types::TextTranslationJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DescribeTextTranslationJobResponse AWS API Documentation
    #
    class DescribeTextTranslationJobResponse < Struct.new(
      :text_translation_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The confidence that Amazon Comprehend accurately detected the source
    # language is low. If a low confidence level is acceptable for your
    # application, you can use the language in the exception to call Amazon
    # Translate again. For more information, see the
    # [DetectDominantLanguage][1] operation in the *Amazon Comprehend
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/API_DetectDominantLanguage.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] detected_language_code
    #   The language code of the auto-detected language from Amazon
    #   Comprehend.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DetectedLanguageLowConfidenceException AWS API Documentation
    #
    class DetectedLanguageLowConfidenceException < Struct.new(
      :message,
      :detected_language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # The encryption key used to encrypt the custom terminologies used by
    # Amazon Translate.
    #
    # @note When making an API call, you may pass EncryptionKey
    #   data as a hash:
    #
    #       {
    #         type: "KMS", # required, accepts KMS
    #         id: "EncryptionKeyID", # required
    #       }
    #
    # @!attribute [rw] type
    #   The type of encryption key used by Amazon Translate to encrypt
    #   custom terminologies.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The Amazon Resource Name (ARN) of the encryption key being used to
    #   encrypt the custom terminology.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/EncryptionKey AWS API Documentation
    #
    class EncryptionKey < Struct.new(
      :type,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetTerminologyRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         terminology_data_format: "CSV", # required, accepts CSV, TMX
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom terminology being retrieved.
    #   @return [String]
    #
    # @!attribute [rw] terminology_data_format
    #   The data format of the custom terminology being retrieved, either
    #   CSV or TMX.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetTerminologyRequest AWS API Documentation
    #
    class GetTerminologyRequest < Struct.new(
      :name,
      :terminology_data_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] terminology_properties
    #   The properties of the custom terminology being retrieved.
    #   @return [Types::TerminologyProperties]
    #
    # @!attribute [rw] terminology_data_location
    #   The data location of the custom terminology being retrieved. The
    #   custom terminology file is returned in a presigned url that has a 30
    #   minute expiration.
    #   @return [Types::TerminologyDataLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetTerminologyResponse AWS API Documentation
    #
    class GetTerminologyResponse < Struct.new(
      :terminology_properties,
      :terminology_data_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportTerminologyRequest
    #   data as a hash:
    #
    #       {
    #         name: "ResourceName", # required
    #         merge_strategy: "OVERWRITE", # required, accepts OVERWRITE
    #         description: "Description",
    #         terminology_data: { # required
    #           file: "data", # required
    #           format: "CSV", # required, accepts CSV, TMX
    #         },
    #         encryption_key: {
    #           type: "KMS", # required, accepts KMS
    #           id: "EncryptionKeyID", # required
    #         },
    #       }
    #
    # @!attribute [rw] name
    #   The name of the custom terminology being imported.
    #   @return [String]
    #
    # @!attribute [rw] merge_strategy
    #   The merge strategy of the custom terminology being imported.
    #   Currently, only the OVERWRITE merge strategy is supported. In this
    #   case, the imported terminology will overwrite an existing
    #   terminology of the same name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom terminology being imported.
    #   @return [String]
    #
    # @!attribute [rw] terminology_data
    #   The terminology data for the custom terminology being imported.
    #   @return [Types::TerminologyData]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key for the custom terminology being imported.
    #   @return [Types::EncryptionKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminologyRequest AWS API Documentation
    #
    class ImportTerminologyRequest < Struct.new(
      :name,
      :merge_strategy,
      :description,
      :terminology_data,
      :encryption_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] terminology_properties
    #   The properties of the custom terminology being imported.
    #   @return [Types::TerminologyProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminologyResponse AWS API Documentation
    #
    class ImportTerminologyResponse < Struct.new(
      :terminology_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input configuration properties for requesting a batch translation
    # job.
    #
    # @note When making an API call, you may pass InputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         content_type: "ContentType", # required
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The URI of the AWS S3 folder that contains the input file. The
    #   folder must be in the same Region as the API endpoint you are
    #   calling.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Describes the format of the data that you submit to Amazon Translate
    #   as input. You can specify one of the following multipurpose internet
    #   mail extension (MIME) types:
    #
    #   * `text/html`\: The input data consists of one or more HTML files.
    #     Amazon Translate translates only the text that resides in the
    #     `html` element in each file.
    #
    #   * `text/plain`\: The input data consists of one or more unformatted
    #     text files. Amazon Translate translates every character in this
    #     type of input.
    #
    #   * `application/vnd.openxmlformats-officedocument.wordprocessingml.document`\:
    #     The input data consists of one or more Word documents (.docx).
    #
    #   * `application/vnd.openxmlformats-officedocument.presentationml.presentation`\:
    #     The input data consists of one or more PowerPoint Presentation
    #     files (.pptx).
    #
    #   * `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`\:
    #     The input data consists of one or more Excel Workbook files
    #     (.xlsx).
    #
    #   If you structure your input data as HTML, ensure that you set this
    #   parameter to `text/html`. By doing so, you cut costs by limiting the
    #   translation to the contents of the `html` element in each file.
    #   Otherwise, if you set this parameter to `text/plain`, your costs
    #   will cover the translation of every character.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_uri,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter specified for the operation is invalid. Specify a different
    # filter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InvalidFilterException AWS API Documentation
    #
    class InvalidFilterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of the parameter is invalid. Review the value of the
    # parameter you are using to correct it, and then retry your operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InvalidParameterValueException AWS API Documentation
    #
    class InvalidParameterValueException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request that you made is invalid. Check your request to determine
    # why it's invalid and then retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of documents successfully and unsuccessfully processed
    # during a translation job.
    #
    # @!attribute [rw] translated_documents_count
    #   The number of documents successfully processed during a translation
    #   job.
    #   @return [Integer]
    #
    # @!attribute [rw] documents_with_errors_count
    #   The number of documents that could not be processed during a
    #   translation job.
    #   @return [Integer]
    #
    # @!attribute [rw] input_documents_count
    #   The number of documents used as input in a translation job.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/JobDetails AWS API Documentation
    #
    class JobDetails < Struct.new(
      :translated_documents_count,
      :documents_with_errors_count,
      :input_documents_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified limit has been exceeded. Review your request and retry
    # it with a quantity below the stated limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTerminologiesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If the result of the request to ListTerminologies was truncated,
    #   include the NextToken to fetch the next group of custom
    #   terminologies.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of custom terminologies returned per list
    #   request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTerminologiesRequest AWS API Documentation
    #
    class ListTerminologiesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] terminology_properties_list
    #   The properties list of the custom terminologies returned on the list
    #   request.
    #   @return [Array<Types::TerminologyProperties>]
    #
    # @!attribute [rw] next_token
    #   If the response to the ListTerminologies was truncated, the
    #   NextToken fetches the next group of custom terminologies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTerminologiesResponse AWS API Documentation
    #
    class ListTerminologiesResponse < Struct.new(
      :terminology_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTextTranslationJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, COMPLETED_WITH_ERROR, FAILED, STOP_REQUESTED, STOPPED
    #           submitted_before_time: Time.now,
    #           submitted_after_time: Time.now,
    #         },
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   The parameters that specify which batch translation jobs to
    #   retrieve. Filters include job name, job status, and submission time.
    #   You can only set one filter at a time.
    #   @return [Types::TextTranslationJobFilter]
    #
    # @!attribute [rw] next_token
    #   The token to request the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default
    #   value is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTextTranslationJobsRequest AWS API Documentation
    #
    class ListTextTranslationJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] text_translation_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::TextTranslationJobProperties>]
    #
    # @!attribute [rw] next_token
    #   The token to use to retreive the next page of results. This value is
    #   `null` when there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTextTranslationJobsResponse AWS API Documentation
    #
    class ListTextTranslationJobsResponse < Struct.new(
      :text_translation_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output configuration properties for a batch translation job.
    #
    # @note When making an API call, you may pass OutputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The URI of the S3 folder that contains a translation job's output
    #   file. The folder must be in the same Region as the API endpoint that
    #   you are calling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are looking for has not been found. Review the
    # resource you're looking for and see if a different resource will
    # accomplish your needs before retrying the revised request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Translate service is temporarily unavailable. Please wait a
    # bit and then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTextTranslationJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           content_type: "ContentType", # required
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         source_language_code: "LanguageCodeString", # required
    #         target_language_codes: ["LanguageCodeString"], # required
    #         terminology_names: ["ResourceName"],
    #         client_token: "ClientTokenString", # required
    #       }
    #
    # @!attribute [rw] job_name
    #   The name of the batch translation job to be performed.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and S3 location of the input documents for the
    #   translation job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies the S3 folder to which your job output will be saved.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity Access and
    #   Management (IAM) role that grants Amazon Translate read access to
    #   your input data. For more nformation, see
    #   identity-and-access-management.
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code of the input language. For a list of language
    #   codes, see what-is-languages.
    #
    #   Amazon Translate does not automatically detect a source language
    #   during batch translation jobs.
    #   @return [String]
    #
    # @!attribute [rw] target_language_codes
    #   The language code of the output language.
    #   @return [Array<String>]
    #
    # @!attribute [rw] terminology_names
    #   The name of the terminology to use in the batch translation job. For
    #   a list of available terminologies, use the ListTerminologies
    #   operation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. This token is auto-generated
    #   when using the Amazon Translate SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/StartTextTranslationJobRequest AWS API Documentation
    #
    class StartTextTranslationJobRequest < Struct.new(
      :job_name,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :source_language_code,
      :target_language_codes,
      :terminology_names,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this ID with the DescribeTextTranslationJob operation.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job. Possible values include:
    #
    #   * `SUBMITTED` - The job has been received and is queued for
    #     processing.
    #
    #   * `IN_PROGRESS` - Amazon Translate is processing the job.
    #
    #   * `COMPLETED` - The job was successfully completed and the output is
    #     available.
    #
    #   * `COMPLETED_WITH_ERROR` - The job was completed with errors. The
    #     errors can be analyzed in the job's output.
    #
    #   * `FAILED` - The job did not complete. To get details, use the
    #     DescribeTextTranslationJob operation.
    #
    #   * `STOP_REQUESTED` - The user who started the job has requested that
    #     it be stopped.
    #
    #   * `STOPPED` - The job has been stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/StartTextTranslationJobResponse AWS API Documentation
    #
    class StartTextTranslationJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopTextTranslationJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The job ID of the job to be stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/StopTextTranslationJobRequest AWS API Documentation
    #
    class StopTextTranslationJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The job ID of the stopped batch translation job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the designated job. Upon successful completion, the
    #   job's status will be `STOPPED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/StopTextTranslationJobResponse AWS API Documentation
    #
    class StopTextTranslationJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The term being translated by the custom terminology.
    #
    # @!attribute [rw] source_text
    #   The source text of the term being translated by the custom
    #   terminology.
    #   @return [String]
    #
    # @!attribute [rw] target_text
    #   The target text of the term being translated by the custom
    #   terminology.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/Term AWS API Documentation
    #
    class Term < Struct.new(
      :source_text,
      :target_text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data associated with the custom terminology.
    #
    # @note When making an API call, you may pass TerminologyData
    #   data as a hash:
    #
    #       {
    #         file: "data", # required
    #         format: "CSV", # required, accepts CSV, TMX
    #       }
    #
    # @!attribute [rw] file
    #   The file containing the custom terminology data. Your version of the
    #   AWS SDK performs a Base64-encoding on this field before sending a
    #   request to the AWS service. Users of the SDK should not perform
    #   Base64-encoding themselves.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The data format of the custom terminology. Either CSV or TMX.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TerminologyData AWS API Documentation
    #
    class TerminologyData < Struct.new(
      :file,
      :format)
      SENSITIVE = [:file]
      include Aws::Structure
    end

    # The location of the custom terminology data.
    #
    # @!attribute [rw] repository_type
    #   The repository type for the custom terminology data.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The location of the custom terminology data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TerminologyDataLocation AWS API Documentation
    #
    class TerminologyDataLocation < Struct.new(
      :repository_type,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the custom terminology.
    #
    # @!attribute [rw] name
    #   The name of the custom terminology.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the custom terminology properties.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the custom terminology.
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the source text of the translation request for
    #   which the custom terminology is being used.
    #   @return [String]
    #
    # @!attribute [rw] target_language_codes
    #   The language codes for the target languages available with the
    #   custom terminology file. All possible target languages are returned
    #   in array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key for the custom terminology.
    #   @return [Types::EncryptionKey]
    #
    # @!attribute [rw] size_bytes
    #   The size of the file used when importing a custom terminology.
    #   @return [Integer]
    #
    # @!attribute [rw] term_count
    #   The number of terms included in the custom terminology.
    #   @return [Integer]
    #
    # @!attribute [rw] created_at
    #   The time at which the custom terminology was created, based on the
    #   timestamp.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time at which the custom terminology was last update, based on
    #   the timestamp.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TerminologyProperties AWS API Documentation
    #
    class TerminologyProperties < Struct.new(
      :name,
      :description,
      :arn,
      :source_language_code,
      :target_language_codes,
      :encryption_key,
      :size_bytes,
      :term_count,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The size of the text you submitted exceeds the size limit. Reduce the
    # size of the text or use a smaller document and then retry your
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TextSizeLimitExceededException AWS API Documentation
    #
    class TextSizeLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of translation jobs. For
    # more information, see ListTextTranslationJobs.
    #
    # @note When making an API call, you may pass TextTranslationJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, COMPLETED_WITH_ERROR, FAILED, STOP_REQUESTED, STOPPED
    #         submitted_before_time: Time.now,
    #         submitted_after_time: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters the list of jobs by name.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of jobs based by job status.
    #   @return [String]
    #
    # @!attribute [rw] submitted_before_time
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing and returns only the jobs submitted before
    #   the specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submitted_after_time
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing and returns only the jobs submitted after
    #   the specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TextTranslationJobFilter AWS API Documentation
    #
    class TextTranslationJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submitted_before_time,
      :submitted_after_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a translation job.
    #
    # @!attribute [rw] job_id
    #   The ID of the translation job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The user-defined name of the translation job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the translation job.
    #   @return [String]
    #
    # @!attribute [rw] job_details
    #   The number of documents successfully and unsuccessfully processed
    #   during the translation job.
    #   @return [Types::JobDetails]
    #
    # @!attribute [rw] source_language_code
    #   The language code of the language of the source text. The language
    #   must be a language supported by Amazon Translate.
    #   @return [String]
    #
    # @!attribute [rw] target_language_codes
    #   The language code of the language of the target text. The language
    #   must be a language supported by Amazon Translate.
    #   @return [Array<String>]
    #
    # @!attribute [rw] terminology_names
    #   A list containing the names of the terminologies applied to a
    #   translation job. Only one terminology can be applied per
    #   StartTextTranslationJob request at this time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   An explanation of any errors that may have occured during the
    #   translation job.
    #   @return [String]
    #
    # @!attribute [rw] submitted_time
    #   The time at which the translation job was submitted.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time at which the translation job ended.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input configuration properties that were specified when the job
    #   was requested.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output configuration properties that were specified when the job
    #   was requested.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of an AWS Identity Access and
    #   Management (IAM) role that granted Amazon Translate read access to
    #   the job's input data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TextTranslationJobProperties AWS API Documentation
    #
    class TextTranslationJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :job_details,
      :source_language_code,
      :target_language_codes,
      :terminology_names,
      :message,
      :submitted_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have made too many requests within a short period of time. Wait
    # for a short time and then try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TranslateTextRequest
    #   data as a hash:
    #
    #       {
    #         text: "BoundedLengthString", # required
    #         terminology_names: ["ResourceName"],
    #         source_language_code: "LanguageCodeString", # required
    #         target_language_code: "LanguageCodeString", # required
    #       }
    #
    # @!attribute [rw] text
    #   The text to translate. The text string can be a maximum of 5,000
    #   bytes long. Depending on your character set, this may be fewer than
    #   5,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] terminology_names
    #   The name of the terminology list file to be used in the
    #   TranslateText request. You can use 1 terminology list at most in a
    #   `TranslateText` request. Terminology lists can contain a maximum of
    #   256 terms.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the source text. The language
    #   must be a language supported by Amazon Translate. For a list of
    #   language codes, see what-is-languages.
    #
    #   To have Amazon Translate determine the source language of your text,
    #   you can specify `auto` in the `SourceLanguageCode` field. If you
    #   specify `auto`, Amazon Translate will call [Amazon Comprehend][1] to
    #   determine the source language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code requested for the language of the target text. The
    #   language must be a language supported by Amazon Translate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextRequest AWS API Documentation
    #
    class TranslateTextRequest < Struct.new(
      :text,
      :terminology_names,
      :source_language_code,
      :target_language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] translated_text
    #   The translated text.
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the source text.
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code for the language of the target text.
    #   @return [String]
    #
    # @!attribute [rw] applied_terminologies
    #   The names of the custom terminologies applied to the input text by
    #   Amazon Translate for the translated text response.
    #   @return [Array<Types::AppliedTerminology>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextResponse AWS API Documentation
    #
    class TranslateTextResponse < Struct.new(
      :translated_text,
      :source_language_code,
      :target_language_code,
      :applied_terminologies)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Translate does not support translation from the language of the
    # source text into the requested target language. For more information,
    # see how-to-error-msg.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the input text.
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code for the language of the translated text.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UnsupportedLanguagePairException AWS API Documentation
    #
    class UnsupportedLanguagePairException < Struct.new(
      :message,
      :source_language_code,
      :target_language_code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
