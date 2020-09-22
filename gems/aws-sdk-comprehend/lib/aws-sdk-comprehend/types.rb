# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Comprehend
  module Types

    # An augmented manifest file that provides training data for your custom
    # model. An augmented manifest file is a labeled dataset that is
    # produced by Amazon SageMaker Ground Truth.
    #
    # @note When making an API call, you may pass AugmentedManifestsListItem
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         attribute_names: ["AttributeNamesListItem"], # required
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 location of the augmented manifest file.
    #   @return [String]
    #
    # @!attribute [rw] attribute_names
    #   The JSON attribute that contains the annotations for your training
    #   documents. The number of attribute names that you specify depends on
    #   whether your augmented manifest file is the output of a single
    #   labeling job or a chained labeling job.
    #
    #   If your file is the output of a single labeling job, specify the
    #   LabelAttributeName key that was used when the job was created in
    #   Ground Truth.
    #
    #   If your file is the output of a chained labeling job, specify the
    #   LabelAttributeName key for one or more jobs in the chain. Each
    #   LabelAttributeName key provides the annotations from an individual
    #   job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/AugmentedManifestsListItem AWS API Documentation
    #
    class AugmentedManifestsListItem < Struct.new(
      :s3_uri,
      :attribute_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of calling the operation. The operation returns one object
    # for each document that is successfully processed by the operation.
    #
    # @!attribute [rw] index
    #   The zero-based index of the document in the input list.
    #   @return [Integer]
    #
    # @!attribute [rw] languages
    #   One or more DominantLanguage objects describing the dominant
    #   languages in the document.
    #   @return [Array<Types::DominantLanguage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectDominantLanguageItemResult AWS API Documentation
    #
    class BatchDetectDominantLanguageItemResult < Struct.new(
      :index,
      :languages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectDominantLanguageRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["CustomerInputString"], # required
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document should contain at
    #   least 20 characters and must contain fewer than 5,000 bytes of UTF-8
    #   encoded characters.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectDominantLanguageRequest AWS API Documentation
    #
    class BatchDetectDominantLanguageRequest < Struct.new(
      :text_list)
      SENSITIVE = [:text_list]
      include Aws::Structure
    end

    # @!attribute [rw] result_list
    #   A list of objects containing the results of the operation. The
    #   results are sorted in ascending order by the `Index` field and match
    #   the order of the documents in the input list. If all of the
    #   documents contain an error, the `ResultList` is empty.
    #   @return [Array<Types::BatchDetectDominantLanguageItemResult>]
    #
    # @!attribute [rw] error_list
    #   A list containing one object for each document that contained an
    #   error. The results are sorted in ascending order by the `Index`
    #   field and match the order of the documents in the input list. If
    #   there are no errors in the batch, the `ErrorList` is empty.
    #   @return [Array<Types::BatchItemError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectDominantLanguageResponse AWS API Documentation
    #
    class BatchDetectDominantLanguageResponse < Struct.new(
      :result_list,
      :error_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of calling the operation. The operation returns one object
    # for each document that is successfully processed by the operation.
    #
    # @!attribute [rw] index
    #   The zero-based index of the document in the input list.
    #   @return [Integer]
    #
    # @!attribute [rw] entities
    #   One or more Entity objects, one for each entity detected in the
    #   document.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectEntitiesItemResult AWS API Documentation
    #
    class BatchDetectEntitiesItemResult < Struct.new(
      :index,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["CustomerInputString"], # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   than 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectEntitiesRequest AWS API Documentation
    #
    class BatchDetectEntitiesRequest < Struct.new(
      :text_list,
      :language_code)
      SENSITIVE = [:text_list]
      include Aws::Structure
    end

    # @!attribute [rw] result_list
    #   A list of objects containing the results of the operation. The
    #   results are sorted in ascending order by the `Index` field and match
    #   the order of the documents in the input list. If all of the
    #   documents contain an error, the `ResultList` is empty.
    #   @return [Array<Types::BatchDetectEntitiesItemResult>]
    #
    # @!attribute [rw] error_list
    #   A list containing one object for each document that contained an
    #   error. The results are sorted in ascending order by the `Index`
    #   field and match the order of the documents in the input list. If
    #   there are no errors in the batch, the `ErrorList` is empty.
    #   @return [Array<Types::BatchItemError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectEntitiesResponse AWS API Documentation
    #
    class BatchDetectEntitiesResponse < Struct.new(
      :result_list,
      :error_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of calling the operation. The operation returns one object
    # for each document that is successfully processed by the operation.
    #
    # @!attribute [rw] index
    #   The zero-based index of the document in the input list.
    #   @return [Integer]
    #
    # @!attribute [rw] key_phrases
    #   One or more KeyPhrase objects, one for each key phrase detected in
    #   the document.
    #   @return [Array<Types::KeyPhrase>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectKeyPhrasesItemResult AWS API Documentation
    #
    class BatchDetectKeyPhrasesItemResult < Struct.new(
      :index,
      :key_phrases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectKeyPhrasesRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["CustomerInputString"], # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectKeyPhrasesRequest AWS API Documentation
    #
    class BatchDetectKeyPhrasesRequest < Struct.new(
      :text_list,
      :language_code)
      SENSITIVE = [:text_list]
      include Aws::Structure
    end

    # @!attribute [rw] result_list
    #   A list of objects containing the results of the operation. The
    #   results are sorted in ascending order by the `Index` field and match
    #   the order of the documents in the input list. If all of the
    #   documents contain an error, the `ResultList` is empty.
    #   @return [Array<Types::BatchDetectKeyPhrasesItemResult>]
    #
    # @!attribute [rw] error_list
    #   A list containing one object for each document that contained an
    #   error. The results are sorted in ascending order by the `Index`
    #   field and match the order of the documents in the input list. If
    #   there are no errors in the batch, the `ErrorList` is empty.
    #   @return [Array<Types::BatchItemError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectKeyPhrasesResponse AWS API Documentation
    #
    class BatchDetectKeyPhrasesResponse < Struct.new(
      :result_list,
      :error_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of calling the operation. The operation returns one object
    # for each document that is successfully processed by the operation.
    #
    # @!attribute [rw] index
    #   The zero-based index of the document in the input list.
    #   @return [Integer]
    #
    # @!attribute [rw] sentiment
    #   The sentiment detected in the document.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_score
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its sentiment detection.
    #   @return [Types::SentimentScore]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSentimentItemResult AWS API Documentation
    #
    class BatchDetectSentimentItemResult < Struct.new(
      :index,
      :sentiment,
      :sentiment_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectSentimentRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["CustomerInputString"], # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSentimentRequest AWS API Documentation
    #
    class BatchDetectSentimentRequest < Struct.new(
      :text_list,
      :language_code)
      SENSITIVE = [:text_list]
      include Aws::Structure
    end

    # @!attribute [rw] result_list
    #   A list of objects containing the results of the operation. The
    #   results are sorted in ascending order by the `Index` field and match
    #   the order of the documents in the input list. If all of the
    #   documents contain an error, the `ResultList` is empty.
    #   @return [Array<Types::BatchDetectSentimentItemResult>]
    #
    # @!attribute [rw] error_list
    #   A list containing one object for each document that contained an
    #   error. The results are sorted in ascending order by the `Index`
    #   field and match the order of the documents in the input list. If
    #   there are no errors in the batch, the `ErrorList` is empty.
    #   @return [Array<Types::BatchItemError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSentimentResponse AWS API Documentation
    #
    class BatchDetectSentimentResponse < Struct.new(
      :result_list,
      :error_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of calling the operation. The operation returns one object
    # that is successfully processed by the operation.
    #
    # @!attribute [rw] index
    #   The zero-based index of the document in the input list.
    #   @return [Integer]
    #
    # @!attribute [rw] syntax_tokens
    #   The syntax tokens for the words in the document, one token for each
    #   word.
    #   @return [Array<Types::SyntaxToken>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSyntaxItemResult AWS API Documentation
    #
    class BatchDetectSyntaxItemResult < Struct.new(
      :index,
      :syntax_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectSyntaxRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["CustomerInputString"], # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   following languages supported by Amazon Comprehend: German ("de"),
    #   English ("en"), Spanish ("es"), French ("fr"), Italian
    #   ("it"), or Portuguese ("pt"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSyntaxRequest AWS API Documentation
    #
    class BatchDetectSyntaxRequest < Struct.new(
      :text_list,
      :language_code)
      SENSITIVE = [:text_list]
      include Aws::Structure
    end

    # @!attribute [rw] result_list
    #   A list of objects containing the results of the operation. The
    #   results are sorted in ascending order by the `Index` field and match
    #   the order of the documents in the input list. If all of the
    #   documents contain an error, the `ResultList` is empty.
    #   @return [Array<Types::BatchDetectSyntaxItemResult>]
    #
    # @!attribute [rw] error_list
    #   A list containing one object for each document that contained an
    #   error. The results are sorted in ascending order by the `Index`
    #   field and match the order of the documents in the input list. If
    #   there are no errors in the batch, the `ErrorList` is empty.
    #   @return [Array<Types::BatchItemError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSyntaxResponse AWS API Documentation
    #
    class BatchDetectSyntaxResponse < Struct.new(
      :result_list,
      :error_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an error that occurred while processing a document in a
    # batch. The operation returns on `BatchItemError` object for each
    # document that contained an error.
    #
    # @!attribute [rw] index
    #   The zero-based index of the document in the input list.
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   The numeric error code of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A text description of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchItemError AWS API Documentation
    #
    class BatchItemError < Struct.new(
      :index,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of documents in the request exceeds the limit of 25. Try
    # your request again with fewer documents.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchSizeLimitExceededException AWS API Documentation
    #
    class BatchSizeLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the result metrics for the test data associated with an
    # documentation classifier.
    #
    # @!attribute [rw] accuracy
    #   The fraction of the labels that were correct recognized. It is
    #   computed by dividing the number of labels in the test documents that
    #   were correctly recognized by the total number of labels in the test
    #   documents.
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   A measure of the usefulness of the classifier results in the test
    #   data. High precision means that the classifier returned
    #   substantially more relevant results than irrelevant ones.
    #   @return [Float]
    #
    # @!attribute [rw] recall
    #   A measure of how complete the classifier results are for the test
    #   data. High recall means that the classifier returned most of the
    #   relevant results.
    #   @return [Float]
    #
    # @!attribute [rw] f1_score
    #   A measure of how accurate the classifier results are for the test
    #   data. It is derived from the `Precision` and `Recall` values. The
    #   `F1Score` is the harmonic average of the two scores. The highest
    #   score is 1, and the worst score is 0.
    #   @return [Float]
    #
    # @!attribute [rw] micro_precision
    #   A measure of the usefulness of the recognizer results in the test
    #   data. High precision means that the recognizer returned
    #   substantially more relevant results than irrelevant ones. Unlike the
    #   Precision metric which comes from averaging the precision of all
    #   available labels, this is based on the overall score of all
    #   precision scores added together.
    #   @return [Float]
    #
    # @!attribute [rw] micro_recall
    #   A measure of how complete the classifier results are for the test
    #   data. High recall means that the classifier returned most of the
    #   relevant results. Specifically, this indicates how many of the
    #   correct categories in the text that the model can predict. It is a
    #   percentage of correct categories in the text that can found. Instead
    #   of averaging the recall scores of all labels (as with Recall), micro
    #   Recall is based on the overall score of all recall scores added
    #   together.
    #   @return [Float]
    #
    # @!attribute [rw] micro_f1_score
    #   A measure of how accurate the classifier results are for the test
    #   data. It is a combination of the `Micro Precision` and `Micro
    #   Recall` values. The `Micro F1Score` is the harmonic mean of the two
    #   scores. The highest score is 1, and the worst score is 0.
    #   @return [Float]
    #
    # @!attribute [rw] hamming_loss
    #   Indicates the fraction of labels that are incorrectly predicted.
    #   Also seen as the fraction of wrong labels compared to the total
    #   number of labels. Scores closer to zero are better.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ClassifierEvaluationMetrics AWS API Documentation
    #
    class ClassifierEvaluationMetrics < Struct.new(
      :accuracy,
      :precision,
      :recall,
      :f1_score,
      :micro_precision,
      :micro_recall,
      :micro_f1_score,
      :hamming_loss)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a document classifier.
    #
    # @!attribute [rw] number_of_labels
    #   The number of labels in the input data.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_trained_documents
    #   The number of documents in the input data that were used to train
    #   the classifier. Typically this is 80 to 90 percent of the input
    #   documents.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_test_documents
    #   The number of documents in the input data that were used to test the
    #   classifier. Typically this is 10 to 20 percent of the input
    #   documents, up to 10,000 documents.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_metrics
    #   Describes the result metrics for the test data associated with an
    #   documentation classifier.
    #   @return [Types::ClassifierEvaluationMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ClassifierMetadata AWS API Documentation
    #
    class ClassifierMetadata < Struct.new(
      :number_of_labels,
      :number_of_trained_documents,
      :number_of_test_documents,
      :evaluation_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ClassifyDocumentRequest
    #   data as a hash:
    #
    #       {
    #         text: "CustomerInputString", # required
    #         endpoint_arn: "DocumentClassifierEndpointArn", # required
    #       }
    #
    # @!attribute [rw] text
    #   The document text to be analyzed.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ClassifyDocumentRequest AWS API Documentation
    #
    class ClassifyDocumentRequest < Struct.new(
      :text,
      :endpoint_arn)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] classes
    #   The classes used by the document being analyzed. These are used for
    #   multi-class trained models. Individual classes are mutually
    #   exclusive and each document is expected to have only a single class
    #   assigned to it. For example, an animal can be a dog or a cat, but
    #   not both at the same time.
    #   @return [Array<Types::DocumentClass>]
    #
    # @!attribute [rw] labels
    #   The labels used the document being analyzed. These are used for
    #   multi-label trained models. Individual labels represent different
    #   categories that are related in some manner and are not multually
    #   exclusive. For example, a movie can be just an action movie, or it
    #   can be an action movie, a science fiction movie, and a comedy, all
    #   at the same time.
    #   @return [Array<Types::DocumentLabel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ClassifyDocumentResponse AWS API Documentation
    #
    class ClassifyDocumentResponse < Struct.new(
      :classes,
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Concurrent modification of the tags associated with an Amazon
    # Comprehend resource is not supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDocumentClassifierRequest
    #   data as a hash:
    #
    #       {
    #         document_classifier_name: "ComprehendArnName", # required
    #         data_access_role_arn: "IamRoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         input_data_config: { # required
    #           data_format: "COMPREHEND_CSV", # accepts COMPREHEND_CSV, AUGMENTED_MANIFEST
    #           s3_uri: "S3Uri",
    #           label_delimiter: "LabelDelimiter",
    #           augmented_manifests: [
    #             {
    #               s3_uri: "S3Uri", # required
    #               attribute_names: ["AttributeNamesListItem"], # required
    #             },
    #           ],
    #         },
    #         output_data_config: {
    #           s3_uri: "S3Uri",
    #           kms_key_id: "KmsKeyId",
    #         },
    #         client_request_token: "ClientRequestTokenString",
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #         mode: "MULTI_CLASS", # accepts MULTI_CLASS, MULTI_LABEL
    #       }
    #
    # @!attribute [rw] document_classifier_name
    #   The name of the document classifier.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Management
    #   (IAM) role that grants Amazon Comprehend read access to your input
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be associated with the document classifier being created. A
    #   tag is a key-value pair that adds as a metadata to a resource used
    #   by Amazon Comprehend. For example, a tag with "Sales" as the key
    #   might be added to a resource to indicate its use by the sales
    #   department.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::DocumentClassifierInputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Enables the addition of output results configuration parameters for
    #   custom classifier jobs.
    #   @return [Types::DocumentClassifierOutputDataConfig]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   following languages supported by Amazon Comprehend: German ("de"),
    #   English ("en"), Spanish ("es"), French ("fr"), Italian
    #   ("it"), or Portuguese ("pt"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your custom
    #   classifier. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] mode
    #   Indicates the mode in which the classifier will be trained. The
    #   classifier can be trained in multi-class mode, which identifies one
    #   and only one class for each document, or multi-label mode, which
    #   identifies one or more labels for each document. In multi-label
    #   mode, multiple labels for an individual document are separated by a
    #   delimiter. The default delimiter between labels is a pipe (\|).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDocumentClassifierRequest AWS API Documentation
    #
    class CreateDocumentClassifierRequest < Struct.new(
      :document_classifier_name,
      :data_access_role_arn,
      :tags,
      :input_data_config,
      :output_data_config,
      :client_request_token,
      :language_code,
      :volume_kms_key_id,
      :vpc_config,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDocumentClassifierResponse AWS API Documentation
    #
    class CreateDocumentClassifierResponse < Struct.new(
      :document_classifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_name: "ComprehendEndpointName", # required
    #         model_arn: "ComprehendModelArn", # required
    #         desired_inference_units: 1, # required
    #         client_request_token: "ClientRequestTokenString",
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] endpoint_name
    #   This is the descriptive suffix that becomes part of the
    #   `EndpointArn` used for all subsequent requests to this resource.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Number (ARN) of the model to which the endpoint
    #   will be attached.
    #   @return [String]
    #
    # @!attribute [rw] desired_inference_units
    #   The desired number of inference units to be used by the model using
    #   this endpoint. Each inference unit represents of a throughput of 100
    #   characters per second.
    #   @return [Integer]
    #
    # @!attribute [rw] client_request_token
    #   An idempotency token provided by the customer. If this token matches
    #   a previous endpoint creation request, Amazon Comprehend will not
    #   return a `ResourceInUseException`.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the endpoint being created. A tag is a
    #   key-value pair that adds metadata to the endpoint. For example, a
    #   tag with "Sales" as the key might be added to an endpoint to
    #   indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEndpointRequest AWS API Documentation
    #
    class CreateEndpointRequest < Struct.new(
      :endpoint_name,
      :model_arn,
      :desired_inference_units,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEndpointResponse AWS API Documentation
    #
    class CreateEndpointResponse < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEntityRecognizerRequest
    #   data as a hash:
    #
    #       {
    #         recognizer_name: "ComprehendArnName", # required
    #         data_access_role_arn: "IamRoleArn", # required
    #         tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #         input_data_config: { # required
    #           data_format: "COMPREHEND_CSV", # accepts COMPREHEND_CSV, AUGMENTED_MANIFEST
    #           entity_types: [ # required
    #             {
    #               type: "EntityTypeName", # required
    #             },
    #           ],
    #           documents: {
    #             s3_uri: "S3Uri", # required
    #           },
    #           annotations: {
    #             s3_uri: "S3Uri", # required
    #           },
    #           entity_list: {
    #             s3_uri: "S3Uri", # required
    #           },
    #           augmented_manifests: [
    #             {
    #               s3_uri: "S3Uri", # required
    #               attribute_names: ["AttributeNamesListItem"], # required
    #             },
    #           ],
    #         },
    #         client_request_token: "ClientRequestTokenString",
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] recognizer_name
    #   The name given to the newly created recognizer. Recognizer names can
    #   be a maximum of 256 characters. Alphanumeric characters, hyphens (-)
    #   and underscores (\_) are allowed. The name must be unique in the
    #   account/region.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Management
    #   (IAM) role that grants Amazon Comprehend read access to your input
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be associated with the entity recognizer being created. A
    #   tag is a key-value pair that adds as a metadata to a resource used
    #   by Amazon Comprehend. For example, a tag with "Sales" as the key
    #   might be added to a resource to indicate its use by the sales
    #   department.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data. The S3 bucket
    #   containing the input data must be located in the same region as the
    #   entity recognizer being created.
    #   @return [Types::EntityRecognizerInputDataConfig]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   You can specify any of the following languages supported by Amazon
    #   Comprehend: English ("en"), Spanish ("es"), French ("fr"),
    #   Italian ("it"), German ("de"), or Portuguese ("pt"). All
    #   documents must be in the same language.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your custom
    #   entity recognizer. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEntityRecognizerRequest AWS API Documentation
    #
    class CreateEntityRecognizerRequest < Struct.new(
      :recognizer_name,
      :data_access_role_arn,
      :tags,
      :input_data_config,
      :client_request_token,
      :language_code,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity
    #   recognizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEntityRecognizerResponse AWS API Documentation
    #
    class CreateEntityRecognizerResponse < Struct.new(
      :entity_recognizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteDocumentClassifierRequest
    #   data as a hash:
    #
    #       {
    #         document_classifier_arn: "DocumentClassifierArn", # required
    #       }
    #
    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteDocumentClassifierRequest AWS API Documentation
    #
    class DeleteDocumentClassifierRequest < Struct.new(
      :document_classifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteDocumentClassifierResponse AWS API Documentation
    #
    class DeleteDocumentClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "ComprehendEndpointArn", # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteEndpointRequest AWS API Documentation
    #
    class DeleteEndpointRequest < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteEndpointResponse AWS API Documentation
    #
    class DeleteEndpointResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteEntityRecognizerRequest
    #   data as a hash:
    #
    #       {
    #         entity_recognizer_arn: "EntityRecognizerArn", # required
    #       }
    #
    # @!attribute [rw] entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity
    #   recognizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteEntityRecognizerRequest AWS API Documentation
    #
    class DeleteEntityRecognizerRequest < Struct.new(
      :entity_recognizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteEntityRecognizerResponse AWS API Documentation
    #
    class DeleteEntityRecognizerResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeDocumentClassificationJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassificationJobRequest AWS API Documentation
    #
    class DescribeDocumentClassificationJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_classification_job_properties
    #   An object that describes the properties associated with the document
    #   classification job.
    #   @return [Types::DocumentClassificationJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassificationJobResponse AWS API Documentation
    #
    class DescribeDocumentClassificationJobResponse < Struct.new(
      :document_classification_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDocumentClassifierRequest
    #   data as a hash:
    #
    #       {
    #         document_classifier_arn: "DocumentClassifierArn", # required
    #       }
    #
    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier. The operation returns this identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassifierRequest AWS API Documentation
    #
    class DescribeDocumentClassifierRequest < Struct.new(
      :document_classifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_classifier_properties
    #   An object that contains the properties associated with a document
    #   classifier.
    #   @return [Types::DocumentClassifierProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDocumentClassifierResponse AWS API Documentation
    #
    class DescribeDocumentClassifierResponse < Struct.new(
      :document_classifier_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDominantLanguageDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDominantLanguageDetectionJobRequest AWS API Documentation
    #
    class DescribeDominantLanguageDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dominant_language_detection_job_properties
    #   An object that contains the properties associated with a dominant
    #   language detection job.
    #   @return [Types::DominantLanguageDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDominantLanguageDetectionJobResponse AWS API Documentation
    #
    class DescribeDominantLanguageDetectionJobResponse < Struct.new(
      :dominant_language_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "ComprehendEndpointArn", # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEndpointRequest AWS API Documentation
    #
    class DescribeEndpointRequest < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_properties
    #   Describes information associated with the specific endpoint.
    #   @return [Types::EndpointProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEndpointResponse AWS API Documentation
    #
    class DescribeEndpointResponse < Struct.new(
      :endpoint_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEntitiesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntitiesDetectionJobRequest AWS API Documentation
    #
    class DescribeEntitiesDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities_detection_job_properties
    #   An object that contains the properties associated with an entities
    #   detection job.
    #   @return [Types::EntitiesDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntitiesDetectionJobResponse AWS API Documentation
    #
    class DescribeEntitiesDetectionJobResponse < Struct.new(
      :entities_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEntityRecognizerRequest
    #   data as a hash:
    #
    #       {
    #         entity_recognizer_arn: "EntityRecognizerArn", # required
    #       }
    #
    # @!attribute [rw] entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity
    #   recognizer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntityRecognizerRequest AWS API Documentation
    #
    class DescribeEntityRecognizerRequest < Struct.new(
      :entity_recognizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_recognizer_properties
    #   Describes information associated with an entity recognizer.
    #   @return [Types::EntityRecognizerProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEntityRecognizerResponse AWS API Documentation
    #
    class DescribeEntityRecognizerResponse < Struct.new(
      :entity_recognizer_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeKeyPhrasesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeKeyPhrasesDetectionJobRequest AWS API Documentation
    #
    class DescribeKeyPhrasesDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_phrases_detection_job_properties
    #   An object that contains the properties associated with a key phrases
    #   detection job.
    #   @return [Types::KeyPhrasesDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeKeyPhrasesDetectionJobResponse AWS API Documentation
    #
    class DescribeKeyPhrasesDetectionJobResponse < Struct.new(
      :key_phrases_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribePiiEntitiesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribePiiEntitiesDetectionJobRequest AWS API Documentation
    #
    class DescribePiiEntitiesDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pii_entities_detection_job_properties
    #   Provides information about a PII entities detection job.
    #   @return [Types::PiiEntitiesDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribePiiEntitiesDetectionJobResponse AWS API Documentation
    #
    class DescribePiiEntitiesDetectionJobResponse < Struct.new(
      :pii_entities_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSentimentDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   operation returns this identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeSentimentDetectionJobRequest AWS API Documentation
    #
    class DescribeSentimentDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sentiment_detection_job_properties
    #   An object that contains the properties associated with a sentiment
    #   detection job.
    #   @return [Types::SentimentDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeSentimentDetectionJobResponse AWS API Documentation
    #
    class DescribeSentimentDetectionJobResponse < Struct.new(
      :sentiment_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTopicsDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier assigned by the user to the detection job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTopicsDetectionJobRequest AWS API Documentation
    #
    class DescribeTopicsDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topics_detection_job_properties
    #   The list of properties for the requested job.
    #   @return [Types::TopicsDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTopicsDetectionJobResponse AWS API Documentation
    #
    class DescribeTopicsDetectionJobResponse < Struct.new(
      :topics_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectDominantLanguageRequest
    #   data as a hash:
    #
    #       {
    #         text: "CustomerInputString", # required
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string should contain at least 20
    #   characters and must contain fewer that 5,000 bytes of UTF-8 encoded
    #   characters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectDominantLanguageRequest AWS API Documentation
    #
    class DetectDominantLanguageRequest < Struct.new(
      :text)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] languages
    #   The languages that Amazon Comprehend detected in the input text. For
    #   each language, the response returns the RFC 5646 language code and
    #   the level of confidence that Amazon Comprehend has in the accuracy
    #   of its inference. For more information about RFC 5646, see [Tags for
    #   Identifying Languages][1] on the *IETF Tools* web site.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5646
    #   @return [Array<Types::DominantLanguage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectDominantLanguageResponse AWS API Documentation
    #
    class DetectDominantLanguageResponse < Struct.new(
      :languages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         text: "CustomerInputString", # required
    #         language_code: "en", # accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #         endpoint_arn: "EntityRecognizerEndpointArn",
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #
    #   If your request includes the endpoint for a custom entity
    #   recognition model, Amazon Comprehend uses the language of your
    #   custom model, and it ignores any language code that you specify
    #   here.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name of an endpoint that is associated with a
    #   custom entity recognition model. Provide an endpoint if you want to
    #   detect entities by using your own custom model instead of the
    #   default model that is used by Amazon Comprehend.
    #
    #   If you specify an endpoint, Amazon Comprehend uses the language of
    #   your custom model, and it ignores any language code that you provide
    #   in your request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntitiesRequest AWS API Documentation
    #
    class DetectEntitiesRequest < Struct.new(
      :text,
      :language_code,
      :endpoint_arn)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   A collection of entities identified in the input text. For each
    #   entity, the response provides the entity text, entity type, where
    #   the entity text begins and ends, and the level of confidence that
    #   Amazon Comprehend has in the detection.
    #
    #   If your request uses a custom entity recognition model, Amazon
    #   Comprehend detects the entities that the model is trained to
    #   recognize. Otherwise, it detects the default entity types. For a
    #   list of default entity types, see how-entities.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntitiesResponse AWS API Documentation
    #
    class DetectEntitiesResponse < Struct.new(
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectKeyPhrasesRequest
    #   data as a hash:
    #
    #       {
    #         text: "CustomerInputString", # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectKeyPhrasesRequest AWS API Documentation
    #
    class DetectKeyPhrasesRequest < Struct.new(
      :text,
      :language_code)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] key_phrases
    #   A collection of key phrases that Amazon Comprehend identified in the
    #   input text. For each key phrase, the response provides the text of
    #   the key phrase, where the key phrase begins and ends, and the level
    #   of confidence that Amazon Comprehend has in the accuracy of the
    #   detection.
    #   @return [Array<Types::KeyPhrase>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectKeyPhrasesResponse AWS API Documentation
    #
    class DetectKeyPhrasesResponse < Struct.new(
      :key_phrases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectPiiEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         text: "String", # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectPiiEntitiesRequest AWS API Documentation
    #
    class DetectPiiEntitiesRequest < Struct.new(
      :text,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   A collection of PII entities identified in the input text. For each
    #   entity, the response provides the entity type, where the entity text
    #   begins and ends, and the level of confidence that Amazon Comprehend
    #   has in the detection.
    #   @return [Array<Types::PiiEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectPiiEntitiesResponse AWS API Documentation
    #
    class DetectPiiEntitiesResponse < Struct.new(
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectSentimentRequest
    #   data as a hash:
    #
    #       {
    #         text: "CustomerInputString", # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSentimentRequest AWS API Documentation
    #
    class DetectSentimentRequest < Struct.new(
      :text,
      :language_code)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] sentiment
    #   The inferred sentiment that Amazon Comprehend has the highest level
    #   of confidence in.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_score
    #   An object that lists the sentiments, and their corresponding
    #   confidence levels.
    #   @return [Types::SentimentScore]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSentimentResponse AWS API Documentation
    #
    class DetectSentimentResponse < Struct.new(
      :sentiment,
      :sentiment_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectSyntaxRequest
    #   data as a hash:
    #
    #       {
    #         text: "CustomerInputString", # required
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 string. Each string must contain fewer that 5,000 bytes of
    #   UTF encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents. You can specify any of the
    #   following languages supported by Amazon Comprehend: German ("de"),
    #   English ("en"), Spanish ("es"), French ("fr"), Italian
    #   ("it"), or Portuguese ("pt").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSyntaxRequest AWS API Documentation
    #
    class DetectSyntaxRequest < Struct.new(
      :text,
      :language_code)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] syntax_tokens
    #   A collection of syntax tokens describing the text. For each token,
    #   the response provides the text, the token type, where the text
    #   begins and ends, and the level of confidence that Amazon Comprehend
    #   has that the token is correct. For a list of token types, see
    #   how-syntax.
    #   @return [Array<Types::SyntaxToken>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSyntaxResponse AWS API Documentation
    #
    class DetectSyntaxResponse < Struct.new(
      :syntax_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the class that categorizes the document being analyzed
    #
    # @!attribute [rw] name
    #   The name of the class.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The confidence score that Amazon Comprehend has this class correctly
    #   attributed.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClass AWS API Documentation
    #
    class DocumentClass < Struct.new(
      :name,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of document classification
    # jobs. For more information, see the operation. You can provide only
    # one filter parameter in each request.
    #
    # @note When making an API call, you may pass DocumentClassificationJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list based on job status. Returns only jobs with the
    #   specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassificationJobFilter AWS API Documentation
    #
    class DocumentClassificationJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a document classification job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the document classification job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned to the document classification job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the document classification job. If the status
    #   is `FAILED`, the `Message` field shows the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the document classification job was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the document classification job completed.
    #   @return [Time]
    #
    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   document classification job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   document classification job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your document
    #   classification job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassificationJobProperties AWS API Documentation
    #
    class DocumentClassificationJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :document_classifier_arn,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of document classifiers. You
    # can only specify one filtering parameter in a request. For more
    # information, see the operation.
    #
    # @note When making an API call, you may pass DocumentClassifierFilter
    #   data as a hash:
    #
    #       {
    #         status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] status
    #   Filters the list of classifiers based on status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of classifiers based on the time that the
    #   classifier was submitted for processing. Returns only classifiers
    #   submitted before the specified time. Classifiers are returned in
    #   ascending order, oldest to newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of classifiers based on the time that the
    #   classifier was submitted for processing. Returns only classifiers
    #   submitted after the specified time. Classifiers are returned in
    #   descending order, newest to oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierFilter AWS API Documentation
    #
    class DocumentClassifierFilter < Struct.new(
      :status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input properties for training a document classifier.
    #
    # For more information on how the input file is formatted, see
    # how-document-classification-training-data.
    #
    # @note When making an API call, you may pass DocumentClassifierInputDataConfig
    #   data as a hash:
    #
    #       {
    #         data_format: "COMPREHEND_CSV", # accepts COMPREHEND_CSV, AUGMENTED_MANIFEST
    #         s3_uri: "S3Uri",
    #         label_delimiter: "LabelDelimiter",
    #         augmented_manifests: [
    #           {
    #             s3_uri: "S3Uri", # required
    #             attribute_names: ["AttributeNamesListItem"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] data_format
    #   The format of your training data:
    #
    #   * `COMPREHEND_CSV`\: A two-column CSV file, where labels are
    #     provided in the first column, and documents are provided in the
    #     second. If you use this value, you must provide the `S3Uri`
    #     parameter in your request.
    #
    #   * `AUGMENTED_MANIFEST`\: A labeled dataset that is produced by
    #     Amazon SageMaker Ground Truth. This file is in JSON lines format.
    #     Each line is a complete JSON object that contains a training
    #     document and its associated labels.
    #
    #     If you use this value, you must provide the `AugmentedManifests`
    #     parameter in your request.
    #
    #   If you don't specify a value, Amazon Comprehend uses
    #   `COMPREHEND_CSV` as the default.
    #   @return [String]
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI for the input data. The S3 bucket must be in the
    #   same region as the API endpoint that you are calling. The URI can
    #   point to a single input file or it can provide the prefix for a
    #   collection of input files.
    #
    #   For example, if you use the URI `S3://bucketName/prefix`, if the
    #   prefix is a single file, Amazon Comprehend uses that file as input.
    #   If more than one file begins with the prefix, Amazon Comprehend uses
    #   all of them as input.
    #
    #   This parameter is required if you set `DataFormat` to
    #   `COMPREHEND_CSV`.
    #   @return [String]
    #
    # @!attribute [rw] label_delimiter
    #   Indicates the delimiter used to separate each label for training a
    #   multi-label classifier. The default delimiter between labels is a
    #   pipe (\|). You can use a different character as a delimiter (if
    #   it's an allowed character) by specifying it under Delimiter for
    #   labels. If the training documents use a delimiter other than the
    #   default or the delimiter you specify, the labels on that line will
    #   be combined to make a single unique label, such as LABELLABELLABEL.
    #   @return [String]
    #
    # @!attribute [rw] augmented_manifests
    #   A list of augmented manifest files that provide training data for
    #   your custom model. An augmented manifest file is a labeled dataset
    #   that is produced by Amazon SageMaker Ground Truth.
    #
    #   This parameter is required if you set `DataFormat` to
    #   `AUGMENTED_MANIFEST`.
    #   @return [Array<Types::AugmentedManifestsListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierInputDataConfig AWS API Documentation
    #
    class DocumentClassifierInputDataConfig < Struct.new(
      :data_format,
      :s3_uri,
      :label_delimiter,
      :augmented_manifests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides output results configuration parameters for custom classifier
    # jobs.
    #
    # @note When making an API call, you may pass DocumentClassifierOutputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri",
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] s3_uri
    #   When you use the `OutputDataConfig` object while creating a custom
    #   classifier, you specify the Amazon S3 location where you want to
    #   write the confusion matrix. The URI must be in the same region as
    #   the API endpoint that you are calling. The location is used as the
    #   prefix for the actual location of this output file.
    #
    #   When the custom classifier job is finished, the service creates the
    #   output file in a directory specific to the job. The `S3Uri` field
    #   contains the location of the output file, called `output.tar.gz`. It
    #   is a compressed archive that contains the confusion matrix.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt the output results from an analysis job.
    #   The KmsKeyId can be one of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * KMS Key Alias: `"alias/ExampleAlias"`
    #
    #   * ARN of a KMS Key Alias:
    #     `"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierOutputDataConfig AWS API Documentation
    #
    class DocumentClassifierOutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a document classifier.
    #
    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code for the language of the documents that the
    #   classifier was trained on.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the document classifier. If the status is `TRAINED`
    #   the classifier is ready to use. If the status is `FAILED` you can
    #   see additional information about why the classifier wasn't trained
    #   in the `Message` field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Additional information about the status of the classifier.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the document classifier was submitted for training.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that training the document classifier completed.
    #   @return [Time]
    #
    # @!attribute [rw] training_start_time
    #   Indicates the time when the training starts on documentation
    #   classifiers. You are billed for the time interval between this time
    #   and the value of TrainingEndTime.
    #   @return [Time]
    #
    # @!attribute [rw] training_end_time
    #   The time that training of the document classifier was completed.
    #   Indicates the time when the training completes on documentation
    #   classifiers. You are billed for the time interval between this time
    #   and the value of TrainingStartTime.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   document classifier for training.
    #   @return [Types::DocumentClassifierInputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Provides output results configuration parameters for custom
    #   classifier jobs.
    #   @return [Types::DocumentClassifierOutputDataConfig]
    #
    # @!attribute [rw] classifier_metadata
    #   Information about the document classifier, including the number of
    #   documents used for training the classifier, the number of documents
    #   used for test the classifier, and an accuracy rating.
    #   @return [Types::ClassifierMetadata]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Management
    #   (IAM) role that grants Amazon Comprehend read access to your input
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your custom classifier.
    #   For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] mode
    #   Indicates the mode in which the specific classifier was trained.
    #   This also indicates the format of input documents and the format of
    #   the confusion matrix. Each classifier can only be trained in one
    #   mode and this cannot be changed once the classifier is trained.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierProperties AWS API Documentation
    #
    class DocumentClassifierProperties < Struct.new(
      :document_classifier_arn,
      :language_code,
      :status,
      :message,
      :submit_time,
      :end_time,
      :training_start_time,
      :training_end_time,
      :input_data_config,
      :output_data_config,
      :classifier_metadata,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config,
      :mode)
      SENSITIVE = [:classifier_metadata]
      include Aws::Structure
    end

    # Specifies one of the label or labels that categorize the document
    # being analyzed.
    #
    # @!attribute [rw] name
    #   The name of the label.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The confidence score that Amazon Comprehend has this label correctly
    #   attributed.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentLabel AWS API Documentation
    #
    class DocumentLabel < Struct.new(
      :name,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the code for the dominant language in the input text and the
    # level of confidence that Amazon Comprehend has in the accuracy of the
    # detection.
    #
    # @!attribute [rw] language_code
    #   The RFC 5646 language code for the dominant language. For more
    #   information about RFC 5646, see [Tags for Identifying Languages][1]
    #   on the *IETF Tools* web site.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc5646
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of the detection.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DominantLanguage AWS API Documentation
    #
    class DominantLanguage < Struct.new(
      :language_code,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of dominant language
    # detection jobs. For more information, see the operation.
    #
    # @note When making an API call, you may pass DominantLanguageDetectionJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of jobs based on job status. Returns only jobs with
    #   the specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DominantLanguageDetectionJobFilter AWS API Documentation
    #
    class DominantLanguageDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a dominant language detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the dominant language detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned to the dominant language detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the dominant language detection job. If the
    #   status is `FAILED`, the `Message` field shows the reason for the
    #   failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description for the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the dominant language detection job was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the dominant language detection job completed.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   dominant language detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   dominant language detection job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon Comprehend read
    #   access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your dominant language
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DominantLanguageDetectionJobProperties AWS API Documentation
    #
    class DominantLanguageDetectionJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The filter used to determine which endpoints are are returned. You can
    # filter jobs on their name, model, status, or the date and time that
    # they were created. You can only set one filter at a time.
    #
    # @note When making an API call, you may pass EndpointFilter
    #   data as a hash:
    #
    #       {
    #         model_arn: "ComprehendModelArn",
    #         status: "CREATING", # accepts CREATING, DELETING, FAILED, IN_SERVICE, UPDATING
    #         creation_time_before: Time.now,
    #         creation_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Number (ARN) of the model to which the endpoint
    #   is attached.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the endpoint being returned. Possible values
    #   are: Creating, Ready, Updating, Deleting, Failed.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_before
    #   Specifies a date before which the returned endpoint or endpoints
    #   were created.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_after
    #   Specifies a date after which the returned endpoint or endpoints were
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EndpointFilter AWS API Documentation
    #
    class EndpointFilter < Struct.new(
      :model_arn,
      :status,
      :creation_time_before,
      :creation_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies information about the specified endpoint.
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Specifies the status of the endpoint. Because the endpoint updates
    #   and creation are asynchronous, so customers will need to wait for
    #   the endpoint to be `Ready` status before making inference requests.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   Specifies a reason for failure in cases of `Failed` status.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Number (ARN) of the model to which the endpoint
    #   is attached.
    #   @return [String]
    #
    # @!attribute [rw] desired_inference_units
    #   The desired number of inference units to be used by the model using
    #   this endpoint. Each inference unit represents of a throughput of 100
    #   characters per second.
    #   @return [Integer]
    #
    # @!attribute [rw] current_inference_units
    #   The number of inference units currently used by the model using this
    #   endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The creation date and time of the endpoint.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the endpoint was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EndpointProperties AWS API Documentation
    #
    class EndpointProperties < Struct.new(
      :endpoint_arn,
      :status,
      :message,
      :model_arn,
      :desired_inference_units,
      :current_inference_units,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of dominant language
    # detection jobs. For more information, see the operation.
    #
    # @note When making an API call, you may pass EntitiesDetectionJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of jobs based on job status. Returns only jobs with
    #   the specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntitiesDetectionJobFilter AWS API Documentation
    #
    class EntitiesDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an entities detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the entities detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned the entities detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the entities detection job. If the status is
    #   `FAILED`, the `Message` field shows the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the entities detection job was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the entities detection job completed
    #   @return [Time]
    #
    # @!attribute [rw] entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity
    #   recognizer.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   entities detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   entities detection job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon Comprehend read
    #   access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your entity detection
    #   job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntitiesDetectionJobProperties AWS API Documentation
    #
    class EntitiesDetectionJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :entity_recognizer_arn,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an entity.
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of the detection.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The entity's type.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text of the entity.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset
    #   A character offset in the input text that shows where the entity
    #   begins (the first character is at position 0). The offset returns
    #   the position of each UTF-8 code point in the string. A *code point*
    #   is the abstract character from a particular graphical
    #   representation. For example, a multi-byte UTF-8 character maps to a
    #   single code point.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   A character offset in the input text that shows where the entity
    #   ends. The offset returns the position of each UTF-8 code point in
    #   the string. A *code point* is the abstract character from a
    #   particular graphical representation. For example, a multi-byte UTF-8
    #   character maps to a single code point.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :score,
      :type,
      :text,
      :begin_offset,
      :end_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the annotations associated with a entity recognizer.
    #
    # @note When making an API call, you may pass EntityRecognizerAnnotations
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the annotations for an entity
    #   recognizer are located. The URI must be in the same region as the
    #   API endpoint that you are calling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerAnnotations AWS API Documentation
    #
    class EntityRecognizerAnnotations < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the training documents submitted with an entity recognizer.
    #
    # @note When making an API call, you may pass EntityRecognizerDocuments
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the training documents for an
    #   entity recognizer are located. The URI must be in the same region as
    #   the API endpoint that you are calling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerDocuments AWS API Documentation
    #
    class EntityRecognizerDocuments < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the entity recognizer submitted with an entity recognizer.
    #
    # @note When making an API call, you may pass EntityRecognizerEntityList
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #       }
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the entity list is located.
    #   The URI must be in the same region as the API endpoint that you are
    #   calling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerEntityList AWS API Documentation
    #
    class EntityRecognizerEntityList < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about the accuracy of an entity recognizer.
    #
    # @!attribute [rw] precision
    #   A measure of the usefulness of the recognizer results in the test
    #   data. High precision means that the recognizer returned
    #   substantially more relevant results than irrelevant ones.
    #   @return [Float]
    #
    # @!attribute [rw] recall
    #   A measure of how complete the recognizer results are for the test
    #   data. High recall means that the recognizer returned most of the
    #   relevant results.
    #   @return [Float]
    #
    # @!attribute [rw] f1_score
    #   A measure of how accurate the recognizer results are for the test
    #   data. It is derived from the `Precision` and `Recall` values. The
    #   `F1Score` is the harmonic average of the two scores. The highest
    #   score is 1, and the worst score is 0.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerEvaluationMetrics AWS API Documentation
    #
    class EntityRecognizerEvaluationMetrics < Struct.new(
      :precision,
      :recall,
      :f1_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of entity recognizers. You
    # can only specify one filtering parameter in a request. For more
    # information, see the operation./&gt;
    #
    # @note When making an API call, you may pass EntityRecognizerFilter
    #   data as a hash:
    #
    #       {
    #         status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] status
    #   The status of an entity recognizer.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of entities based on the time that the list was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of entities based on the time that the list was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerFilter AWS API Documentation
    #
    class EntityRecognizerFilter < Struct.new(
      :status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the format and location of the input data.
    #
    # @note When making an API call, you may pass EntityRecognizerInputDataConfig
    #   data as a hash:
    #
    #       {
    #         data_format: "COMPREHEND_CSV", # accepts COMPREHEND_CSV, AUGMENTED_MANIFEST
    #         entity_types: [ # required
    #           {
    #             type: "EntityTypeName", # required
    #           },
    #         ],
    #         documents: {
    #           s3_uri: "S3Uri", # required
    #         },
    #         annotations: {
    #           s3_uri: "S3Uri", # required
    #         },
    #         entity_list: {
    #           s3_uri: "S3Uri", # required
    #         },
    #         augmented_manifests: [
    #           {
    #             s3_uri: "S3Uri", # required
    #             attribute_names: ["AttributeNamesListItem"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] data_format
    #   The format of your training data:
    #
    #   * `COMPREHEND_CSV`\: A CSV file that supplements your training
    #     documents. The CSV file contains information about the custom
    #     entities that your trained model will detect. The required format
    #     of the file depends on whether you are providing annotations or an
    #     entity list.
    #
    #     If you use this value, you must provide your CSV file by using
    #     either the `Annotations` or `EntityList` parameters. You must
    #     provide your training documents by using the `Documents`
    #     parameter.
    #
    #   * `AUGMENTED_MANIFEST`\: A labeled dataset that is produced by
    #     Amazon SageMaker Ground Truth. This file is in JSON lines format.
    #     Each line is a complete JSON object that contains a training
    #     document and its labels. Each label annotates a named entity in
    #     the training document.
    #
    #     If you use this value, you must provide the `AugmentedManifests`
    #     parameter in your request.
    #
    #   If you don't specify a value, Amazon Comprehend uses
    #   `COMPREHEND_CSV` as the default.
    #   @return [String]
    #
    # @!attribute [rw] entity_types
    #   The entity types in the labeled training data that Amazon Comprehend
    #   uses to train the custom entity recognizer. Any entity types that
    #   you don't specify are ignored.
    #
    #   A maximum of 25 entity types can be used at one time to train an
    #   entity recognizer. Entity types must not contain the following
    #   invalid characters: \\n (line break), \\\\n (escaped line break),
    #   \\r (carriage return), \\\\r (escaped carriage return), \\t (tab),
    #   \\\\t (escaped tab), space, and , (comma).
    #   @return [Array<Types::EntityTypesListItem>]
    #
    # @!attribute [rw] documents
    #   The S3 location of the folder that contains the training documents
    #   for your custom entity recognizer.
    #
    #   This parameter is required if you set `DataFormat` to
    #   `COMPREHEND_CSV`.
    #   @return [Types::EntityRecognizerDocuments]
    #
    # @!attribute [rw] annotations
    #   The S3 location of the CSV file that annotates your training
    #   documents.
    #   @return [Types::EntityRecognizerAnnotations]
    #
    # @!attribute [rw] entity_list
    #   The S3 location of the CSV file that has the entity list for your
    #   custom entity recognizer.
    #   @return [Types::EntityRecognizerEntityList]
    #
    # @!attribute [rw] augmented_manifests
    #   A list of augmented manifest files that provide training data for
    #   your custom model. An augmented manifest file is a labeled dataset
    #   that is produced by Amazon SageMaker Ground Truth.
    #
    #   This parameter is required if you set `DataFormat` to
    #   `AUGMENTED_MANIFEST`.
    #   @return [Array<Types::AugmentedManifestsListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerInputDataConfig AWS API Documentation
    #
    class EntityRecognizerInputDataConfig < Struct.new(
      :data_format,
      :entity_types,
      :documents,
      :annotations,
      :entity_list,
      :augmented_manifests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an entity recognizer.
    #
    # @!attribute [rw] number_of_trained_documents
    #   The number of documents in the input data that were used to train
    #   the entity recognizer. Typically this is 80 to 90 percent of the
    #   input documents.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_test_documents
    #   The number of documents in the input data that were used to test the
    #   entity recognizer. Typically this is 10 to 20 percent of the input
    #   documents.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_metrics
    #   Detailed information about the accuracy of an entity recognizer.
    #   @return [Types::EntityRecognizerEvaluationMetrics]
    #
    # @!attribute [rw] entity_types
    #   Entity types from the metadata of an entity recognizer.
    #   @return [Array<Types::EntityRecognizerMetadataEntityTypesListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerMetadata AWS API Documentation
    #
    class EntityRecognizerMetadata < Struct.new(
      :number_of_trained_documents,
      :number_of_test_documents,
      :evaluation_metrics,
      :entity_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Individual item from the list of entity types in the metadata of an
    # entity recognizer.
    #
    # @!attribute [rw] type
    #   Type of entity from the list of entity types in the metadata of an
    #   entity recognizer.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_metrics
    #   Detailed information about the accuracy of the entity recognizer for
    #   a specific item on the list of entity types.
    #   @return [Types::EntityTypesEvaluationMetrics]
    #
    # @!attribute [rw] number_of_train_mentions
    #   Indicates the number of times the given entity type was seen in the
    #   training data.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerMetadataEntityTypesListItem AWS API Documentation
    #
    class EntityRecognizerMetadataEntityTypesListItem < Struct.new(
      :type,
      :evaluation_metrics,
      :number_of_train_mentions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes information about an entity recognizer.
    #
    # @!attribute [rw] entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity
    #   recognizer.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. All documents must be in the
    #   same language. Only English ("en") is currently supported.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Provides the status of the entity recognizer.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the recognizer.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the recognizer was submitted for processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the recognizer creation completed.
    #   @return [Time]
    #
    # @!attribute [rw] training_start_time
    #   The time that training of the entity recognizer started.
    #   @return [Time]
    #
    # @!attribute [rw] training_end_time
    #   The time that training of the entity recognizer was completed.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data properties of an entity recognizer.
    #   @return [Types::EntityRecognizerInputDataConfig]
    #
    # @!attribute [rw] recognizer_metadata
    #   Provides information about an entity recognizer.
    #   @return [Types::EntityRecognizerMetadata]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Management
    #   (IAM) role that grants Amazon Comprehend read access to your input
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your custom entity
    #   recognizer. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerProperties AWS API Documentation
    #
    class EntityRecognizerProperties < Struct.new(
      :entity_recognizer_arn,
      :language_code,
      :status,
      :message,
      :submit_time,
      :end_time,
      :training_start_time,
      :training_end_time,
      :input_data_config,
      :recognizer_metadata,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = [:recognizer_metadata]
      include Aws::Structure
    end

    # Detailed information about the accuracy of an entity recognizer for a
    # specific entity type.
    #
    # @!attribute [rw] precision
    #   A measure of the usefulness of the recognizer results for a specific
    #   entity type in the test data. High precision means that the
    #   recognizer returned substantially more relevant results than
    #   irrelevant ones.
    #   @return [Float]
    #
    # @!attribute [rw] recall
    #   A measure of how complete the recognizer results are for a specific
    #   entity type in the test data. High recall means that the recognizer
    #   returned most of the relevant results.
    #   @return [Float]
    #
    # @!attribute [rw] f1_score
    #   A measure of how accurate the recognizer results are for for a
    #   specific entity type in the test data. It is derived from the
    #   `Precision` and `Recall` values. The `F1Score` is the harmonic
    #   average of the two scores. The highest score is 1, and the worst
    #   score is 0.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityTypesEvaluationMetrics AWS API Documentation
    #
    class EntityTypesEvaluationMetrics < Struct.new(
      :precision,
      :recall,
      :f1_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entity type within a labeled training dataset that Amazon
    # Comprehend uses to train a custom entity recognizer.
    #
    # @note When making an API call, you may pass EntityTypesListItem
    #   data as a hash:
    #
    #       {
    #         type: "EntityTypeName", # required
    #       }
    #
    # @!attribute [rw] type
    #   An entity type within a labeled training dataset that Amazon
    #   Comprehend uses to train a custom entity recognizer.
    #
    #   Entity types must not contain the following invalid characters: \\n
    #   (line break), \\\\n (escaped line break, \\r (carriage return),
    #   \\\\r (escaped carriage return), \\t (tab), \\\\t (escaped tab),
    #   space, and , (comma).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityTypesListItem AWS API Documentation
    #
    class EntityTypesListItem < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input properties for a topic detection job.
    #
    # @note When making an API call, you may pass InputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #       }
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI for the input data. The URI must be in same region
    #   as the API endpoint that you are calling. The URI can point to a
    #   single input file or it can provide the prefix for a collection of
    #   data files.
    #
    #   For example, if you use the URI `S3://bucketName/prefix`, if the
    #   prefix is a single file, Amazon Comprehend uses that file as input.
    #   If more than one file begins with the prefix, Amazon Comprehend uses
    #   all of them as input.
    #   @return [String]
    #
    # @!attribute [rw] input_format
    #   Specifies how the text in an input file should be processed:
    #
    #   * `ONE_DOC_PER_FILE` - Each file is considered a separate document.
    #     Use this option when you are processing large documents, such as
    #     newspaper articles or scientific papers.
    #
    #   * `ONE_DOC_PER_LINE` - Each line in a file is considered a separate
    #     document. Use this option when you are processing many short
    #     documents, such as text messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_uri,
      :input_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/InternalServerException AWS API Documentation
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/InvalidFilterException AWS API Documentation
    #
    class InvalidFilterException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified job was not found. Check the job ID and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/JobNotFoundException AWS API Documentation
    #
    class JobNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a key noun phrase.
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of the detection.
    #   @return [Float]
    #
    # @!attribute [rw] text
    #   The text of a key noun phrase.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset
    #   A character offset in the input text that shows where the key phrase
    #   begins (the first character is at position 0). The offset returns
    #   the position of each UTF-8 code point in the string. A *code point*
    #   is the abstract character from a particular graphical
    #   representation. For example, a multi-byte UTF-8 character maps to a
    #   single code point.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   A character offset in the input text where the key phrase ends. The
    #   offset returns the position of each UTF-8 code point in the string.
    #   A `code point` is the abstract character from a particular graphical
    #   representation. For example, a multi-byte UTF-8 character maps to a
    #   single code point.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/KeyPhrase AWS API Documentation
    #
    class KeyPhrase < Struct.new(
      :score,
      :text,
      :begin_offset,
      :end_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of dominant language
    # detection jobs. For more information, see the operation.
    #
    # @note When making an API call, you may pass KeyPhrasesDetectionJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of jobs based on job status. Returns only jobs with
    #   the specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/KeyPhrasesDetectionJobFilter AWS API Documentation
    #
    class KeyPhrasesDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a key phrases detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the key phrases detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned the key phrases detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the key phrases detection job. If the status
    #   is `FAILED`, the `Message` field shows the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the key phrases detection job was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the key phrases detection job completed.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   key phrases detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   key phrases detection job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon Comprehend read
    #   access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your key phrases
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/KeyPhrasesDetectionJobProperties AWS API Documentation
    #
    class KeyPhrasesDetectionJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # The KMS customer managed key (CMK) entered cannot be validated. Verify
    # the key and re-enter it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/KmsKeyValidationException AWS API Documentation
    #
    class KmsKeyValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDocumentClassificationJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   names, status, or the date and time that they were submitted. You
    #   can only set one filter at a time.
    #   @return [Types::DocumentClassificationJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassificationJobsRequest AWS API Documentation
    #
    class ListDocumentClassificationJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_classification_job_properties_list
    #   A list containing the properties of each job returned.
    #   @return [Array<Types::DocumentClassificationJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassificationJobsResponse AWS API Documentation
    #
    class ListDocumentClassificationJobsResponse < Struct.new(
      :document_classification_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDocumentClassifiersRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::DocumentClassifierFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassifiersRequest AWS API Documentation
    #
    class ListDocumentClassifiersRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_classifier_properties_list
    #   A list containing the properties of each job returned.
    #   @return [Array<Types::DocumentClassifierProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassifiersResponse AWS API Documentation
    #
    class ListDocumentClassifiersResponse < Struct.new(
      :document_classifier_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListDominantLanguageDetectionJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters that jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::DominantLanguageDetectionJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDominantLanguageDetectionJobsRequest AWS API Documentation
    #
    class ListDominantLanguageDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dominant_language_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::DominantLanguageDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDominantLanguageDetectionJobsResponse AWS API Documentation
    #
    class ListDominantLanguageDetectionJobsResponse < Struct.new(
      :dominant_language_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEndpointsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           model_arn: "ComprehendModelArn",
    #           status: "CREATING", # accepts CREATING, DELETING, FAILED, IN_SERVICE, UPDATING
    #           creation_time_before: Time.now,
    #           creation_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the endpoints that are returned. You can filter endpoints on
    #   their name, model, status, or the date and time that they were
    #   created. You can only set one filter at a time.
    #   @return [Types::EndpointFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEndpointsRequest AWS API Documentation
    #
    class ListEndpointsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_properties_list
    #   Displays a list of endpoint properties being retrieved by the
    #   service in response to the request.
    #   @return [Array<Types::EndpointProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEndpointsResponse AWS API Documentation
    #
    class ListEndpointsResponse < Struct.new(
      :endpoint_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEntitiesDetectionJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::EntitiesDetectionJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntitiesDetectionJobsRequest AWS API Documentation
    #
    class ListEntitiesDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entities_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::EntitiesDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntitiesDetectionJobsResponse AWS API Documentation
    #
    class ListEntitiesDetectionJobsResponse < Struct.new(
      :entities_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEntityRecognizersRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           status: "SUBMITTED", # accepts SUBMITTED, TRAINING, DELETING, STOP_REQUESTED, STOPPED, IN_ERROR, TRAINED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the list of entities returned. You can filter on `Status`,
    #   `SubmitTimeBefore`, or `SubmitTimeAfter`. You can only set one
    #   filter at a time.
    #   @return [Types::EntityRecognizerFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return on each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntityRecognizersRequest AWS API Documentation
    #
    class ListEntityRecognizersRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_recognizer_properties_list
    #   The list of properties of an entity recognizer.
    #   @return [Array<Types::EntityRecognizerProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntityRecognizersResponse AWS API Documentation
    #
    class ListEntityRecognizersResponse < Struct.new(
      :entity_recognizer_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListKeyPhrasesDetectionJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::KeyPhrasesDetectionJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListKeyPhrasesDetectionJobsRequest AWS API Documentation
    #
    class ListKeyPhrasesDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] key_phrases_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::KeyPhrasesDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListKeyPhrasesDetectionJobsResponse AWS API Documentation
    #
    class ListKeyPhrasesDetectionJobsResponse < Struct.new(
      :key_phrases_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPiiEntitiesDetectionJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::PiiEntitiesDetectionJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListPiiEntitiesDetectionJobsRequest AWS API Documentation
    #
    class ListPiiEntitiesDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pii_entities_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::PiiEntitiesDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListPiiEntitiesDetectionJobsResponse AWS API Documentation
    #
    class ListPiiEntitiesDetectionJobsResponse < Struct.new(
      :pii_entities_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSentimentDetectionJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::SentimentDetectionJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListSentimentDetectionJobsRequest AWS API Documentation
    #
    class ListSentimentDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sentiment_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::SentimentDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListSentimentDetectionJobsResponse AWS API Documentation
    #
    class ListSentimentDetectionJobsResponse < Struct.new(
      :sentiment_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ComprehendArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend
    #   resource you are querying.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend
    #   resource you are querying.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags associated with the Amazon Comprehend resource being queried. A
    #   tag is a key-value pair that adds as a metadata to a resource used
    #   by Amazon Comprehend. For example, a tag with "Sales" as the key
    #   might be added to a resource to indicate its use by the sales
    #   department.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTopicsDetectionJobsRequest
    #   data as a hash:
    #
    #       {
    #         filter: {
    #           job_name: "JobName",
    #           job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #           submit_time_before: Time.now,
    #           submit_time_after: Time.now,
    #         },
    #         next_token: "String",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] filter
    #   Filters the jobs that are returned. Jobs can be filtered on their
    #   name, status, or the date and time that they were submitted. You can
    #   set only one filter at a time.
    #   @return [Types::TopicsDetectionJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTopicsDetectionJobsRequest AWS API Documentation
    #
    class ListTopicsDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] topics_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::TopicsDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTopicsDetectionJobsResponse AWS API Documentation
    #
    class ListTopicsDetectionJobsResponse < Struct.new(
      :topics_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration parameters for the output of topic detection
    # jobs.
    #
    # @note When making an API call, you may pass OutputDataConfig
    #   data as a hash:
    #
    #       {
    #         s3_uri: "S3Uri", # required
    #         kms_key_id: "KmsKeyId",
    #       }
    #
    # @!attribute [rw] s3_uri
    #   When you use the `OutputDataConfig` object with asynchronous
    #   operations, you specify the Amazon S3 location where you want to
    #   write the output data. The URI must be in the same region as the API
    #   endpoint that you are calling. The location is used as the prefix
    #   for the actual location of the output file.
    #
    #   When the topic detection job is finished, the service creates an
    #   output file in a directory specific to the job. The `S3Uri` field
    #   contains the location of the output file, called `output.tar.gz`. It
    #   is a compressed archive that contains the ouput of the operation.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt the output results from an analysis job.
    #   The KmsKeyId can be one of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * KMS Key Alias: `"alias/ExampleAlias"`
    #
    #   * ARN of a KMS Key Alias:
    #     `"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the part of speech represented by the token and gives the
    # confidence that Amazon Comprehend has that the part of speech was
    # correctly identified. For more information about the parts of speech
    # that Amazon Comprehend can identify, see how-syntax.
    #
    # @!attribute [rw] tag
    #   Identifies the part of speech that the token represents.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The confidence that Amazon Comprehend has that the part of speech
    #   was correctly identified.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PartOfSpeechTag AWS API Documentation
    #
    class PartOfSpeechTag < Struct.new(
      :tag,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of PII entity detection
    # jobs.
    #
    # @note When making an API call, you may pass PiiEntitiesDetectionJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of jobs based on job status. Returns only jobs with
    #   the specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PiiEntitiesDetectionJobFilter AWS API Documentation
    #
    class PiiEntitiesDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a PII entities detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the PII entities detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned the PII entities detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the PII entities detection job. If the status
    #   is `FAILED`, the `Message` field shows the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the PII entities detection job was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the PII entities detection job completed.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input properties for a PII entities detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   PII entities detection job.
    #   @return [Types::PiiOutputDataConfig]
    #
    # @!attribute [rw] redaction_config
    #   Provides configuration parameters for PII entity redaction.
    #
    #   This parameter is required if you set the `Mode` parameter to
    #   `ONLY_REDACTION`. In that case, you must provide a `RedactionConfig`
    #   definition that includes the `PiiEntityTypes` parameter.
    #   @return [Types::RedactionConfig]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon Comprehend read
    #   access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] mode
    #   Specifies whether the output provides the locations (offsets) of PII
    #   entities or a file in which PII entities are redacted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PiiEntitiesDetectionJobProperties AWS API Documentation
    #
    class PiiEntitiesDetectionJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :redaction_config,
      :language_code,
      :data_access_role_arn,
      :mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a PII entity.
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of the detection.
    #   @return [Float]
    #
    # @!attribute [rw] type
    #   The entity's type.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset
    #   A character offset in the input text that shows where the PII entity
    #   begins (the first character is at position 0). The offset returns
    #   the position of each UTF-8 code point in the string. A *code point*
    #   is the abstract character from a particular graphical
    #   representation. For example, a multi-byte UTF-8 character maps to a
    #   single code point.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   A character offset in the input text that shows where the PII entity
    #   ends. The offset returns the position of each UTF-8 code point in
    #   the string. A *code point* is the abstract character from a
    #   particular graphical representation. For example, a multi-byte UTF-8
    #   character maps to a single code point.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PiiEntity AWS API Documentation
    #
    class PiiEntity < Struct.new(
      :score,
      :type,
      :begin_offset,
      :end_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration parameters for the output of PII entity
    # detection jobs.
    #
    # @!attribute [rw] s3_uri
    #   When you use the `PiiOutputDataConfig` object with asynchronous
    #   operations, you specify the Amazon S3 location where you want to
    #   write the output data.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt the output results from an analysis job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PiiOutputDataConfig AWS API Documentation
    #
    class PiiOutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration parameters for PII entity redaction.
    #
    # @note When making an API call, you may pass RedactionConfig
    #   data as a hash:
    #
    #       {
    #         pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, DATE_TIME, PASSPORT_NUMBER, DRIVER_ID, URL, AGE, USERNAME, PASSWORD, AWS_ACCESS_KEY, AWS_SECRET_KEY, IP_ADDRESS, MAC_ADDRESS, ALL
    #         mask_mode: "MASK", # accepts MASK, REPLACE_WITH_PII_ENTITY_TYPE
    #         mask_character: "MaskCharacter",
    #       }
    #
    # @!attribute [rw] pii_entity_types
    #   An array of the types of PII entities that Amazon Comprehend detects
    #   in the input text for your request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] mask_mode
    #   Specifies whether the PII entity is redacted with the mask character
    #   or the entity type.
    #   @return [String]
    #
    # @!attribute [rw] mask_character
    #   A character that replaces each character in the redacted PII entity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/RedactionConfig AWS API Documentation
    #
    class RedactionConfig < Struct.new(
      :pii_entity_types,
      :mask_mode,
      :mask_character)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource name is already in use. Use a different name
    # and try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The maximum number of resources per account has been exceeded. Review
    # the resources, and then try your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource ARN was not found. Check the ARN and try your
    # request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is not available. Check the resource and try
    # your request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ResourceUnavailableException AWS API Documentation
    #
    class ResourceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of dominant language
    # detection jobs. For more information, see the operation.
    #
    # @note When making an API call, you may pass SentimentDetectionJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of jobs based on job status. Returns only jobs with
    #   the specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted before the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Returns only jobs submitted after the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/SentimentDetectionJobFilter AWS API Documentation
    #
    class SentimentDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a sentiment detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the sentiment detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned to the sentiment detection job
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the sentiment detection job. If the status is
    #   `FAILED`, the `Messages` field shows the reason for the failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the sentiment detection job was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the sentiment detection job ended.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   sentiment detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   sentiment detection job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) that gives Amazon Comprehend read
    #   access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your sentiment detection
    #   job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/SentimentDetectionJobProperties AWS API Documentation
    #
    class SentimentDetectionJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the level of confidence that Amazon Comprehend has in the
    # accuracy of its detection of sentiments.
    #
    # @!attribute [rw] positive
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `POSITIVE` sentiment.
    #   @return [Float]
    #
    # @!attribute [rw] negative
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `NEGATIVE` sentiment.
    #   @return [Float]
    #
    # @!attribute [rw] neutral
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `NEUTRAL` sentiment.
    #   @return [Float]
    #
    # @!attribute [rw] mixed
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of its detection of the `MIXED` sentiment.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/SentimentScore AWS API Documentation
    #
    class SentimentScore < Struct.new(
      :positive,
      :negative,
      :neutral,
      :mixed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDocumentClassificationJobRequest
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         document_classifier_arn: "DocumentClassifierArn", # required
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         client_request_token: "ClientRequestTokenString",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) of the document classifier to use to
    #   process the job.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your document
    #   classification job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDocumentClassificationJobRequest AWS API Documentation
    #
    class StartDocumentClassificationJobRequest < Struct.new(
      :job_name,
      :document_classifier_arn,
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of the job,
    #   use this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job:
    #
    #   * SUBMITTED - The job has been received and queued for processing.
    #
    #   * IN\_PROGRESS - Amazon Comprehend is processing the job.
    #
    #   * COMPLETED - The job was successfully completed and the output is
    #     available.
    #
    #   * FAILED - The job did not complete. For details, use the operation.
    #
    #   * STOP\_REQUESTED - Amazon Comprehend has received a stop request
    #     for the job and is processing the request.
    #
    #   * STOPPED - The job was successfully stopped without completing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDocumentClassificationJobResponse AWS API Documentation
    #
    class StartDocumentClassificationJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDominantLanguageDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         client_request_token: "ClientRequestTokenString",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   An identifier for the job.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your dominant
    #   language detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDominantLanguageDetectionJobRequest AWS API Documentation
    #
    class StartDominantLanguageDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job.
    #
    #   * SUBMITTED - The job has been received and is queued for
    #     processing.
    #
    #   * IN\_PROGRESS - Amazon Comprehend is processing the job.
    #
    #   * COMPLETED - The job was successfully completed and the output is
    #     available.
    #
    #   * FAILED - The job did not complete. To get details, use the
    #     operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDominantLanguageDetectionJobResponse AWS API Documentation
    #
    class StartDominantLanguageDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartEntitiesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         entity_recognizer_arn: "EntityRecognizerArn",
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #         client_request_token: "ClientRequestTokenString",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the specific entity
    #   recognizer to be used by the `StartEntitiesDetectionJob`. This ARN
    #   is optional and is only used for a custom entity recognition job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. All documents must be in the
    #   same language. You can specify any of the languages supported by
    #   Amazon Comprehend. If custom entities recognition is used, this
    #   parameter is ignored and the language used for training the model is
    #   used instead.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your entity
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJobRequest AWS API Documentation
    #
    class StartEntitiesDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :entity_recognizer_arn,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of job, use
    #   this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job.
    #
    #   * SUBMITTED - The job has been received and is queued for
    #     processing.
    #
    #   * IN\_PROGRESS - Amazon Comprehend is processing the job.
    #
    #   * COMPLETED - The job was successfully completed and the output is
    #     available.
    #
    #   * FAILED - The job did not complete. To get details, use the
    #     operation.
    #
    #   * STOP\_REQUESTED - Amazon Comprehend has received a stop request
    #     for the job and is processing the request.
    #
    #   * STOPPED - The job was successfully stopped without completing.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJobResponse AWS API Documentation
    #
    class StartEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartKeyPhrasesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #         client_request_token: "ClientRequestTokenString",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your key
    #   phrases detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartKeyPhrasesDetectionJobRequest AWS API Documentation
    #
    class StartKeyPhrasesDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job.
    #
    #   * SUBMITTED - The job has been received and is queued for
    #     processing.
    #
    #   * IN\_PROGRESS - Amazon Comprehend is processing the job.
    #
    #   * COMPLETED - The job was successfully completed and the output is
    #     available.
    #
    #   * FAILED - The job did not complete. To get details, use the
    #     operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartKeyPhrasesDetectionJobResponse AWS API Documentation
    #
    class StartKeyPhrasesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartPiiEntitiesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         mode: "ONLY_REDACTION", # required, accepts ONLY_REDACTION, ONLY_OFFSETS
    #         redaction_config: {
    #           pii_entity_types: ["BANK_ACCOUNT_NUMBER"], # accepts BANK_ACCOUNT_NUMBER, BANK_ROUTING, CREDIT_DEBIT_NUMBER, CREDIT_DEBIT_CVV, CREDIT_DEBIT_EXPIRY, PIN, EMAIL, ADDRESS, NAME, PHONE, SSN, DATE_TIME, PASSPORT_NUMBER, DRIVER_ID, URL, AGE, USERNAME, PASSWORD, AWS_ACCESS_KEY, AWS_SECRET_KEY, IP_ADDRESS, MAC_ADDRESS, ALL
    #           mask_mode: "MASK", # accepts MASK, REPLACE_WITH_PII_ENTITY_TYPE
    #           mask_character: "MaskCharacter",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #         client_request_token: "ClientRequestTokenString",
    #       }
    #
    # @!attribute [rw] input_data_config
    #   The input properties for a PII entities detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Provides conﬁguration parameters for the output of PII entity
    #   detection jobs.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] mode
    #   Specifies whether the output provides the locations (offsets) of PII
    #   entities or a file in which PII entities are redacted.
    #   @return [String]
    #
    # @!attribute [rw] redaction_config
    #   Provides configuration parameters for PII entity redaction.
    #
    #   This parameter is required if you set the `Mode` parameter to
    #   `ONLY_REDACTION`. In that case, you must provide a `RedactionConfig`
    #   definition that includes the `PiiEntityTypes` parameter.
    #   @return [Types::RedactionConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartPiiEntitiesDetectionJobRequest AWS API Documentation
    #
    class StartPiiEntitiesDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :mode,
      :redaction_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartPiiEntitiesDetectionJobResponse AWS API Documentation
    #
    class StartPiiEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartSentimentDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         language_code: "en", # required, accepts en, es, fr, de, it, pt, ar, hi, ja, ko, zh, zh-TW
    #         client_request_token: "ClientRequestTokenString",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. All documents must
    #   be in the same language.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your
    #   sentiment detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartSentimentDetectionJobRequest AWS API Documentation
    #
    class StartSentimentDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job.
    #
    #   * SUBMITTED - The job has been received and is queued for
    #     processing.
    #
    #   * IN\_PROGRESS - Amazon Comprehend is processing the job.
    #
    #   * COMPLETED - The job was successfully completed and the output is
    #     available.
    #
    #   * FAILED - The job did not complete. To get details, use the
    #     operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartSentimentDetectionJobResponse AWS API Documentation
    #
    class StartSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartTopicsDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         input_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           input_format: "ONE_DOC_PER_FILE", # accepts ONE_DOC_PER_FILE, ONE_DOC_PER_LINE
    #         },
    #         output_data_config: { # required
    #           s3_uri: "S3Uri", # required
    #           kms_key_id: "KmsKeyId",
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         number_of_topics: 1,
    #         client_request_token: "ClientRequestTokenString",
    #         volume_kms_key_id: "KmsKeyId",
    #         vpc_config: {
    #           security_group_ids: ["SecurityGroupId"], # required
    #           subnets: ["SubnetId"], # required
    #         },
    #       }
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files. The output is a compressed
    #   archive with two files, `topic-terms.csv` that lists the terms
    #   associated with each topic, and `doc-topics.csv` that lists the
    #   documents associated with each topic
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Access
    #   Management (IAM) role that grants Amazon Comprehend read access to
    #   your input data. For more information, see
    #   [https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/access-control-managing-permissions.html#auth-role-permissions
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] number_of_topics
    #   The number of topics to detect.
    #   @return [Integer]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you do not set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for your topic
    #   detection job. For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTopicsDetectionJobRequest AWS API Documentation
    #
    class StartTopicsDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :number_of_topics,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of the job,
    #   use this identifier with the `DescribeTopicDetectionJob` operation.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the job:
    #
    #   * SUBMITTED - The job has been received and is queued for
    #     processing.
    #
    #   * IN\_PROGRESS - Amazon Comprehend is processing the job.
    #
    #   * COMPLETED - The job was successfully completed and the output is
    #     available.
    #
    #   * FAILED - The job did not complete. To get details, use the
    #     `DescribeTopicDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTopicsDetectionJobResponse AWS API Documentation
    #
    class StartTopicsDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopDominantLanguageDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier of the dominant language detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopDominantLanguageDetectionJobRequest AWS API Documentation
    #
    class StopDominantLanguageDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the dominant language detection job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Either `STOP_REQUESTED` if the job is currently running, or
    #   `STOPPED` if the job was previously stopped with the
    #   `StopDominantLanguageDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopDominantLanguageDetectionJobResponse AWS API Documentation
    #
    class StopDominantLanguageDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopEntitiesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier of the entities detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEntitiesDetectionJobRequest AWS API Documentation
    #
    class StopEntitiesDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the entities detection job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Either `STOP_REQUESTED` if the job is currently running, or
    #   `STOPPED` if the job was previously stopped with the
    #   `StopEntitiesDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEntitiesDetectionJobResponse AWS API Documentation
    #
    class StopEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopKeyPhrasesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier of the key phrases detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopKeyPhrasesDetectionJobRequest AWS API Documentation
    #
    class StopKeyPhrasesDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the key phrases detection job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Either `STOP_REQUESTED` if the job is currently running, or
    #   `STOPPED` if the job was previously stopped with the
    #   `StopKeyPhrasesDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopKeyPhrasesDetectionJobResponse AWS API Documentation
    #
    class StopKeyPhrasesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopPiiEntitiesDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier of the PII entities detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopPiiEntitiesDetectionJobRequest AWS API Documentation
    #
    class StopPiiEntitiesDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the PII entities detection job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the PII entities detection job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopPiiEntitiesDetectionJobResponse AWS API Documentation
    #
    class StopPiiEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopSentimentDetectionJobRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #       }
    #
    # @!attribute [rw] job_id
    #   The identifier of the sentiment detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopSentimentDetectionJobRequest AWS API Documentation
    #
    class StopSentimentDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the sentiment detection job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Either `STOP_REQUESTED` if the job is currently running, or
    #   `STOPPED` if the job was previously stopped with the
    #   `StopSentimentDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopSentimentDetectionJobResponse AWS API Documentation
    #
    class StopSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopTrainingDocumentClassifierRequest
    #   data as a hash:
    #
    #       {
    #         document_classifier_arn: "DocumentClassifierArn", # required
    #       }
    #
    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier currently being trained.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingDocumentClassifierRequest AWS API Documentation
    #
    class StopTrainingDocumentClassifierRequest < Struct.new(
      :document_classifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingDocumentClassifierResponse AWS API Documentation
    #
    class StopTrainingDocumentClassifierResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass StopTrainingEntityRecognizerRequest
    #   data as a hash:
    #
    #       {
    #         entity_recognizer_arn: "EntityRecognizerArn", # required
    #       }
    #
    # @!attribute [rw] entity_recognizer_arn
    #   The Amazon Resource Name (ARN) that identifies the entity recognizer
    #   currently being trained.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingEntityRecognizerRequest AWS API Documentation
    #
    class StopTrainingEntityRecognizerRequest < Struct.new(
      :entity_recognizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTrainingEntityRecognizerResponse AWS API Documentation
    #
    class StopTrainingEntityRecognizerResponse < Aws::EmptyStructure; end

    # Represents a work in the input text that was recognized and assigned a
    # part of speech. There is one syntax token record for each word in the
    # source text.
    #
    # @!attribute [rw] token_id
    #   A unique identifier for a token.
    #   @return [Integer]
    #
    # @!attribute [rw] text
    #   The word that was recognized in the source text.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset
    #   The zero-based offset from the beginning of the source text to the
    #   first character in the word.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The zero-based offset from the beginning of the source text to the
    #   last character in the word.
    #   @return [Integer]
    #
    # @!attribute [rw] part_of_speech
    #   Provides the part of speech label and the confidence level that
    #   Amazon Comprehend has that the part of speech was correctly
    #   identified. For more information, see how-syntax.
    #   @return [Types::PartOfSpeechTag]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/SyntaxToken AWS API Documentation
    #
    class SyntaxToken < Struct.new(
      :token_id,
      :text,
      :begin_offset,
      :end_offset,
      :part_of_speech)
      SENSITIVE = []
      include Aws::Structure
    end

    # A key-value pair that adds as a metadata to a resource used by Amazon
    # Comprehend. For example, a tag with the key-value pair
    # ‘Department’:’Sales’ might be added to a resource to indicate its use
    # by a particular department.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The initial part of a key-value pair that forms a tag associated
    #   with a given resource. For instance, if you want to show which
    #   resources are used by which departments, you might use “Department”
    #   as the key portion of the pair, with multiple possible values such
    #   as “sales,” “legal,” and “administration.”
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The second part of a key-value pair that forms a tag associated with
    #   a given resource. For instance, if you want to show which resources
    #   are used by which departments, you might use “Department” as the
    #   initial (key) portion of the pair, with a value of “sales” to
    #   indicate the sales department.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/Tag AWS API Documentation
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
    #         resource_arn: "ComprehendArn", # required
    #         tags: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend
    #   resource to which you want to associate the tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags being associated with a specific Amazon Comprehend resource.
    #   There can be a maximum of 50 tags (both existing and pending)
    #   associated with a specific resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The size of the input text exceeds the limit. Use a smaller document.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TextSizeLimitExceededException AWS API Documentation
    #
    class TextSizeLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeds the limit. Resubmit your request later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains more tag keys than can be associated with a
    # resource (50 tag keys per resource).
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TooManyTagKeysException AWS API Documentation
    #
    class TooManyTagKeysException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request contains more tags than can be associated with a resource
    # (50 tags per resource). The maximum number of tags includes both
    # existing tags and those included in your current request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TooManyTagsException AWS API Documentation
    #
    class TooManyTagsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering topic detection jobs. For more
    # information, see .
    #
    # @note When making an API call, you may pass TopicsDetectionJobFilter
    #   data as a hash:
    #
    #       {
    #         job_name: "JobName",
    #         job_status: "SUBMITTED", # accepts SUBMITTED, IN_PROGRESS, COMPLETED, FAILED, STOP_REQUESTED, STOPPED
    #         submit_time_before: Time.now,
    #         submit_time_after: Time.now,
    #       }
    #
    # @!attribute [rw] job_name
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Filters the list of topic detection jobs based on job status.
    #   Returns only jobs with the specified status.
    #   @return [String]
    #
    # @!attribute [rw] submit_time_before
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Only returns jobs submitted before the
    #   specified time. Jobs are returned in descending order, newest to
    #   oldest.
    #   @return [Time]
    #
    # @!attribute [rw] submit_time_after
    #   Filters the list of jobs based on the time that the job was
    #   submitted for processing. Only returns jobs submitted after the
    #   specified time. Jobs are returned in ascending order, oldest to
    #   newest.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TopicsDetectionJobFilter AWS API Documentation
    #
    class TopicsDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a topic detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the topic detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name of the topic detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the topic detection job. If the status is
    #   `Failed`, the reason for the failure is shown in the `Message`
    #   field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description for the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the topic detection job was submitted for processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the topic detection job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration supplied when you created the topic
    #   detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration supplied when you created the topic
    #   detection job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] number_of_topics
    #   The number of topics to detect supplied when you created the topic
    #   detection job. The default is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the AWS Identity and Management
    #   (IAM) role that grants Amazon Comprehend read access to your job
    #   data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the AWS Key Management Service (KMS) key that Amazon
    #   Comprehend uses to encrypt data on the storage volume attached to
    #   the ML compute instance(s) that process the analysis job. The
    #   VolumeKmsKeyId can be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for a private Virtual Private Cloud (VPC)
    #   containing the resources you are using for your topic detection job.
    #   For more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TopicsDetectionJobProperties AWS API Documentation
    #
    class TopicsDetectionJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :number_of_topics,
      :data_access_role_arn,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Comprehend can't process the language of the input text. For
    # all custom entity recognition APIs (such as `CreateEntityRecognizer`),
    # only English, Spanish, French, Italian, German, or Portuguese are
    # accepted. For most other APIs, such as those for Custom
    # Classification, Amazon Comprehend accepts text in all supported
    # languages. For a list of supported languages, see supported-languages.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UnsupportedLanguageException AWS API Documentation
    #
    class UnsupportedLanguageException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ComprehendArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the given Amazon Comprehend
    #   resource from which you want to remove the tags.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The initial part of a key-value pair that forms a tag being removed
    #   from a given resource. For example, a tag with "Sales" as the key
    #   might be added to a resource to indicate its use by the sales
    #   department. Keys must be unique and cannot be duplicated for a
    #   particular resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateEndpointRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "ComprehendEndpointArn", # required
    #         desired_inference_units: 1, # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being updated.
    #   @return [String]
    #
    # @!attribute [rw] desired_inference_units
    #   The desired number of inference units to be used by the model using
    #   this endpoint. Each inference unit represents of a throughput of 100
    #   characters per second.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateEndpointRequest AWS API Documentation
    #
    class UpdateEndpointRequest < Struct.new(
      :endpoint_arn,
      :desired_inference_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateEndpointResponse AWS API Documentation
    #
    class UpdateEndpointResponse < Aws::EmptyStructure; end

    # Configuration parameters for an optional private Virtual Private Cloud
    # (VPC) containing the resources you are using for the job. For For more
    # information, see [Amazon VPC][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #
    # @note When making an API call, you may pass VpcConfig
    #   data as a hash:
    #
    #       {
    #         security_group_ids: ["SecurityGroupId"], # required
    #         subnets: ["SubnetId"], # required
    #       }
    #
    # @!attribute [rw] security_group_ids
    #   The ID number for a security group on an instance of your private
    #   VPC. Security groups on your VPC function serve as a virtual
    #   firewall to control inbound and outbound traffic and provides
    #   security for the resources that you’ll be accessing on the VPC. This
    #   ID number is preceded by "sg-", for instance:
    #   "sg-03b388029b0a285ea". For more information, see [Security Groups
    #   for your VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnets
    #   The ID for each subnet being used in your private VPC. This subnet
    #   is a subset of the a range of IPv4 addresses used by the VPC and is
    #   specific to a given availability zone in the VPC’s region. This ID
    #   number is preceded by "subnet-", for instance:
    #   "subnet-04ccf456919e69055". For more information, see [VPCs and
    #   Subnets][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/VpcConfig AWS API Documentation
    #
    class VpcConfig < Struct.new(
      :security_group_ids,
      :subnets)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
