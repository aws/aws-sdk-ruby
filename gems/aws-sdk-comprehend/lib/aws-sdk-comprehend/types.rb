# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Comprehend
  module Types

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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectDominantLanguageRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["String"], # required
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["String"], # required
    #         language_code: "en", # required, accepts en, es
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   than 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectEntitiesRequest AWS API Documentation
    #
    class BatchDetectEntitiesRequest < Struct.new(
      :text_list,
      :language_code)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectKeyPhrasesRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["String"], # required
    #         language_code: "en", # required, accepts en, es
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectKeyPhrasesRequest AWS API Documentation
    #
    class BatchDetectKeyPhrasesRequest < Struct.new(
      :text_list,
      :language_code)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectSentimentRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["String"], # required
    #         language_code: "en", # required, accepts en, es
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSentimentRequest AWS API Documentation
    #
    class BatchDetectSentimentRequest < Struct.new(
      :text_list,
      :language_code)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchDetectSyntaxRequest
    #   data as a hash:
    #
    #       {
    #         text_list: ["String"], # required
    #         language_code: "en", # required, accepts en
    #       }
    #
    # @!attribute [rw] text_list
    #   A list containing the text of the input documents. The list can
    #   contain a maximum of 25 documents. Each document must contain fewer
    #   that 5,000 bytes of UTF-8 encoded characters.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectSyntaxRequest AWS API Documentation
    #
    class BatchDetectSyntaxRequest < Struct.new(
      :text_list,
      :language_code)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectDominantLanguageRequest
    #   data as a hash:
    #
    #       {
    #         text: "String", # required
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectEntitiesRequest
    #   data as a hash:
    #
    #       {
    #         text: "String", # required
    #         language_code: "en", # required, accepts en, es
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntitiesRequest AWS API Documentation
    #
    class DetectEntitiesRequest < Struct.new(
      :text,
      :language_code)
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   A collection of entities identified in the input text. For each
    #   entity, the response provides the entity text, entity type, where
    #   the entity text begins and ends, and the level of confidence that
    #   Amazon Comprehend has in the detection. For a list of entity types,
    #   see how-entities.
    #   @return [Array<Types::Entity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntitiesResponse AWS API Documentation
    #
    class DetectEntitiesResponse < Struct.new(
      :entities)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectKeyPhrasesRequest
    #   data as a hash:
    #
    #       {
    #         text: "String", # required
    #         language_code: "en", # required, accepts en, es
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectKeyPhrasesRequest AWS API Documentation
    #
    class DetectKeyPhrasesRequest < Struct.new(
      :text,
      :language_code)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectSentimentRequest
    #   data as a hash:
    #
    #       {
    #         text: "String", # required
    #         language_code: "en", # required, accepts en, es
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 text string. Each string must contain fewer that 5,000 bytes
    #   of UTF-8 encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSentimentRequest AWS API Documentation
    #
    class DetectSentimentRequest < Struct.new(
      :text,
      :language_code)
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectSyntaxRequest
    #   data as a hash:
    #
    #       {
    #         text: "String", # required
    #         language_code: "en", # required, accepts en
    #       }
    #
    # @!attribute [rw] text
    #   A UTF-8 string. Each string must contain fewer that 5,000 bytes of
    #   UTF encoded characters.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents. You can specify English
    #   ("en") or Spanish ("es").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSyntaxRequest AWS API Documentation
    #
    class DetectSyntaxRequest < Struct.new(
      :text,
      :language_code)
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
      :data_access_role_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntitiesDetectionJobProperties AWS API Documentation
    #
    class EntitiesDetectionJobProperties < Struct.new(
      :job_id,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn)
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
      :data_access_role_arn)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/OutputDataConfig AWS API Documentation
    #
    class OutputDataConfig < Struct.new(
      :s3_uri)
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
      :data_access_role_arn)
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
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         client_request_token: "ClientRequestTokenString",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDominantLanguageDetectionJobRequest AWS API Documentation
    #
    class StartDominantLanguageDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token)
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
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         language_code: "en", # required, accepts en, es
    #         client_request_token: "ClientRequestTokenString",
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
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJobRequest AWS API Documentation
    #
    class StartEntitiesDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token)
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
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJobResponse AWS API Documentation
    #
    class StartEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
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
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         language_code: "en", # required, accepts en, es
    #         client_request_token: "ClientRequestTokenString",
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
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartKeyPhrasesDetectionJobRequest AWS API Documentation
    #
    class StartKeyPhrasesDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token)
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
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         language_code: "en", # required, accepts en, es
    #         client_request_token: "ClientRequestTokenString",
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
    #   The language of the input documents. You can specify English
    #   ("en") or Spanish ("es"). All documents must be in the same
    #   language.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartSentimentDetectionJobRequest AWS API Documentation
    #
    class StartSentimentDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token)
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
    #         },
    #         data_access_role_arn: "IamRoleArn", # required
    #         job_name: "JobName",
    #         number_of_topics: 1,
    #         client_request_token: "ClientRequestTokenString",
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTopicsDetectionJobRequest AWS API Documentation
    #
    class StartTopicsDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :number_of_topics,
      :client_request_token)
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
      include Aws::Structure
    end

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
      :number_of_topics)
      include Aws::Structure
    end

  end
end
