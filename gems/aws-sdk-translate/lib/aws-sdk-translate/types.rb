# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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

    # Another modification is being made. That modification must complete
    # before you can make your change.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict processing the request. Try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   A custom name for the parallel data resource in Amazon Translate.
    #   You must assign a name that is unique in the account and region.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A custom description for the parallel data resource in Amazon
    #   Translate.
    #   @return [String]
    #
    # @!attribute [rw] parallel_data_config
    #   Specifies the format and S3 location of the parallel data input
    #   file.
    #   @return [Types::ParallelDataConfig]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key used to encrypt this object.
    #   @return [Types::EncryptionKey]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. This token is automatically
    #   generated when you use Amazon Translate through an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be associated with this resource. A tag is a key-value pair
    #   that adds metadata to a resource. Each tag key for the resource must
    #   be unique. For more information, see [ Tagging your resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/CreateParallelDataRequest AWS API Documentation
    #
    class CreateParallelDataRequest < Struct.new(
      :name,
      :description,
      :parallel_data_config,
      :encryption_key,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The custom name that you assigned to the parallel data resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the parallel data resource. When the resource is ready
    #   for you to use, the status is `ACTIVE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/CreateParallelDataResponse AWS API Documentation
    #
    class CreateParallelDataResponse < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the parallel data resource that is being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DeleteParallelDataRequest AWS API Documentation
    #
    class DeleteParallelDataRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the parallel data resource that is being deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the parallel data deletion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/DeleteParallelDataResponse AWS API Documentation
    #
    class DeleteParallelDataResponse < Struct.new(
      :name,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # The content and content type of a document.
    #
    # @!attribute [rw] content
    #   The `Content`field type is Binary large object (blob). This object
    #   contains the document content converted into base64-encoded binary
    #   data. If you use one of the AWS SDKs, the SDK performs the
    #   Base64-encoding on this field before sending the request.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Describes the format of the document. You can specify one of the
    #   following:
    #
    #   * text/html - The input data consists of HTML content. Amazon
    #     Translate translates only the text in the HTML element.
    #
    #   * text/plain - The input data consists of unformatted text. Amazon
    #     Translate translates every character in the content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/Document AWS API Documentation
    #
    class Document < Struct.new(
      :content,
      :content_type)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # The encryption key used to encrypt this object.
    #
    # @!attribute [rw] type
    #   The type of encryption key used by Amazon Translate to encrypt this
    #   object.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The Amazon Resource Name (ARN) of the encryption key being used to
    #   encrypt this object.
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

    # @!attribute [rw] name
    #   The name of the parallel data resource that is being retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetParallelDataRequest AWS API Documentation
    #
    class GetParallelDataRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parallel_data_properties
    #   The properties of the parallel data resource that is being
    #   retrieved.
    #   @return [Types::ParallelDataProperties]
    #
    # @!attribute [rw] data_location
    #   The Amazon S3 location of the most recent parallel data input file
    #   that was successfully imported into Amazon Translate. The location
    #   is returned as a presigned URL that has a 30-minute expiration.
    #
    #   Amazon Translate doesn't scan all input files for the risk of CSV
    #   injection attacks.
    #
    #    CSV injection occurs when a .csv or .tsv file is altered so that a
    #   record contains malicious code. The record begins with a special
    #   character, such as =, +, -, or @. When the file is opened in a
    #   spreadsheet program, the program might interpret the record as a
    #   formula and run the code within it.
    #
    #    Before you download an input file from Amazon S3, ensure that you
    #   recognize the file and trust its creator.
    #   @return [Types::ParallelDataDataLocation]
    #
    # @!attribute [rw] auxiliary_data_location
    #   The Amazon S3 location of a file that provides any errors or
    #   warnings that were produced by your input file. This file was
    #   created when Amazon Translate attempted to create a parallel data
    #   resource. The location is returned as a presigned URL to that has a
    #   30-minute expiration.
    #   @return [Types::ParallelDataDataLocation]
    #
    # @!attribute [rw] latest_update_attempt_auxiliary_data_location
    #   The Amazon S3 location of a file that provides any errors or
    #   warnings that were produced by your input file. This file was
    #   created when Amazon Translate attempted to update a parallel data
    #   resource. The location is returned as a presigned URL to that has a
    #   30-minute expiration.
    #   @return [Types::ParallelDataDataLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetParallelDataResponse AWS API Documentation
    #
    class GetParallelDataResponse < Struct.new(
      :parallel_data_properties,
      :data_location,
      :auxiliary_data_location,
      :latest_update_attempt_auxiliary_data_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the custom terminology being retrieved.
    #   @return [String]
    #
    # @!attribute [rw] terminology_data_format
    #   The data format of the custom terminology being retrieved.
    #
    #   If you don't specify this parameter, Amazon Translate returns a
    #   file with the same format as the file that was imported to create
    #   the terminology.
    #
    #   If you specify this parameter when you retrieve a multi-directional
    #   terminology resource, you must specify the same format as the input
    #   file that was imported to create it. Otherwise, Amazon Translate
    #   throws an error.
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
    #   The Amazon S3 location of the most recent custom terminology input
    #   file that was successfully imported into Amazon Translate. The
    #   location is returned as a presigned URL that has a 30-minute
    #   expiration.
    #
    #   Amazon Translate doesn't scan all input files for the risk of CSV
    #   injection attacks.
    #
    #    CSV injection occurs when a .csv or .tsv file is altered so that a
    #   record contains malicious code. The record begins with a special
    #   character, such as =, +, -, or @. When the file is opened in a
    #   spreadsheet program, the program might interpret the record as a
    #   formula and run the code within it.
    #
    #    Before you download an input file from Amazon S3, ensure that you
    #   recognize the file and trust its creator.
    #   @return [Types::TerminologyDataLocation]
    #
    # @!attribute [rw] auxiliary_data_location
    #   The Amazon S3 location of a file that provides any errors or
    #   warnings that were produced by your input file. This file was
    #   created when Amazon Translate attempted to create a terminology
    #   resource. The location is returned as a presigned URL to that has a
    #   30-minute expiration.
    #   @return [Types::TerminologyDataLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/GetTerminologyResponse AWS API Documentation
    #
    class GetTerminologyResponse < Struct.new(
      :terminology_properties,
      :terminology_data_location,
      :auxiliary_data_location)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] tags
    #   Tags to be associated with this resource. A tag is a key-value pair
    #   that adds metadata to a resource. Each tag key for the resource must
    #   be unique. For more information, see [ Tagging your resources][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminologyRequest AWS API Documentation
    #
    class ImportTerminologyRequest < Struct.new(
      :name,
      :merge_strategy,
      :description,
      :terminology_data,
      :encryption_key,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] terminology_properties
    #   The properties of the custom terminology being imported.
    #   @return [Types::TerminologyProperties]
    #
    # @!attribute [rw] auxiliary_data_location
    #   The Amazon S3 location of a file that provides any errors or
    #   warnings that were produced by your input file. This file was
    #   created when Amazon Translate attempted to create a terminology
    #   resource. The location is returned as a presigned URL to that has a
    #   30 minute expiration.
    #   @return [Types::TerminologyDataLocation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ImportTerminologyResponse AWS API Documentation
    #
    class ImportTerminologyResponse < Struct.new(
      :terminology_properties,
      :auxiliary_data_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input configuration properties for requesting a batch translation
    # job.
    #
    # @!attribute [rw] s3_uri
    #   The URI of the AWS S3 folder that contains the input files. Amazon
    #   Translate translates all the files in the folder and all its
    #   sub-folders. The folder must be in the same Region as the API
    #   endpoint you are calling.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   Describes the format of the data that you submit to Amazon Translate
    #   as input. You can specify one of the following multipurpose internet
    #   mail extension (MIME) types:
    #
    #   * `text/html`: The input data consists of one or more HTML files.
    #     Amazon Translate translates only the text that resides in the
    #     `html` element in each file.
    #
    #   * `text/plain`: The input data consists of one or more unformatted
    #     text files. Amazon Translate translates every character in this
    #     type of input.
    #
    #   * `application/vnd.openxmlformats-officedocument.wordprocessingml.document`:
    #     The input data consists of one or more Word documents (.docx).
    #
    #   * `application/vnd.openxmlformats-officedocument.presentationml.presentation`:
    #     The input data consists of one or more PowerPoint Presentation
    #     files (.pptx).
    #
    #   * `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`:
    #     The input data consists of one or more Excel Workbook files
    #     (.xlsx).
    #
    #   * `application/x-xliff+xml`: The input data consists of one or more
    #     XML Localization Interchange File Format (XLIFF) files (.xlf).
    #     Amazon Translate supports only XLIFF version 1.2.
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

    # The filter specified for the operation is not valid. Specify a
    # different filter.
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

    # The value of the parameter is not valid. Review the value of the
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

    # The request that you made is not valid. Check your request to
    # determine why it's not valid and then retry the request.
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

    # A supported language.
    #
    # @!attribute [rw] language_name
    #   Language name of the supported language.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   Language code for the supported language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/Language AWS API Documentation
    #
    class Language < Struct.new(
      :language_name,
      :language_code)
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

    # @!attribute [rw] display_language_code
    #   The language code for the language to use to display the language
    #   names in the response. The language code is `en` by default.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Include the NextToken value to fetch the next group of supported
    #   languages.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each response.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListLanguagesRequest AWS API Documentation
    #
    class ListLanguagesRequest < Struct.new(
      :display_language_code,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] languages
    #   The list of supported languages.
    #   @return [Array<Types::Language>]
    #
    # @!attribute [rw] display_language_code
    #   The language code passed in with the request.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response does not include all remaining results, use the
    #   NextToken in the next request to fetch the next group of supported
    #   languages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListLanguagesResponse AWS API Documentation
    #
    class ListLanguagesResponse < Struct.new(
      :languages,
      :display_language_code,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A string that specifies the next page of results to return in a
    #   paginated response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of parallel data resources returned for each
    #   request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListParallelDataRequest AWS API Documentation
    #
    class ListParallelDataRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] parallel_data_properties_list
    #   The properties of the parallel data resources returned by this
    #   request.
    #   @return [Array<Types::ParallelDataProperties>]
    #
    # @!attribute [rw] next_token
    #   The string to use in a subsequent request to get the next page of
    #   results in a paginated response. This value is null if there are no
    #   additional pages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListParallelDataResponse AWS API Documentation
    #
    class ListParallelDataResponse < Struct.new(
      :parallel_data_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Translate
    #   resource you are querying.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags associated with the Amazon Translate resource being queried. A
    #   tag is a key-value pair that adds as a metadata to a resource used
    #   by Amazon Translate. For example, a tag with "Sales" as the key
    #   might be added to a resource to indicate its use by the sales
    #   department.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The token to use to retrieve the next page of results. This value is
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
    # @!attribute [rw] s3_uri
    #   The URI of the S3 folder that contains a translation job's output
    #   file. The folder must be in the same Region as the API endpoint that
    #   you are calling.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key used to encrypt this object.
    #   @return [Types::EncryptionKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_uri,
      :encryption_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the format and S3 location of the parallel data input file.
    #
    # @!attribute [rw] s3_uri
    #   The URI of the Amazon S3 folder that contains the parallel data
    #   input file. The folder must be in the same Region as the API
    #   endpoint you are calling.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the parallel data input file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ParallelDataConfig AWS API Documentation
    #
    class ParallelDataConfig < Struct.new(
      :s3_uri,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the most recent parallel data input file that was
    # successfully imported into Amazon Translate.
    #
    # @!attribute [rw] repository_type
    #   Describes the repository that contains the parallel data input file.
    #   @return [String]
    #
    # @!attribute [rw] location
    #   The Amazon S3 location of the parallel data input file. The location
    #   is returned as a presigned URL to that has a 30-minute expiration.
    #
    #   Amazon Translate doesn't scan all input files for the risk of CSV
    #   injection attacks.
    #
    #    CSV injection occurs when a .csv or .tsv file is altered so that a
    #   record contains malicious code. The record begins with a special
    #   character, such as =, +, -, or @. When the file is opened in a
    #   spreadsheet program, the program might interpret the record as a
    #   formula and run the code within it.
    #
    #    Before you download an input file from Amazon S3, ensure that you
    #   recognize the file and trust its creator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ParallelDataDataLocation AWS API Documentation
    #
    class ParallelDataDataLocation < Struct.new(
      :repository_type,
      :location)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of a parallel data resource.
    #
    # @!attribute [rw] name
    #   The custom name assigned to the parallel data resource.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the parallel data resource.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description assigned to the parallel data resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the parallel data resource. When the parallel data is
    #   ready for you to use, the status is `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The source language of the translations in the parallel data file.
    #   @return [String]
    #
    # @!attribute [rw] target_language_codes
    #   The language codes for the target languages available in the
    #   parallel data file. All possible target languages are returned as an
    #   array.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parallel_data_config
    #   Specifies the format and S3 location of the parallel data input
    #   file.
    #   @return [Types::ParallelDataConfig]
    #
    # @!attribute [rw] message
    #   Additional information from Amazon Translate about the parallel data
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] imported_data_size
    #   The number of UTF-8 characters that Amazon Translate imported from
    #   the parallel data input file. This number includes only the
    #   characters in your translation examples. It does not include
    #   characters that are used to format your file. For example, if you
    #   provided a Translation Memory Exchange (.tmx) file, this number does
    #   not include the tags.
    #   @return [Integer]
    #
    # @!attribute [rw] imported_record_count
    #   The number of records successfully imported from the parallel data
    #   input file.
    #   @return [Integer]
    #
    # @!attribute [rw] failed_record_count
    #   The number of records unsuccessfully imported from the parallel data
    #   input file.
    #   @return [Integer]
    #
    # @!attribute [rw] skipped_record_count
    #   The number of items in the input file that Amazon Translate skipped
    #   when you created or updated the parallel data resource. For example,
    #   Amazon Translate skips empty records, empty target texts, and empty
    #   lines.
    #   @return [Integer]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key used to encrypt this object.
    #   @return [Types::EncryptionKey]
    #
    # @!attribute [rw] created_at
    #   The time at which the parallel data resource was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   The time at which the parallel data resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] latest_update_attempt_status
    #   The status of the most recent update attempt for the parallel data
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] latest_update_attempt_at
    #   The time that the most recent update was attempted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/ParallelDataProperties AWS API Documentation
    #
    class ParallelDataProperties < Struct.new(
      :name,
      :arn,
      :description,
      :status,
      :source_language_code,
      :target_language_codes,
      :parallel_data_config,
      :message,
      :imported_data_size,
      :imported_record_count,
      :failed_record_count,
      :skipped_record_count,
      :encryption_key,
      :created_at,
      :last_updated_at,
      :latest_update_attempt_status,
      :latest_update_attempt_at)
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

    # The Amazon Translate service is temporarily unavailable. Wait a bit
    # and then retry your request.
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

    # @!attribute [rw] job_name
    #   The name of the batch translation job to be performed.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input documents for the
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
    #   your input data. For more information, see [Identity and access
    #   management ][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/identity-and-access-management.html
    #   @return [String]
    #
    # @!attribute [rw] source_language_code
    #   The language code of the input language. Specify the language if all
    #   input documents share the same language. If you don't know the
    #   language of the source files, or your input documents contains
    #   different source languages, select `auto`. Amazon Translate auto
    #   detects the source language for each input document. For a list of
    #   supported language codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #   @return [String]
    #
    # @!attribute [rw] target_language_codes
    #   The target languages of the translation job. Enter up to 10 language
    #   codes. Each input file is translated into each target language.
    #
    #   Each language code is 2 or 5 characters long. For a list of language
    #   codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] terminology_names
    #   The name of a custom terminology resource to add to the translation
    #   job. This resource lists examples source terms and the desired
    #   translation for each term.
    #
    #   This parameter accepts only one custom terminology resource.
    #
    #   If you specify multiple target languages for the job, translate uses
    #   the designated terminology for each requested target language that
    #   has an entry for the source term in the terminology file.
    #
    #   For a list of available custom terminology resources, use the
    #   ListTerminologies operation.
    #
    #   For more information, see [Custom terminology][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] parallel_data_names
    #   The name of a parallel data resource to add to the translation job.
    #   This resource consists of examples that show how you want segments
    #   of text to be translated. If you specify multiple target languages
    #   for the job, the parallel data file must include translations for
    #   all the target languages.
    #
    #   When you add parallel data to a translation job, you create an
    #   *Active Custom Translation* job.
    #
    #   This parameter accepts only one parallel data resource.
    #
    #   <note markdown="1"> Active Custom Translation jobs are priced at a higher rate than
    #   other jobs that don't use parallel data. For more information, see
    #   [Amazon Translate pricing][1].
    #
    #    </note>
    #
    #   For a list of available parallel data resources, use the
    #   ListParallelData operation.
    #
    #   For more information, see [ Customizing your translations with
    #   parallel data][2].
    #
    #
    #
    #   [1]: http://aws.amazon.com/translate/pricing/
    #   [2]: https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-parallel-data.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. This token is generated for you
    #   when using the Amazon Translate SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Settings to configure your translation output, including the option
    #   to set the formality level of the output text and the option to mask
    #   profane words and phrases.
    #   @return [Types::TranslationSettings]
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
      :parallel_data_names,
      :client_token,
      :settings)
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

    # A key-value pair that adds as a metadata to a resource used by Amazon
    # Translate.
    #
    # @!attribute [rw] key
    #   The initial part of a key-value pair that forms a tag associated
    #   with a given resource.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The second part of a key-value pair that forms a tag associated with
    #   a given resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Translate
    #   resource to which you want to associate the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags being associated with a specific Amazon Translate resource.
    #   There can be a maximum of 50 tags (both existing and pending)
    #   associated with a specific resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

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

    # The data associated with the custom terminology. For information about
    # the custom terminology file, see [ Creating a Custom Terminology][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/creating-custom-terminology.html
    #
    # @!attribute [rw] file
    #   The file containing the custom terminology data. Your version of the
    #   AWS SDK performs a Base64-encoding on this field before sending a
    #   request to the AWS service. Users of the SDK should not perform
    #   Base64-encoding themselves.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The data format of the custom terminology.
    #   @return [String]
    #
    # @!attribute [rw] directionality
    #   The directionality of your terminology resource indicates whether it
    #   has one source language (uni-directional) or multiple
    #   (multi-directional).
    #
    #   UNI
    #
    #   : The terminology resource has one source language (for example, the
    #     first column in a CSV file), and all of its other languages are
    #     target languages.
    #
    #   MULTI
    #
    #   : Any language in the terminology resource can be the source
    #     language or a target language. A single multi-directional
    #     terminology resource can be used for jobs that translate different
    #     language pairs. For example, if the terminology contains English
    #     and Spanish terms, it can be used for jobs that translate English
    #     to Spanish and Spanish to English.
    #
    #   When you create a custom terminology resource without specifying the
    #   directionality, it behaves as uni-directional terminology, although
    #   this parameter will have a null value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TerminologyData AWS API Documentation
    #
    class TerminologyData < Struct.new(
      :file,
      :format,
      :directionality)
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
    #   The Amazon S3 location of the most recent custom terminology input
    #   file that was successfully imported into Amazon Translate. The
    #   location is returned as a presigned URL that has a 30-minute
    #   expiration .
    #
    #   Amazon Translate doesn't scan all input files for the risk of CSV
    #   injection attacks.
    #
    #    CSV injection occurs when a .csv or .tsv file is altered so that a
    #   record contains malicious code. The record begins with a special
    #   character, such as =, +, -, or @. When the file is opened in a
    #   spreadsheet program, the program might interpret the record as a
    #   formula and run the code within it.
    #
    #    Before you download an input file from Amazon S3, ensure that you
    #   recognize the file and trust its creator.
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
    #   custom terminology resource. All possible target languages are
    #   returned in array.
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
    # @!attribute [rw] directionality
    #   The directionality of your terminology resource indicates whether it
    #   has one source language (uni-directional) or multiple
    #   (multi-directional).
    #
    #   UNI
    #
    #   : The terminology resource has one source language (the first column
    #     in a CSV file), and all of its other languages are target
    #     languages.
    #
    #   MULTI
    #
    #   : Any language in the terminology resource can be the source
    #     language.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Additional information from Amazon Translate about the terminology
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] skipped_term_count
    #   The number of terms in the input file that Amazon Translate skipped
    #   when you created or updated the terminology resource.
    #   @return [Integer]
    #
    # @!attribute [rw] format
    #   The format of the custom terminology input file.
    #   @return [String]
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
      :last_updated_at,
      :directionality,
      :message,
      :skipped_term_count,
      :format)
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
    # @!attribute [rw] parallel_data_names
    #   A list containing the names of the parallel data resources applied
    #   to the translation job.
    #   @return [Array<String>]
    #
    # @!attribute [rw] message
    #   An explanation of any errors that may have occurred during the
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
    # @!attribute [rw] settings
    #   Settings that modify the translation output.
    #   @return [Types::TranslationSettings]
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
      :parallel_data_names,
      :message,
      :submitted_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :settings)
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

    # You have added too many tags to this resource. The maximum is 50 tags.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document
    #   The content and content type for the document to be translated. The
    #   document size must not exceed 100 KB.
    #   @return [Types::Document]
    #
    # @!attribute [rw] terminology_names
    #   The name of a terminology list file to add to the translation job.
    #   This file provides source terms and the desired translation for each
    #   term. A terminology list can contain a maximum of 256 terms. You can
    #   use one custom terminology resource in your translation request.
    #
    #   Use the ListTerminologies operation to get the available terminology
    #   lists.
    #
    #   For more information about custom terminology lists, see [Custom
    #   terminology][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the source text. Do not use
    #   `auto`, because `TranslateDocument` does not support language
    #   auto-detection. For a list of supported language codes, see
    #   [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code requested for the translated document. For a list
    #   of supported language codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Settings to configure your translation output, including the option
    #   to set the formality level of the output text and the option to mask
    #   profane words and phrases.
    #   @return [Types::TranslationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateDocumentRequest AWS API Documentation
    #
    class TranslateDocumentRequest < Struct.new(
      :document,
      :terminology_names,
      :source_language_code,
      :target_language_code,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] translated_document
    #   The document containing the translated content. The document format
    #   matches the source document format.
    #   @return [Types::TranslatedDocument]
    #
    # @!attribute [rw] source_language_code
    #   The language code of the source document.
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code of the translated document.
    #   @return [String]
    #
    # @!attribute [rw] applied_terminologies
    #   The names of the custom terminologies applied to the input text by
    #   Amazon Translate to produce the translated text document.
    #   @return [Array<Types::AppliedTerminology>]
    #
    # @!attribute [rw] applied_settings
    #   Settings to configure your translation output, including the option
    #   to set the formality level of the output text and the option to mask
    #   profane words and phrases.
    #   @return [Types::TranslationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateDocumentResponse AWS API Documentation
    #
    class TranslateDocumentResponse < Struct.new(
      :translated_document,
      :source_language_code,
      :target_language_code,
      :applied_terminologies,
      :applied_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] text
    #   The text to translate. The text string can be a maximum of 10,000
    #   bytes long. Depending on your character set, this may be fewer than
    #   10,000 characters.
    #   @return [String]
    #
    # @!attribute [rw] terminology_names
    #   The name of a terminology list file to add to the translation job.
    #   This file provides source terms and the desired translation for each
    #   term. A terminology list can contain a maximum of 256 terms. You can
    #   use one custom terminology resource in your translation request.
    #
    #   Use the ListTerminologies operation to get the available terminology
    #   lists.
    #
    #   For more information about custom terminology lists, see [Custom
    #   terminology][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_language_code
    #   The language code for the language of the source text. For a list of
    #   language codes, see [Supported languages][1].
    #
    #   To have Amazon Translate determine the source language of your text,
    #   you can specify `auto` in the `SourceLanguageCode` field. If you
    #   specify `auto`, Amazon Translate will call [Amazon Comprehend][2] to
    #   determine the source language.
    #
    #   <note markdown="1"> If you specify `auto`, you must send the `TranslateText` request in
    #   a region that supports Amazon Comprehend. Otherwise, the request
    #   returns an error indicating that autodetect is not supported.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #   [2]: https://docs.aws.amazon.com/comprehend/latest/dg/comprehend-general.html
    #   @return [String]
    #
    # @!attribute [rw] target_language_code
    #   The language code requested for the language of the target text. For
    #   a list of language codes, see [Supported languages][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   Settings to configure your translation output, including the option
    #   to set the formality level of the output text and the option to mask
    #   profane words and phrases.
    #   @return [Types::TranslationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextRequest AWS API Documentation
    #
    class TranslateTextRequest < Struct.new(
      :text,
      :terminology_names,
      :source_language_code,
      :target_language_code,
      :settings)
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
    # @!attribute [rw] applied_settings
    #   Optional settings that modify the translation output.
    #   @return [Types::TranslationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslateTextResponse AWS API Documentation
    #
    class TranslateTextResponse < Struct.new(
      :translated_text,
      :source_language_code,
      :target_language_code,
      :applied_terminologies,
      :applied_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # The translated content.
    #
    # @!attribute [rw] content
    #   The document containing the translated content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslatedDocument AWS API Documentation
    #
    class TranslatedDocument < Struct.new(
      :content)
      SENSITIVE = [:content]
      include Aws::Structure
    end

    # Settings to configure your translation output, including the option to
    # set the formality level of the output text and the option to mask
    # profane words and phrases.
    #
    # @!attribute [rw] formality
    #   You can optionally specify the desired level of formality for
    #   translations to supported target languages. The formality setting
    #   controls the level of formal language usage (also known as
    #   [register][1]) in the translation output. You can set the value to
    #   informal or formal. If you don't specify a value for formality, or
    #   if the target language doesn't support formality, the translation
    #   will ignore the formality setting.
    #
    #   If you specify multiple target languages for the job, translate
    #   ignores the formality setting for any unsupported target language.
    #
    #   For a list of target languages that support formality, see
    #   [Supported languages][2] in the Amazon Translate Developer Guide.
    #
    #
    #
    #   [1]: https://en.wikipedia.org/wiki/Register_(sociolinguistics)
    #   [2]: https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html#customizing-translations-formality-languages
    #   @return [String]
    #
    # @!attribute [rw] profanity
    #   Enable the profanity setting if you want Amazon Translate to mask
    #   profane words and phrases in your translation output.
    #
    #   To mask profane words and phrases, Amazon Translate replaces them
    #   with the grawlix string “?$#@$“. This 5-character sequence is used
    #   for each profane word or phrase, regardless of the length or number
    #   of words.
    #
    #   Amazon Translate doesn't detect profanity in all of its supported
    #   languages. For languages that don't support profanity detection,
    #   see [Unsupported languages][1] in the Amazon Translate Developer
    #   Guide.
    #
    #   If you specify multiple target languages for the job, all the target
    #   languages must support profanity masking. If any of the target
    #   languages don't support profanity masking, the translation job
    #   won't mask profanity for any target language.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-profanity.html#customizing-translations-profanity-languages
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/TranslationSettings AWS API Documentation
    #
    class TranslationSettings < Struct.new(
      :formality,
      :profanity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Requested display language code is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] display_language_code
    #   Language code passed in with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UnsupportedDisplayLanguageCodeException AWS API Documentation
    #
    class UnsupportedDisplayLanguageCodeException < Struct.new(
      :message,
      :display_language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Translate does not support translation from the language of the
    # source text into the requested target language. For more information,
    # see [Supported languages][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Translate
    #   resource from which you want to remove the tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The initial part of a key-value pair that forms a tag being removed
    #   from a given resource. Keys must be unique and cannot be duplicated
    #   for a particular resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the parallel data resource being updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A custom description for the parallel data resource in Amazon
    #   Translate.
    #   @return [String]
    #
    # @!attribute [rw] parallel_data_config
    #   Specifies the format and S3 location of the parallel data input
    #   file.
    #   @return [Types::ParallelDataConfig]
    #
    # @!attribute [rw] client_token
    #   A unique identifier for the request. This token is automatically
    #   generated when you use Amazon Translate through an AWS SDK.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UpdateParallelDataRequest AWS API Documentation
    #
    class UpdateParallelDataRequest < Struct.new(
      :name,
      :description,
      :parallel_data_config,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the parallel data resource being updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the parallel data resource that you are attempting to
    #   update. Your update request is accepted only if this status is
    #   either `ACTIVE` or `FAILED`.
    #   @return [String]
    #
    # @!attribute [rw] latest_update_attempt_status
    #   The status of the parallel data update attempt. When the updated
    #   parallel data resource is ready for you to use, the status is
    #   `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] latest_update_attempt_at
    #   The time that the most recent update was attempted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01/UpdateParallelDataResponse AWS API Documentation
    #
    class UpdateParallelDataResponse < Struct.new(
      :name,
      :status,
      :latest_update_attempt_status,
      :latest_update_attempt_at)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
