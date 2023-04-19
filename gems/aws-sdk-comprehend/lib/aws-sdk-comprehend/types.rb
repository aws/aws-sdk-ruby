# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Comprehend
  module Types

    # An augmented manifest file that provides training data for your custom
    # model. An augmented manifest file is a labeled dataset that is
    # produced by Amazon SageMaker Ground Truth.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 location of the augmented manifest file.
    #   @return [String]
    #
    # @!attribute [rw] split
    #   The purpose of the data you've provided in the augmented manifest.
    #   You can either train or test this data. If you don't specify, the
    #   default is train.
    #
    #   TRAIN - all of the documents in the manifest will be used for
    #   training. If no test documents are provided, Amazon Comprehend will
    #   automatically reserve a portion of the training documents for
    #   testing.
    #
    #   TEST - all of the documents in the manifest will be used for
    #   testing.
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
    # @!attribute [rw] annotation_data_s3_uri
    #   The S3 prefix to the annotation files that are referred in the
    #   augmented manifest file.
    #   @return [String]
    #
    # @!attribute [rw] source_documents_s3_uri
    #   The S3 prefix to the source files (PDFs) that are referred to in the
    #   augmented manifest file.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The type of augmented manifest. PlainTextDocument or
    #   SemiStructuredDocument. If you don't specify, the default is
    #   PlainTextDocument.
    #
    #   * `PLAIN_TEXT_DOCUMENT` A document type that represents any unicode
    #     text that is encoded in UTF-8.
    #
    #   * `SEMI_STRUCTURED_DOCUMENT` A document type with positional and
    #     structural context, like a PDF. For training with Amazon
    #     Comprehend, only PDFs are supported. For inference, Amazon
    #     Comprehend support PDFs, DOCX and TXT.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/AugmentedManifestsListItem AWS API Documentation
    #
    class AugmentedManifestsListItem < Struct.new(
      :s3_uri,
      :split,
      :attribute_names,
      :annotation_data_s3_uri,
      :source_documents_s3_uri,
      :document_type)
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

    # @!attribute [rw] text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. Each document should
    #   contain at least 20 characters. The maximum size of each document is
    #   5 KB.
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

    # @!attribute [rw] text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
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

    # @!attribute [rw] text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
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

    # @!attribute [rw] text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
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

    # @!attribute [rw] text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size for
    #   each document is 5 KB.
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

    # Analysis results for one of the documents in the batch.
    #
    # @!attribute [rw] index
    #   The zero-based index of this result in the input list.
    #   @return [Integer]
    #
    # @!attribute [rw] entities
    #   An array of targeted sentiment entities.
    #   @return [Array<Types::TargetedSentimentEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectTargetedSentimentItemResult AWS API Documentation
    #
    class BatchDetectTargetedSentimentItemResult < Struct.new(
      :index,
      :entities)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] text_list
    #   A list containing the UTF-8 encoded text of the input documents. The
    #   list can contain a maximum of 25 documents. The maximum size of each
    #   document is 5 KB.
    #   @return [Array<String>]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. Currently, English is the only
    #   supported language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectTargetedSentimentRequest AWS API Documentation
    #
    class BatchDetectTargetedSentimentRequest < Struct.new(
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
    #   @return [Array<Types::BatchDetectTargetedSentimentItemResult>]
    #
    # @!attribute [rw] error_list
    #   List of errors that the operation can return.
    #   @return [Array<Types::BatchItemError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BatchDetectTargetedSentimentResponse AWS API Documentation
    #
    class BatchDetectTargetedSentimentResponse < Struct.new(
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

    # Information about each word or line of text in the input document.
    #
    # For additional information, see [Block][1] in the Amazon Textract API
    # reference.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/API_Block.html
    #
    # @!attribute [rw] id
    #   Unique identifier for the block.
    #   @return [String]
    #
    # @!attribute [rw] block_type
    #   The block represents a line of text or one word of text.
    #
    #   * WORD - A word that's detected on a document page. A word is one
    #     or more ISO basic Latin script characters that aren't separated
    #     by spaces.
    #
    #   * LINE - A string of tab-delimited, contiguous words that are
    #     detected on a document page
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The word or line of text extracted from the block.
    #   @return [String]
    #
    # @!attribute [rw] page
    #   Page number where the block appears.
    #   @return [Integer]
    #
    # @!attribute [rw] geometry
    #   Co-ordinates of the rectangle or polygon that contains the text.
    #   @return [Types::Geometry]
    #
    # @!attribute [rw] relationships
    #   A list of child blocks of the current block. For example, a LINE
    #   object has child blocks for each WORD block that's part of the line
    #   of text.
    #   @return [Array<Types::RelationshipsListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/Block AWS API Documentation
    #
    class Block < Struct.new(
      :id,
      :block_type,
      :text,
      :page,
      :geometry,
      :relationships)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a block.
    #
    # @!attribute [rw] block_id
    #   Unique identifier for the block.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset
    #   Offset of the start of the block within its parent block.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   Offset of the end of the block within its parent block.
    #   @return [Integer]
    #
    # @!attribute [rw] child_blocks
    #   List of child blocks within this block.
    #   @return [Array<Types::ChildBlock>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BlockReference AWS API Documentation
    #
    class BlockReference < Struct.new(
      :block_id,
      :begin_offset,
      :end_offset,
      :child_blocks)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bounding box around the detected page or around an element on a
    # document page. The left (x-coordinate) and top (y-coordinate) are
    # coordinates that represent the top and left sides of the bounding box.
    # Note that the upper-left corner of the image is the origin (0,0).
    #
    # For additional information, see [BoundingBox][1] in the Amazon
    # Textract API reference.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/API_BoundingBox.html
    #
    # @!attribute [rw] height
    #   The height of the bounding box as a ratio of the overall document
    #   page height.
    #   @return [Float]
    #
    # @!attribute [rw] left
    #   The left coordinate of the bounding box as a ratio of overall
    #   document page width.
    #   @return [Float]
    #
    # @!attribute [rw] top
    #   The top coordinate of the bounding box as a ratio of overall
    #   document page height.
    #   @return [Float]
    #
    # @!attribute [rw] width
    #   The width of the bounding box as a ratio of the overall document
    #   page width.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/BoundingBox AWS API Documentation
    #
    class BoundingBox < Struct.new(
      :height,
      :left,
      :top,
      :width)
      SENSITIVE = []
      include Aws::Structure
    end

    # Nested block contained within a block.
    #
    # @!attribute [rw] child_block_id
    #   Unique identifier for the child block.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset
    #   Offset of the start of the child block within its parent block.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   Offset of the end of the child block within its parent block.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ChildBlock AWS API Documentation
    #
    class ChildBlock < Struct.new(
      :child_block_id,
      :begin_offset,
      :end_offset)
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

    # @!attribute [rw] text
    #   The document text to be analyzed. If you enter text using this
    #   parameter, do not use the `Bytes` parameter.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint. For information
    #   about endpoints, see [Managing endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] bytes
    #   Use the `Bytes` parameter to input a text, PDF, Word or image file.
    #   You can also use the `Bytes` parameter to input an Amazon Textract
    #   `DetectDocumentText` or `AnalyzeDocument` output file.
    #
    #   Provide the input document as a sequence of base64-encoded bytes. If
    #   your code uses an Amazon Web Services SDK to classify documents, the
    #   SDK may encode the document file bytes for you.
    #
    #   The maximum length of this field depends on the input document type.
    #   For details, see [ Inputs for real-time custom analysis][1] in the
    #   Comprehend Developer Guide.
    #
    #   If you use the `Bytes` parameter, do not use the `Text` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html
    #   @return [String]
    #
    # @!attribute [rw] document_reader_config
    #   Provides configuration parameters to override the default actions
    #   for extracting text from PDF documents and image files.
    #   @return [Types::DocumentReaderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ClassifyDocumentRequest AWS API Documentation
    #
    class ClassifyDocumentRequest < Struct.new(
      :text,
      :endpoint_arn,
      :bytes,
      :document_reader_config)
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
    #   categories that are related in some manner and are not mutually
    #   exclusive. For example, a movie can be just an action movie, or it
    #   can be an action movie, a science fiction movie, and a comedy, all
    #   at the same time.
    #   @return [Array<Types::DocumentLabel>]
    #
    # @!attribute [rw] document_metadata
    #   Extraction information about the document. This field is present in
    #   the response only if your request includes the `Byte` parameter.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] document_type
    #   The document type for each page in the input document. This field is
    #   present in the response only if your request includes the `Byte`
    #   parameter.
    #   @return [Array<Types::DocumentTypeListItem>]
    #
    # @!attribute [rw] errors
    #   Page-level errors that the system detected while processing the
    #   input document. The field is empty if the system encountered no
    #   errors.
    #   @return [Array<Types::ErrorsListItem>]
    #
    # @!attribute [rw] warnings
    #   Warnings detected while processing the input document. The response
    #   includes a warning if there is a mismatch between the input document
    #   type and the model type associated with the endpoint that you
    #   specified. The response can also include warnings for individual
    #   pages that have a mismatch.
    #
    #   The field is empty if the system generated no warnings.
    #   @return [Array<Types::WarningsListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ClassifyDocumentResponse AWS API Documentation
    #
    class ClassifyDocumentResponse < Struct.new(
      :classes,
      :labels,
      :document_metadata,
      :document_type,
      :errors,
      :warnings)
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

    # @!attribute [rw] text
    #   A UTF-8 text string. The maximum string size is 100 KB.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. Currently, English is the only
    #   valid language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ContainsPiiEntitiesRequest AWS API Documentation
    #
    class ContainsPiiEntitiesRequest < Struct.new(
      :text,
      :language_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labels
    #   The labels used in the document being analyzed. Individual labels
    #   represent personally identifiable information (PII) entity types.
    #   @return [Array<Types::EntityLabel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ContainsPiiEntitiesResponse AWS API Documentation
    #
    class ContainsPiiEntitiesResponse < Struct.new(
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel of the flywheel to
    #   receive the data.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   Name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The dataset type. You can specify that the data in a dataset is for
    #   training the model or for testing the model.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] input_data_config
    #   Information about the input data configuration. The type of input
    #   data varies based on the format of the input and whether the data is
    #   for a classifier model or an entity recognition model.
    #   @return [Types::DatasetInputDataConfig]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags for the dataset.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDatasetRequest AWS API Documentation
    #
    class CreateDatasetRequest < Struct.new(
      :flywheel_arn,
      :dataset_name,
      :dataset_type,
      :description,
      :input_data_config,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDatasetResponse AWS API Documentation
    #
    class CreateDatasetResponse < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_classifier_name
    #   The name of the document classifier.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version name given to the newly created classifier. Version
    #   names can have a maximum of 256 characters. Alphanumeric characters,
    #   hyphens (-) and underscores (\_) are allowed. The version name must
    #   be unique among all models with the same classifier name in the
    #   Amazon Web Services account/Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the document classifier. A tag is a key-value
    #   pair that adds as a metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::DocumentClassifierInputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies the location for the output files from a custom classifier
    #   job. This parameter is required for a request that creates a native
    #   classifier model.
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
    #   languages supported by Amazon Comprehend. All documents must be in
    #   the same language.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] model_policy
    #   The resource-based policy to attach to your custom document
    #   classifier model. You can use this policy to allow another Amazon
    #   Web Services account to import your custom model.
    #
    #   Provide your policy as a JSON body that you enter as a UTF-8 encoded
    #   string without line breaks. To provide valid JSON, enclose the
    #   attribute names and values in double quotes. If the JSON body is
    #   also enclosed in double quotes, then you must escape the double
    #   quotes that are inside the policy:
    #
    #   `"\{"attribute": "value", "attribute": ["value"]\}"`
    #
    #   To avoid escaping quotes, you can use single quotes to enclose the
    #   policy and double quotes to enclose the JSON names and values:
    #
    #   `'\{"attribute": "value", "attribute": ["value"]\}'`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateDocumentClassifierRequest AWS API Documentation
    #
    class CreateDocumentClassifierRequest < Struct.new(
      :document_classifier_name,
      :version_name,
      :data_access_role_arn,
      :tags,
      :input_data_config,
      :output_data_config,
      :client_request_token,
      :language_code,
      :volume_kms_key_id,
      :vpc_config,
      :mode,
      :model_kms_key_id,
      :model_policy)
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
    #   Tags to associate with the endpoint. A tag is a key-value pair that
    #   adds metadata to the endpoint. For example, a tag with "Sales" as
    #   the key might be added to an endpoint to indicate its use by the
    #   sales department.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to trained custom models encrypted with a
    #   customer managed key (ModelKmsKeyId).
    #   @return [String]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel to which the
    #   endpoint will be attached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEndpointRequest AWS API Documentation
    #
    class CreateEndpointRequest < Struct.new(
      :endpoint_name,
      :model_arn,
      :desired_inference_units,
      :client_request_token,
      :tags,
      :data_access_role_arn,
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being created.
    #   @return [String]
    #
    # @!attribute [rw] model_arn
    #   The Amazon Resource Number (ARN) of the model to which the endpoint
    #   is attached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEndpointResponse AWS API Documentation
    #
    class CreateEndpointResponse < Struct.new(
      :endpoint_arn,
      :model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] recognizer_name
    #   The name given to the newly created recognizer. Recognizer names can
    #   be a maximum of 256 characters. Alphanumeric characters, hyphens (-)
    #   and underscores (\_) are allowed. The name must be unique in the
    #   account/Region.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version name given to the newly created recognizer. Version
    #   names can be a maximum of 256 characters. Alphanumeric characters,
    #   hyphens (-) and underscores (\_) are allowed. The version name must
    #   be unique among all models with the same recognizer name in the
    #   account/Region.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the entity recognizer. A tag is a key-value
    #   pair that adds as a metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data. The S3 bucket
    #   containing the input data must be located in the same Region as the
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
    #   You can specify any of the following languages: English ("en"),
    #   Spanish ("es"), French ("fr"), Italian ("it"), German
    #   ("de"), or Portuguese ("pt"). If you plan to use this entity
    #   recognizer with PDF, Word, or image input files, you must specify
    #   English as the language. All training documents must be in the same
    #   language.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] model_policy
    #   The JSON resource-based policy to attach to your custom entity
    #   recognizer model. You can use this policy to allow another Amazon
    #   Web Services account to import your custom model.
    #
    #   Provide your JSON as a UTF-8 encoded string without line breaks. To
    #   provide valid JSON for your policy, enclose the attribute names and
    #   values in double quotes. If the JSON body is also enclosed in double
    #   quotes, then you must escape the double quotes that are inside the
    #   policy:
    #
    #   `"\{"attribute": "value", "attribute": ["value"]\}"`
    #
    #   To avoid escaping quotes, you can use single quotes to enclose the
    #   policy and double quotes to enclose the JSON names and values:
    #
    #   `'\{"attribute": "value", "attribute": ["value"]\}'`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateEntityRecognizerRequest AWS API Documentation
    #
    class CreateEntityRecognizerRequest < Struct.new(
      :recognizer_name,
      :version_name,
      :data_access_role_arn,
      :tags,
      :input_data_config,
      :client_request_token,
      :language_code,
      :volume_kms_key_id,
      :vpc_config,
      :model_kms_key_id,
      :model_policy)
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

    # @!attribute [rw] flywheel_name
    #   Name for the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] active_model_arn
    #   To associate an existing model with the flywheel, specify the Amazon
    #   Resource Number (ARN) of the model version.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend the permissions required to access the flywheel data in
    #   the data lake.
    #   @return [String]
    #
    # @!attribute [rw] task_config
    #   Configuration about the custom classifier associated with the
    #   flywheel.
    #   @return [Types::TaskConfig]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] data_lake_s3_uri
    #   Enter the S3 location for the data lake. You can specify a new S3
    #   bucket or a new folder of an existing S3 bucket. The flywheel
    #   creates the data lake at this location.
    #   @return [String]
    #
    # @!attribute [rw] data_security_config
    #   Data security configurations.
    #   @return [Types::DataSecurityConfig]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to associate with this flywheel.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateFlywheelRequest AWS API Documentation
    #
    class CreateFlywheelRequest < Struct.new(
      :flywheel_name,
      :active_model_arn,
      :data_access_role_arn,
      :task_config,
      :model_type,
      :data_lake_s3_uri,
      :data_security_config,
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] active_model_arn
    #   The Amazon Resource Number (ARN) of the active model version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/CreateFlywheelResponse AWS API Documentation
    #
    class CreateFlywheelResponse < Struct.new(
      :flywheel_arn,
      :active_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data security configuration.
    #
    # @!attribute [rw] model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt the
    #   volume.
    #   @return [String]
    #
    # @!attribute [rw] data_lake_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt the data
    #   in the data lake.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for the job. For
    #   more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DataSecurityConfig AWS API Documentation
    #
    class DataSecurityConfig < Struct.new(
      :model_kms_key_id,
      :volume_kms_key_id,
      :data_lake_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # An augmented manifest file that provides training data for your custom
    # model. An augmented manifest file is a labeled dataset that is
    # produced by Amazon SageMaker Ground Truth.
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
    # @!attribute [rw] s3_uri
    #   The Amazon S3 location of the augmented manifest file.
    #   @return [String]
    #
    # @!attribute [rw] annotation_data_s3_uri
    #   The S3 prefix to the annotation files that are referred in the
    #   augmented manifest file.
    #   @return [String]
    #
    # @!attribute [rw] source_documents_s3_uri
    #   The S3 prefix to the source files (PDFs) that are referred to in the
    #   augmented manifest file.
    #   @return [String]
    #
    # @!attribute [rw] document_type
    #   The type of augmented manifest. If you don't specify, the default
    #   is PlainTextDocument.
    #
    #   `PLAIN_TEXT_DOCUMENT` A document type that represents any unicode
    #   text that is encoded in UTF-8.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetAugmentedManifestsListItem AWS API Documentation
    #
    class DatasetAugmentedManifestsListItem < Struct.new(
      :attribute_names,
      :s3_uri,
      :annotation_data_s3_uri,
      :source_documents_s3_uri,
      :document_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the dataset input data configuration for a document
    # classifier model.
    #
    # For more information on how the input file is formatted, see
    # [Preparing training data][1] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/prep-classifier-data.html
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI for the input data. The S3 bucket must be in the
    #   same Region as the API endpoint that you are calling. The URI can
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetDocumentClassifierInputDataConfig AWS API Documentation
    #
    class DatasetDocumentClassifierInputDataConfig < Struct.new(
      :s3_uri,
      :label_delimiter)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the annotations associated with a entity recognizer.
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the training documents for an
    #   entity recognizer are located. The URI must be in the same Region as
    #   the API endpoint that you are calling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetEntityRecognizerAnnotations AWS API Documentation
    #
    class DatasetEntityRecognizerAnnotations < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the documents submitted with a dataset for an entity
    # recognizer model.
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the documents for the dataset
    #   are located.
    #   @return [String]
    #
    # @!attribute [rw] input_format
    #   Specifies how the text in an input file should be processed. This is
    #   optional, and the default is ONE\_DOC\_PER\_LINE.
    #   ONE\_DOC\_PER\_FILE - Each file is considered a separate document.
    #   Use this option when you are processing large documents, such as
    #   newspaper articles or scientific papers. ONE\_DOC\_PER\_LINE - Each
    #   line in a file is considered a separate document. Use this option
    #   when you are processing many short documents, such as text messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetEntityRecognizerDocuments AWS API Documentation
    #
    class DatasetEntityRecognizerDocuments < Struct.new(
      :s3_uri,
      :input_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the dataset entity list for an entity recognizer model.
    #
    # For more information on how the input file is formatted, see
    # [Preparing training data][1] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/prep-training-data-cer.html
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the entity list is located.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetEntityRecognizerEntityList AWS API Documentation
    #
    class DatasetEntityRecognizerEntityList < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the format and location of the input data. You must provide
    # either the `Annotations` parameter or the `EntityList` parameter.
    #
    # @!attribute [rw] annotations
    #   The S3 location of the annotation documents for your custom entity
    #   recognizer.
    #   @return [Types::DatasetEntityRecognizerAnnotations]
    #
    # @!attribute [rw] documents
    #   The format and location of the training documents for your custom
    #   entity recognizer.
    #   @return [Types::DatasetEntityRecognizerDocuments]
    #
    # @!attribute [rw] entity_list
    #   The S3 location of the entity list for your custom entity
    #   recognizer.
    #   @return [Types::DatasetEntityRecognizerEntityList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetEntityRecognizerInputDataConfig AWS API Documentation
    #
    class DatasetEntityRecognizerInputDataConfig < Struct.new(
      :annotations,
      :documents,
      :entity_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter the datasets based on creation time or dataset status.
    #
    # @!attribute [rw] status
    #   Filter the datasets based on the dataset status.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   Filter the datasets based on the dataset type.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_after
    #   Filter the datasets to include datasets created after the specified
    #   time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   Filter the datasets to include datasets created before the specified
    #   time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetFilter AWS API Documentation
    #
    class DatasetFilter < Struct.new(
      :status,
      :dataset_type,
      :creation_time_after,
      :creation_time_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the format and location of the input data for the dataset.
    #
    # @!attribute [rw] augmented_manifests
    #   A list of augmented manifest files that provide training data for
    #   your custom model. An augmented manifest file is a labeled dataset
    #   that is produced by Amazon SageMaker Ground Truth.
    #   @return [Array<Types::DatasetAugmentedManifestsListItem>]
    #
    # @!attribute [rw] data_format
    #   `COMPREHEND_CSV`: The data format is a two-column CSV file, where
    #   the first column contains labels and the second column contains
    #   documents.
    #
    #   `AUGMENTED_MANIFEST`: The data format
    #   @return [String]
    #
    # @!attribute [rw] document_classifier_input_data_config
    #   The input properties for training a document classifier model.
    #
    #   For more information on how the input file is formatted, see
    #   [Preparing training data][1] in the Comprehend Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/prep-classifier-data.html
    #   @return [Types::DatasetDocumentClassifierInputDataConfig]
    #
    # @!attribute [rw] entity_recognizer_input_data_config
    #   The input properties for training an entity recognizer model.
    #   @return [Types::DatasetEntityRecognizerInputDataConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetInputDataConfig AWS API Documentation
    #
    class DatasetInputDataConfig < Struct.new(
      :augmented_manifests,
      :data_format,
      :document_classifier_input_data_config,
      :entity_recognizer_input_data_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Properties associated with the dataset.
    #
    # @!attribute [rw] dataset_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_name
    #   The name of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] dataset_type
    #   The dataset type (training data or test data).
    #   @return [String]
    #
    # @!attribute [rw] dataset_s3_uri
    #   The S3 URI where the dataset is stored.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Description of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The dataset status. While the system creates the dataset, the status
    #   is `CREATING`. When the dataset is ready to use, the status changes
    #   to `COMPLETED`.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the dataset.
    #   @return [String]
    #
    # @!attribute [rw] number_of_documents
    #   The number of documents in the dataset.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the dataset.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Time when the data from the dataset becomes available in the data
    #   lake.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DatasetProperties AWS API Documentation
    #
    class DatasetProperties < Struct.new(
      :dataset_arn,
      :dataset_name,
      :dataset_type,
      :dataset_s3_uri,
      :description,
      :status,
      :message,
      :number_of_documents,
      :creation_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteFlywheelRequest AWS API Documentation
    #
    class DeleteFlywheelRequest < Struct.new(
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteFlywheelResponse AWS API Documentation
    #
    class DeleteFlywheelResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the custom model version that has
    #   the policy to delete.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision_id
    #   The revision ID of the policy to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteResourcePolicyRequest AWS API Documentation
    #
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DeleteResourcePolicyResponse AWS API Documentation
    #
    class DeleteResourcePolicyResponse < Aws::EmptyStructure; end

    # @!attribute [rw] dataset_arn
    #   The ARN of the dataset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDatasetRequest AWS API Documentation
    #
    class DescribeDatasetRequest < Struct.new(
      :dataset_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_properties
    #   The dataset properties.
    #   @return [Types::DatasetProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeDatasetResponse AWS API Documentation
    #
    class DescribeDatasetResponse < Struct.new(
      :dataset_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartDocumentClassificationJob` operation returns this identifier
    #   in its response.
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

    # @!attribute [rw] document_classifier_arn
    #   The Amazon Resource Name (ARN) that identifies the document
    #   classifier. The `CreateDocumentClassifier` operation returns this
    #   identifier in its response.
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

    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartDominantLanguageDetectionJob` operation returns this
    #   identifier in its response.
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

    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartEntitiesDetectionJob` operation returns this identifier in its
    #   response.
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

    # @!attribute [rw] job_id
    #   The identifier of the events detection job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEventsDetectionJobRequest AWS API Documentation
    #
    class DescribeEventsDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events_detection_job_properties
    #   An object that contains the properties associated with an event
    #   detection job.
    #   @return [Types::EventsDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeEventsDetectionJobResponse AWS API Documentation
    #
    class DescribeEventsDetectionJobResponse < Struct.new(
      :events_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   @return [String]
    #
    # @!attribute [rw] flywheel_iteration_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeFlywheelIterationRequest AWS API Documentation
    #
    class DescribeFlywheelIterationRequest < Struct.new(
      :flywheel_arn,
      :flywheel_iteration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_iteration_properties
    #   The configuration properties of a flywheel iteration.
    #   @return [Types::FlywheelIterationProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeFlywheelIterationResponse AWS API Documentation
    #
    class DescribeFlywheelIterationResponse < Struct.new(
      :flywheel_iteration_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeFlywheelRequest AWS API Documentation
    #
    class DescribeFlywheelRequest < Struct.new(
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_properties
    #   The flywheel properties.
    #   @return [Types::FlywheelProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeFlywheelResponse AWS API Documentation
    #
    class DescribeFlywheelResponse < Struct.new(
      :flywheel_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartKeyPhrasesDetectionJob` operation returns this identifier in
    #   its response.
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

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the custom model version that has
    #   the resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeResourcePolicyRequest AWS API Documentation
    #
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_policy
    #   The JSON body of the resource-based policy.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time at which the policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The time at which the policy was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] policy_revision_id
    #   The revision ID of the policy. Each time you modify a policy, Amazon
    #   Comprehend assigns a new revision ID, and it deletes the prior
    #   version of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeResourcePolicyResponse AWS API Documentation
    #
    class DescribeResourcePolicyResponse < Struct.new(
      :resource_policy,
      :creation_time,
      :last_modified_time,
      :policy_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] job_id
    #   The identifier that Amazon Comprehend generated for the job. The
    #   `StartTargetedSentimentDetectionJob` operation returns this
    #   identifier in its response.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTargetedSentimentDetectionJobRequest AWS API Documentation
    #
    class DescribeTargetedSentimentDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targeted_sentiment_detection_job_properties
    #   An object that contains the properties associated with a targeted
    #   sentiment detection job.
    #   @return [Types::TargetedSentimentDetectionJobProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DescribeTargetedSentimentDetectionJobResponse AWS API Documentation
    #
    class DescribeTargetedSentimentDetectionJobResponse < Struct.new(
      :targeted_sentiment_detection_job_properties)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] text
    #   A UTF-8 text string. The string must contain at least 20 characters.
    #   The maximum string size is 100 KB.
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
    #   Array of languages that Amazon Comprehend detected in the input
    #   text. The array is sorted in descending order of the score (the
    #   dominant language is always the first element in the array).
    #
    #   For each language, the response returns the RFC 5646 language code
    #   and the level of confidence that Amazon Comprehend has in the
    #   accuracy of its inference. For more information about RFC 5646, see
    #   [Tags for Identifying Languages][1] on the *IETF Tools* web site.
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

    # @!attribute [rw] text
    #   A UTF-8 text string. The maximum string size is 100 KB. If you enter
    #   text using this parameter, do not use the `Bytes` parameter.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. You can specify any of the
    #   primary languages supported by Amazon Comprehend. If your request
    #   includes the endpoint for a custom entity recognition model, Amazon
    #   Comprehend uses the language of your custom model, and it ignores
    #   any language code that you specify here.
    #
    #   All input documents must be in the same language.
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
    #
    #   For information about endpoints, see [Managing endpoints][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] bytes
    #   This field applies only when you use a custom entity recognition
    #   model that was trained with PDF annotations. For other cases, enter
    #   your text input in the `Text` field.
    #
    #   Use the `Bytes` parameter to input a text, PDF, Word or image file.
    #   Using a plain-text file in the `Bytes` parameter is equivelent to
    #   using the `Text` parameter (the `Entities` field in the response is
    #   identical).
    #
    #   You can also use the `Bytes` parameter to input an Amazon Textract
    #   `DetectDocumentText` or `AnalyzeDocument` output file.
    #
    #   Provide the input document as a sequence of base64-encoded bytes. If
    #   your code uses an Amazon Web Services SDK to detect entities, the
    #   SDK may encode the document file bytes for you.
    #
    #   The maximum length of this field depends on the input document type.
    #   For details, see [ Inputs for real-time custom analysis][1] in the
    #   Comprehend Developer Guide.
    #
    #   If you use the `Bytes` parameter, do not use the `Text` parameter.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html
    #   @return [String]
    #
    # @!attribute [rw] document_reader_config
    #   Provides configuration parameters to override the default actions
    #   for extracting text from PDF documents and image files.
    #   @return [Types::DocumentReaderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntitiesRequest AWS API Documentation
    #
    class DetectEntitiesRequest < Struct.new(
      :text,
      :language_code,
      :endpoint_arn,
      :bytes,
      :document_reader_config)
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
    #   list of default entity types, see [Entities][1] in the Comprehend
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] document_metadata
    #   Information about the document, discovered during text extraction.
    #   This field is present in the response only if your request used the
    #   `Byte` parameter.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] document_type
    #   The document type for each page in the input document. This field is
    #   present in the response only if your request used the `Byte`
    #   parameter.
    #   @return [Array<Types::DocumentTypeListItem>]
    #
    # @!attribute [rw] blocks
    #   Information about each block of text in the input document. Blocks
    #   are nested. A page block contains a block for each line of text,
    #   which contains a block for each word.
    #
    #   The `Block` content for a Word input document does not include a
    #   `Geometry` field.
    #
    #   The `Block` field is not present in the response for plain-text
    #   inputs.
    #   @return [Array<Types::Block>]
    #
    # @!attribute [rw] errors
    #   Page-level errors that the system detected while processing the
    #   input document. The field is empty if the system encountered no
    #   errors.
    #   @return [Array<Types::ErrorsListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectEntitiesResponse AWS API Documentation
    #
    class DetectEntitiesResponse < Struct.new(
      :entities,
      :document_metadata,
      :document_type,
      :blocks,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] text
    #   A UTF-8 text string. The string must contain less than 100 KB of
    #   UTF-8 encoded characters.
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

    # @!attribute [rw] text
    #   A UTF-8 text string. The maximum string size is 100 KB.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. Currently, English is the only
    #   valid language.
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

    # @!attribute [rw] text
    #   A UTF-8 text string. The maximum string size is 5 KB.
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

    # @!attribute [rw] text
    #   A UTF-8 string. The maximum string size is 5 KB.
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
    #   [Syntax][1] in the Comprehend Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html
    #   @return [Array<Types::SyntaxToken>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectSyntaxResponse AWS API Documentation
    #
    class DetectSyntaxResponse < Struct.new(
      :syntax_tokens)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] text
    #   A UTF-8 text string. The maximum string length is 5 KB.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. Currently, English is the only
    #   supported language.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectTargetedSentimentRequest AWS API Documentation
    #
    class DetectTargetedSentimentRequest < Struct.new(
      :text,
      :language_code)
      SENSITIVE = [:text]
      include Aws::Structure
    end

    # @!attribute [rw] entities
    #   Targeted sentiment analysis for each of the entities identified in
    #   the input text.
    #   @return [Array<Types::TargetedSentimentEntity>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DetectTargetedSentimentResponse AWS API Documentation
    #
    class DetectTargetedSentimentResponse < Struct.new(
      :entities)
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
    # @!attribute [rw] page
    #   Page number in the input document. This field is present in the
    #   response only if your request includes the `Byte` parameter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClass AWS API Documentation
    #
    class DocumentClass < Struct.new(
      :name,
      :score,
      :page)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration required for a custom classification model.
    #
    # @!attribute [rw] mode
    #   Classification mode indicates whether the documents are
    #   `MULTI_CLASS` or `MULTI_LABEL`.
    #   @return [String]
    #
    # @!attribute [rw] labels
    #   One or more labels to associate with the custom classifier.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassificationConfig AWS API Documentation
    #
    class DocumentClassificationConfig < Struct.new(
      :mode,
      :labels)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of document classification
    # jobs. For more information, see the operation. You can provide only
    # one filter parameter in each request.
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
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the document classification job.
    #   It is a unique, fully qualified identifier for the job. It includes
    #   the Amazon Web Services account, Amazon Web Services Region, and the
    #   job ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    #   [1]: https://docs.aws.amazon.com/vppc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassificationJobProperties AWS API Documentation
    #
    class DocumentClassificationJobProperties < Struct.new(
      :job_id,
      :job_arn,
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
      :vpc_config,
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The location of the training documents. This parameter is required in
    # a request to create a native classifier model.
    #
    # @!attribute [rw] s3_uri
    #   The S3 URI location of the training documents specified in the S3Uri
    #   CSV file.
    #   @return [String]
    #
    # @!attribute [rw] test_s3_uri
    #   The S3 URI location of the test documents included in the TestS3Uri
    #   CSV file. This field is not required if you do not specify a test
    #   CSV file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierDocuments AWS API Documentation
    #
    class DocumentClassifierDocuments < Struct.new(
      :s3_uri,
      :test_s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of document classifiers. You
    # can only specify one filtering parameter in a request. For more
    # information, see the `ListDocumentClassifiers` operation.
    #
    # @!attribute [rw] status
    #   Filters the list of classifiers based on status.
    #   @return [String]
    #
    # @!attribute [rw] document_classifier_name
    #   The name that you assigned to the document classifier
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
      :document_classifier_name,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input properties for training a document classifier.
    #
    # For more information on how the input file is formatted, see
    # [Preparing training data][1] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/prep-classifier-data.html
    #
    # @!attribute [rw] data_format
    #   The format of your training data:
    #
    #   * `COMPREHEND_CSV`: A two-column CSV file, where labels are provided
    #     in the first column, and documents are provided in the second. If
    #     you use this value, you must provide the `S3Uri` parameter in your
    #     request.
    #
    #   * `AUGMENTED_MANIFEST`: A labeled dataset that is produced by Amazon
    #     SageMaker Ground Truth. This file is in JSON lines format. Each
    #     line is a complete JSON object that contains a training document
    #     and its associated labels.
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
    #   same Region as the API endpoint that you are calling. The URI can
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
    # @!attribute [rw] test_s3_uri
    #   This specifies the Amazon S3 location where the test annotations for
    #   an entity recognizer are located. The URI must be in the same Amazon
    #   Web Services Region as the API endpoint that you are calling.
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
    # @!attribute [rw] document_type
    #   The type of input documents for training the model. Provide
    #   plain-text documents to create a plain-text model, and provide
    #   semi-structured documents to create a native model.
    #   @return [String]
    #
    # @!attribute [rw] documents
    #   The S3 location of the training documents. This parameter is
    #   required in a request to create a native classifier model.
    #   @return [Types::DocumentClassifierDocuments]
    #
    # @!attribute [rw] document_reader_config
    #   Provides configuration parameters to override the default actions
    #   for extracting text from PDF documents and image files.
    #
    #   By default, Amazon Comprehend performs the following actions to
    #   extract text from files, based on the input file type:
    #
    #   * **Word files** - Amazon Comprehend parser extracts the text.
    #
    #   * **Digital PDF files** - Amazon Comprehend parser extracts the
    #     text.
    #
    #   * **Image files and scanned PDF files** - Amazon Comprehend uses the
    #     Amazon Textract `DetectDocumentText` API to extract the text.
    #
    #   `DocumentReaderConfig` does not apply to plain text files or Word
    #   files.
    #
    #   For image files and PDF documents, you can override these default
    #   actions using the fields listed below. For more information, see [
    #   Setting text extraction options][1] in the Comprehend Developer
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-set-textract-options.html
    #   @return [Types::DocumentReaderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierInputDataConfig AWS API Documentation
    #
    class DocumentClassifierInputDataConfig < Struct.new(
      :data_format,
      :s3_uri,
      :test_s3_uri,
      :label_delimiter,
      :augmented_manifests,
      :document_type,
      :documents,
      :document_reader_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide the location for output data from a custom classifier job.
    # This field is mandatory if you are training a native classifier model.
    #
    # @!attribute [rw] s3_uri
    #   When you use the `OutputDataConfig` object while creating a custom
    #   classifier, you specify the Amazon S3 location where you want to
    #   write the confusion matrix and other output files. The URI must be
    #   in the same Region as the API endpoint that you are calling. The
    #   location is used as the prefix for the actual location of this
    #   output file.
    #
    #   When the custom classifier job is finished, the service creates the
    #   output file in a directory specific to the job. The `S3Uri` field
    #   contains the location of the output file, called `output.tar.gz`. It
    #   is a compressed archive that contains the confusion matrix.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt the output results from an
    #   analysis job. The KmsKeyId can be one of the following formats:
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
    # @!attribute [rw] flywheel_stats_s3_prefix
    #   The Amazon S3 prefix for the data lake location of the flywheel
    #   statistics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierOutputDataConfig AWS API Documentation
    #
    class DocumentClassifierOutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id,
      :flywheel_stats_s3_prefix)
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
    #   the classifier is ready to use. If the status is
    #   `TRAINED_WITH_WARNINGS` the classifier training succeeded, but you
    #   should review the warnings returned in the
    #   `CreateDocumentClassifier` response.
    #
    #   If the status is `FAILED` you can see additional information about
    #   why the classifier wasn't trained in the `Message` field.
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    #   [1]: https://docs.aws.amazon.com/vppc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] mode
    #   Indicates the mode in which the specific classifier was trained.
    #   This also indicates the format of input documents and the format of
    #   the confusion matrix. Each classifier can only be trained in one
    #   mode and this cannot be changed once the classifier is trained.
    #   @return [String]
    #
    # @!attribute [rw] model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version name that you assigned to the document classifier.
    #   @return [String]
    #
    # @!attribute [rw] source_model_arn
    #   The Amazon Resource Name (ARN) of the source model. This model was
    #   imported from a different Amazon Web Services account to create the
    #   document classifier model in your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel
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
      :mode,
      :model_kms_key_id,
      :version_name,
      :source_model_arn,
      :flywheel_arn)
      SENSITIVE = [:classifier_metadata]
      include Aws::Structure
    end

    # Describes information about a document classifier and its versions.
    #
    # @!attribute [rw] document_classifier_name
    #   The name that you assigned the document classifier.
    #   @return [String]
    #
    # @!attribute [rw] number_of_versions
    #   The number of versions you created.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_version_created_at
    #   The time that the latest document classifier version was submitted
    #   for processing.
    #   @return [Time]
    #
    # @!attribute [rw] latest_version_name
    #   The version name you assigned to the latest document classifier
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_status
    #   Provides the status of the latest document classifier version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentClassifierSummary AWS API Documentation
    #
    class DocumentClassifierSummary < Struct.new(
      :document_classifier_name,
      :number_of_versions,
      :latest_version_created_at,
      :latest_version_name,
      :latest_version_status)
      SENSITIVE = []
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
    # @!attribute [rw] page
    #   Page number where the label occurs. This field is present in the
    #   response only if your request includes the `Byte` parameter.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentLabel AWS API Documentation
    #
    class DocumentLabel < Struct.new(
      :name,
      :score,
      :page)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the document, discovered during text extraction.
    #
    # @!attribute [rw] pages
    #   Number of pages in the document.
    #   @return [Integer]
    #
    # @!attribute [rw] extracted_characters
    #   List of pages in the document, with the number of characters
    #   extracted from each page.
    #   @return [Array<Types::ExtractedCharactersListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentMetadata AWS API Documentation
    #
    class DocumentMetadata < Struct.new(
      :pages,
      :extracted_characters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration parameters to override the default actions for
    # extracting text from PDF documents and image files.
    #
    # By default, Amazon Comprehend performs the following actions to
    # extract text from files, based on the input file type:
    #
    # * **Word files** - Amazon Comprehend parser extracts the text.
    #
    # * **Digital PDF files** - Amazon Comprehend parser extracts the text.
    #
    # * **Image files and scanned PDF files** - Amazon Comprehend uses the
    #   Amazon Textract `DetectDocumentText` API to extract the text.
    #
    # `DocumentReaderConfig` does not apply to plain text files or Word
    # files.
    #
    # For image files and PDF documents, you can override these default
    # actions using the fields listed below. For more information, see [
    # Setting text extraction options][1] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/idp-set-textract-options.html
    #
    # @!attribute [rw] document_read_action
    #   This field defines the Amazon Textract API operation that Amazon
    #   Comprehend uses to extract text from PDF files and image files.
    #   Enter one of the following values:
    #
    #   * `TEXTRACT_DETECT_DOCUMENT_TEXT` - The Amazon Comprehend service
    #     uses the `DetectDocumentText` API operation.
    #
    #   * `TEXTRACT_ANALYZE_DOCUMENT` - The Amazon Comprehend service uses
    #     the `AnalyzeDocument` API operation.
    #   @return [String]
    #
    # @!attribute [rw] document_read_mode
    #   Determines the text extraction actions for PDF files. Enter one of
    #   the following values:
    #
    #   * `SERVICE_DEFAULT` - use the Amazon Comprehend service defaults for
    #     PDF files.
    #
    #   * `FORCE_DOCUMENT_READ_ACTION` - Amazon Comprehend uses the Textract
    #     API specified by DocumentReadAction for all PDF files, including
    #     digital PDF files.
    #   @return [String]
    #
    # @!attribute [rw] feature_types
    #   Specifies the type of Amazon Textract features to apply. If you
    #   chose `TEXTRACT_ANALYZE_DOCUMENT` as the read action, you must
    #   specify one or both of the following values:
    #
    #   * `TABLES` - Returns information about any tables that are detected
    #     in the input document.
    #
    #   * `FORMS` - Returns information and the data from any forms that are
    #     detected in the input document.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentReaderConfig AWS API Documentation
    #
    class DocumentReaderConfig < Struct.new(
      :document_read_action,
      :document_read_mode,
      :feature_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Document type for each page in the document.
    #
    # @!attribute [rw] page
    #   Page number.
    #   @return [Integer]
    #
    # @!attribute [rw] type
    #   Document type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/DocumentTypeListItem AWS API Documentation
    #
    class DocumentTypeListItem < Struct.new(
      :page,
      :type)
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
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the dominant language detection
    #   job. It is a unique, fully qualified identifier for the job. It
    #   includes the Amazon Web Services account, Amazon Web Services
    #   Region, and the job ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
      :job_arn,
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

    # The filter used to determine which endpoints are returned. You can
    # filter jobs on their name, model, status, or the date and time that
    # they were created. You can only set one filter at a time.
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

    # Specifies information about the specified endpoint. For information
    # about endpoints, see [Managing endpoints][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html
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
    # @!attribute [rw] desired_model_arn
    #   ARN of the new model to use for updating an existing endpoint. This
    #   ARN is going to be different from the model ARN when the update is
    #   in progress
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
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to trained custom models encrypted with a
    #   customer managed key (ModelKmsKeyId).
    #   @return [String]
    #
    # @!attribute [rw] desired_data_access_role_arn
    #   Data access role ARN to use in case the new model is encrypted with
    #   a customer KMS key.
    #   @return [String]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EndpointProperties AWS API Documentation
    #
    class EndpointProperties < Struct.new(
      :endpoint_arn,
      :status,
      :message,
      :model_arn,
      :desired_model_arn,
      :desired_inference_units,
      :current_inference_units,
      :creation_time,
      :last_modified_time,
      :data_access_role_arn,
      :desired_data_access_role_arn,
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of dominant language
    # detection jobs. For more information, see the operation.
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
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the entities detection job. It is
    #   a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Name (ARN) of the flywheel associated with this
    #   job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntitiesDetectionJobProperties AWS API Documentation
    #
    class EntitiesDetectionJobProperties < Struct.new(
      :job_id,
      :job_arn,
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
      :vpc_config,
      :flywheel_arn)
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
    #   The entity type. For entity detection using the built-in model, this
    #   field contains one of the standard entity types listed below.
    #
    #   For custom entity detection, this field contains one of the entity
    #   types that you specified when you trained your custom model.
    #   @return [String]
    #
    # @!attribute [rw] text
    #   The text of the entity.
    #   @return [String]
    #
    # @!attribute [rw] begin_offset
    #   The zero-based offset from the beginning of the source text to the
    #   first character in the entity.
    #
    #   This field is empty for non-text input.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The zero-based offset from the beginning of the source text to the
    #   last character in the entity.
    #
    #   This field is empty for non-text input.
    #   @return [Integer]
    #
    # @!attribute [rw] block_references
    #   A reference to each block for this entity. This field is empty for
    #   plain-text input.
    #   @return [Array<Types::BlockReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :score,
      :type,
      :text,
      :begin_offset,
      :end_offset,
      :block_references)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies one of the label or labels that categorize the personally
    # identifiable information (PII) entity being analyzed.
    #
    # @!attribute [rw] name
    #   The name of the label.
    #   @return [String]
    #
    # @!attribute [rw] score
    #   The level of confidence that Amazon Comprehend has in the accuracy
    #   of the detection.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityLabel AWS API Documentation
    #
    class EntityLabel < Struct.new(
      :name,
      :score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration required for an entity recognition model.
    #
    # @!attribute [rw] entity_types
    #   Up to 25 entity types that the model is trained to recognize.
    #   @return [Array<Types::EntityTypesListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognitionConfig AWS API Documentation
    #
    class EntityRecognitionConfig < Struct.new(
      :entity_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the annotations associated with a entity recognizer.
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the annotations for an entity
    #   recognizer are located. The URI must be in the same Region as the
    #   API endpoint that you are calling.
    #   @return [String]
    #
    # @!attribute [rw] test_s3_uri
    #   Specifies the Amazon S3 location where the test annotations for an
    #   entity recognizer are located. The URI must be in the same Region as
    #   the API endpoint that you are calling.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerAnnotations AWS API Documentation
    #
    class EntityRecognizerAnnotations < Struct.new(
      :s3_uri,
      :test_s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the training documents submitted with an entity recognizer.
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the training documents for an
    #   entity recognizer are located. The URI must be in the same Region as
    #   the API endpoint that you are calling.
    #   @return [String]
    #
    # @!attribute [rw] test_s3_uri
    #   Specifies the Amazon S3 location where the test documents for an
    #   entity recognizer are located. The URI must be in the same Amazon
    #   Web Services Region as the API endpoint that you are calling.
    #   @return [String]
    #
    # @!attribute [rw] input_format
    #   Specifies how the text in an input file should be processed. This is
    #   optional, and the default is ONE\_DOC\_PER\_LINE.
    #   ONE\_DOC\_PER\_FILE - Each file is considered a separate document.
    #   Use this option when you are processing large documents, such as
    #   newspaper articles or scientific papers. ONE\_DOC\_PER\_LINE - Each
    #   line in a file is considered a separate document. Use this option
    #   when you are processing many short documents, such as text messages.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerDocuments AWS API Documentation
    #
    class EntityRecognizerDocuments < Struct.new(
      :s3_uri,
      :test_s3_uri,
      :input_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the entity list submitted with an entity recognizer.
    #
    # @!attribute [rw] s3_uri
    #   Specifies the Amazon S3 location where the entity list is located.
    #   The URI must be in the same Region as the API endpoint that you are
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
    #   `F1Score` is the harmonic average of the two scores. For plain text
    #   entity recognizer models, the range is 0 to 100, where 100 is the
    #   best score. For PDF/Word entity recognizer models, the range is 0 to
    #   1, where 1 is the best score.
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
    # information, see the `ListEntityRecognizers` operation./&gt;
    #
    # @!attribute [rw] status
    #   The status of an entity recognizer.
    #   @return [String]
    #
    # @!attribute [rw] recognizer_name
    #   The name that you assigned the entity recognizer.
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
      :recognizer_name,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the format and location of the input data.
    #
    # @!attribute [rw] data_format
    #   The format of your training data:
    #
    #   * `COMPREHEND_CSV`: A CSV file that supplements your training
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
    #   * `AUGMENTED_MANIFEST`: A labeled dataset that is produced by Amazon
    #     SageMaker Ground Truth. This file is in JSON lines format. Each
    #     line is a complete JSON object that contains a training document
    #     and its labels. Each label annotates a named entity in the
    #     training document.
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

    # Output data configuration.
    #
    # @!attribute [rw] flywheel_stats_s3_prefix
    #   The Amazon S3 prefix for the data lake location of the flywheel
    #   statistics.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerOutputDataConfig AWS API Documentation
    #
    class EntityRecognizerOutputDataConfig < Struct.new(
      :flywheel_stats_s3_prefix)
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version name you assigned to the entity recognizer.
    #   @return [String]
    #
    # @!attribute [rw] source_model_arn
    #   The Amazon Resource Name (ARN) of the source model. This model was
    #   imported from a different Amazon Web Services account to create the
    #   entity recognizer model in your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel
    #   @return [String]
    #
    # @!attribute [rw] output_data_config
    #   Output data configuration.
    #   @return [Types::EntityRecognizerOutputDataConfig]
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
      :vpc_config,
      :model_kms_key_id,
      :version_name,
      :source_model_arn,
      :flywheel_arn,
      :output_data_config)
      SENSITIVE = [:recognizer_metadata]
      include Aws::Structure
    end

    # Describes the information about an entity recognizer and its versions.
    #
    # @!attribute [rw] recognizer_name
    #   The name that you assigned the entity recognizer.
    #   @return [String]
    #
    # @!attribute [rw] number_of_versions
    #   The number of versions you created.
    #   @return [Integer]
    #
    # @!attribute [rw] latest_version_created_at
    #   The time that the latest entity recognizer version was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] latest_version_name
    #   The version name you assigned to the latest entity recognizer
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] latest_version_status
    #   Provides the status of the latest entity recognizer version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EntityRecognizerSummary AWS API Documentation
    #
    class EntityRecognizerSummary < Struct.new(
      :recognizer_name,
      :number_of_versions,
      :latest_version_created_at,
      :latest_version_name,
      :latest_version_status)
      SENSITIVE = []
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
    #   A measure of how accurate the recognizer results are for a specific
    #   entity type in the test data. It is derived from the `Precision` and
    #   `Recall` values. The `F1Score` is the harmonic average of the two
    #   scores. The highest score is 1, and the worst score is 0.
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

    # Text extraction encountered one or more page-level errors in the input
    # document.
    #
    # The `ErrorCode` contains one of the following values:
    #
    # * TEXTRACT\_BAD\_PAGE - Amazon Textract cannot read the page. For more
    #   information about page limits in Amazon Textract, see [ Page Quotas
    #   in Amazon Textract][1].
    #
    # * TEXTRACT\_PROVISIONED\_THROUGHPUT\_EXCEEDED - The number of requests
    #   exceeded your throughput limit. For more information about
    #   throughput quotas in Amazon Textract, see [ Default quotas in Amazon
    #   Textract][2].
    #
    # * PAGE\_CHARACTERS\_EXCEEDED - Too many text characters on the page
    #   (10,000 characters maximum).
    #
    # * PAGE\_SIZE\_EXCEEDED - The maximum page size is 10 MB.
    #
    # * INTERNAL\_SERVER\_ERROR - The request encountered a service issue.
    #   Try the API request again.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/limits-document.html
    # [2]: https://docs.aws.amazon.com/textract/latest/dg/limits-quotas-explained.html
    #
    # @!attribute [rw] page
    #   Page number where the error occurred.
    #   @return [Integer]
    #
    # @!attribute [rw] error_code
    #   Error code for the cause of the error.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Text message explaining the reason for the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ErrorsListItem AWS API Documentation
    #
    class ErrorsListItem < Struct.new(
      :page,
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information for filtering a list of event detection jobs.
    #
    # @!attribute [rw] job_name
    #   Filters on the name of the events detection job.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EventsDetectionJobFilter AWS API Documentation
    #
    class EventsDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an events detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the events detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the events detection job. It is a
    #   unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab`
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name you assigned the events detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the events detection job.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the events detection job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the events detection job was submitted for processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the events detection job completed.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input data configuration that you supplied when you created the
    #   events detection job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   The output data configuration that you supplied when you created the
    #   events detection job.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] target_event_types
    #   The types of events that are detected by the job.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/EventsDetectionJobProperties AWS API Documentation
    #
    class EventsDetectionJobProperties < Struct.new(
      :job_id,
      :job_arn,
      :job_name,
      :job_status,
      :message,
      :submit_time,
      :end_time,
      :input_data_config,
      :output_data_config,
      :language_code,
      :data_access_role_arn,
      :target_event_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Array of the number of characters extracted from each page.
    #
    # @!attribute [rw] page
    #   Page number.
    #   @return [Integer]
    #
    # @!attribute [rw] count
    #   Number of characters extracted from each page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ExtractedCharactersListItem AWS API Documentation
    #
    class ExtractedCharactersListItem < Struct.new(
      :page,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter the flywheels based on creation time or flywheel status.
    #
    # @!attribute [rw] status
    #   Filter the flywheels based on the flywheel status.
    #   @return [String]
    #
    # @!attribute [rw] creation_time_after
    #   Filter the flywheels to include flywheels created after the
    #   specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   Filter the flywheels to include flywheels created before the
    #   specified time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/FlywheelFilter AWS API Documentation
    #
    class FlywheelFilter < Struct.new(
      :status,
      :creation_time_after,
      :creation_time_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter the flywheel iterations based on creation time.
    #
    # @!attribute [rw] creation_time_after
    #   Filter the flywheel iterations to include iterations created after
    #   the specified time.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   Filter the flywheel iterations to include iterations created before
    #   the specified time.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/FlywheelIterationFilter AWS API Documentation
    #
    class FlywheelIterationFilter < Struct.new(
      :creation_time_after,
      :creation_time_before)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration properties of a flywheel iteration.
    #
    # @!attribute [rw] flywheel_arn
    #   @return [String]
    #
    # @!attribute [rw] flywheel_iteration_id
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation start time of the flywheel iteration.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The completion time of this flywheel iteration.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the flywheel iteration.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the flywheel iteration.
    #   @return [String]
    #
    # @!attribute [rw] evaluated_model_arn
    #   The ARN of the evaluated model associated with this flywheel
    #   iteration.
    #   @return [String]
    #
    # @!attribute [rw] evaluated_model_metrics
    #   The evaluation metrics associated with the evaluated model.
    #   @return [Types::FlywheelModelEvaluationMetrics]
    #
    # @!attribute [rw] trained_model_arn
    #   The ARN of the trained model associated with this flywheel
    #   iteration.
    #   @return [String]
    #
    # @!attribute [rw] trained_model_metrics
    #   The metrics associated with the trained model.
    #   @return [Types::FlywheelModelEvaluationMetrics]
    #
    # @!attribute [rw] evaluation_manifest_s3_prefix
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/FlywheelIterationProperties AWS API Documentation
    #
    class FlywheelIterationProperties < Struct.new(
      :flywheel_arn,
      :flywheel_iteration_id,
      :creation_time,
      :end_time,
      :status,
      :message,
      :evaluated_model_arn,
      :evaluated_model_metrics,
      :trained_model_arn,
      :trained_model_metrics,
      :evaluation_manifest_s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The evaluation metrics associated with the evaluated model.
    #
    # @!attribute [rw] average_f1_score
    #   The average F1 score from the evaluation metrics.
    #   @return [Float]
    #
    # @!attribute [rw] average_precision
    #   Average precision metric for the model.
    #   @return [Float]
    #
    # @!attribute [rw] average_recall
    #   Average recall metric for the model.
    #   @return [Float]
    #
    # @!attribute [rw] average_accuracy
    #   Average accuracy metric for the model.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/FlywheelModelEvaluationMetrics AWS API Documentation
    #
    class FlywheelModelEvaluationMetrics < Struct.new(
      :average_f1_score,
      :average_precision,
      :average_recall,
      :average_accuracy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The flywheel properties.
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] active_model_arn
    #   The Amazon Resource Number (ARN) of the active model version.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend permission to access the flywheel data.
    #   @return [String]
    #
    # @!attribute [rw] task_config
    #   Configuration about the custom classifier associated with the
    #   flywheel.
    #   @return [Types::TaskConfig]
    #
    # @!attribute [rw] data_lake_s3_uri
    #   Amazon S3 URI of the data lake location.
    #   @return [String]
    #
    # @!attribute [rw] data_security_config
    #   Data security configuration.
    #   @return [Types::DataSecurityConfig]
    #
    # @!attribute [rw] status
    #   The status of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   Model type of the flywheel's model.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the flywheel.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Last modified time for the flywheel.
    #   @return [Time]
    #
    # @!attribute [rw] latest_flywheel_iteration
    #   The most recent flywheel iteration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/FlywheelProperties AWS API Documentation
    #
    class FlywheelProperties < Struct.new(
      :flywheel_arn,
      :active_model_arn,
      :data_access_role_arn,
      :task_config,
      :data_lake_s3_uri,
      :data_security_config,
      :status,
      :model_type,
      :message,
      :creation_time,
      :last_modified_time,
      :latest_flywheel_iteration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Flywheel summary information.
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel
    #   @return [String]
    #
    # @!attribute [rw] active_model_arn
    #   ARN of the active model version for the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] data_lake_s3_uri
    #   Amazon S3 URI of the data lake location.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   Model type of the flywheel's model.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   Creation time of the flywheel.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   Last modified time for the flywheel.
    #   @return [Time]
    #
    # @!attribute [rw] latest_flywheel_iteration
    #   The most recent flywheel iteration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/FlywheelSummary AWS API Documentation
    #
    class FlywheelSummary < Struct.new(
      :flywheel_arn,
      :active_model_arn,
      :data_lake_s3_uri,
      :status,
      :model_type,
      :message,
      :creation_time,
      :last_modified_time,
      :latest_flywheel_iteration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the location of items on a document page.
    #
    # For additional information, see [Geometry][1] in the Amazon Textract
    # API reference.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/API_Geometry.html
    #
    # @!attribute [rw] bounding_box
    #   An axis-aligned coarse representation of the location of the
    #   recognized item on the document page.
    #   @return [Types::BoundingBox]
    #
    # @!attribute [rw] polygon
    #   Within the bounding box, a fine-grained polygon around the
    #   recognized item.
    #   @return [Array<Types::Point>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/Geometry AWS API Documentation
    #
    class Geometry < Struct.new(
      :bounding_box,
      :polygon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_model_arn
    #   The Amazon Resource Name (ARN) of the custom model to import.
    #   @return [String]
    #
    # @!attribute [rw] model_name
    #   The name to assign to the custom model that is created in Amazon
    #   Comprehend by this import.
    #   @return [String]
    #
    # @!attribute [rw] version_name
    #   The version name given to the custom model that is created by this
    #   import. Version names can have a maximum of 256 characters.
    #   Alphanumeric characters, hyphens (-) and underscores (\_) are
    #   allowed. The version name must be unique among all models with the
    #   same classifier name in the account/Region.
    #   @return [String]
    #
    # @!attribute [rw] model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend permission to use Amazon Key Management Service (KMS) to
    #   encrypt or decrypt the custom model.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the custom model that is created by this
    #   import. A tag is a key-value pair that adds as a metadata to a
    #   resource used by Amazon Comprehend. For example, a tag with
    #   "Sales" as the key might be added to a resource to indicate its
    #   use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ImportModelRequest AWS API Documentation
    #
    class ImportModelRequest < Struct.new(
      :source_model_arn,
      :model_name,
      :version_name,
      :model_kms_key_id,
      :data_access_role_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_arn
    #   The Amazon Resource Name (ARN) of the custom model being imported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ImportModelResponse AWS API Documentation
    #
    class ImportModelResponse < Struct.new(
      :model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input properties for an inference job. The document reader config
    # field applies only to non-text inputs for custom analysis.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI for the input data. The URI must be in same Region
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
    # @!attribute [rw] document_reader_config
    #   Provides configuration parameters to override the default actions
    #   for extracting text from PDF documents and image files.
    #   @return [Types::DocumentReaderConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/InputDataConfig AWS API Documentation
    #
    class InputDataConfig < Struct.new(
      :s3_uri,
      :input_format,
      :document_reader_config)
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

    # Provides additional detail about why the request failed:
    #
    # * Document size is too large - Check the size of your file and
    #   resubmit the request.
    #
    # * Document type is not supported - Check the file type and resubmit
    #   the request.
    #
    # * Too many pages in the document - Check the number of pages in your
    #   file and resubmit the request.
    #
    # * Access denied to Amazon Textract - Verify that your account has
    #   permission to use Amazon Textract API operations and resubmit the
    #   request.
    #
    # @!attribute [rw] reason
    #   Reason code is `INVALID_DOCUMENT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/InvalidRequestDetail AWS API Documentation
    #
    class InvalidRequestDetail < Struct.new(
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @!attribute [rw] detail
    #   Provides additional detail about why the request failed:
    #
    #   * Document size is too large - Check the size of your file and
    #     resubmit the request.
    #
    #   * Document type is not supported - Check the file type and resubmit
    #     the request.
    #
    #   * Too many pages in the document - Check the number of pages in your
    #     file and resubmit the request.
    #
    #   * Access denied to Amazon Textract - Verify that your account has
    #     permission to use Amazon Textract API operations and resubmit the
    #     request.
    #   @return [Types::InvalidRequestDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message,
      :reason,
      :detail)
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
    #   The zero-based offset from the beginning of the source text to the
    #   first character in the key phrase.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The zero-based offset from the beginning of the source text to the
    #   last character in the key phrase.
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
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the key phrases detection job. It
    #   is a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt data on
    #   the storage volume attached to the ML compute instance(s) that
    #   process the analysis job. The VolumeKmsKeyId can be either of the
    #   following formats:
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
      :job_arn,
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

    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filters the datasets to be returned in the response.
    #   @return [Types::DatasetFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a response. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDatasetsRequest AWS API Documentation
    #
    class ListDatasetsRequest < Struct.new(
      :flywheel_arn,
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataset_properties_list
    #   The dataset properties list.
    #   @return [Array<Types::DatasetProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDatasetsResponse AWS API Documentation
    #
    class ListDatasetsResponse < Struct.new(
      :dataset_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return on each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassifierSummariesRequest AWS API Documentation
    #
    class ListDocumentClassifierSummariesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_classifier_summaries_list
    #   The list of summaries of document classifiers.
    #   @return [Array<Types::DocumentClassifierSummary>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListDocumentClassifierSummariesResponse AWS API Documentation
    #
    class ListDocumentClassifierSummariesResponse < Struct.new(
      :document_classifier_summaries_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return on each page. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntityRecognizerSummariesRequest AWS API Documentation
    #
    class ListEntityRecognizerSummariesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_recognizer_summaries_list
    #   The list entity recognizer summaries.
    #   @return [Array<Types::EntityRecognizerSummary>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEntityRecognizerSummariesResponse AWS API Documentation
    #
    class ListEntityRecognizerSummariesResponse < Struct.new(
      :entity_recognizer_summaries_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::EventsDetectionJobFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in each page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEventsDetectionJobsRequest AWS API Documentation
    #
    class ListEventsDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] events_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::EventsDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListEventsDetectionJobsResponse AWS API Documentation
    #
    class ListEventsDetectionJobsResponse < Struct.new(
      :events_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   The ARN of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filter the flywheel iteration history based on creation time.
    #   @return [Types::FlywheelIterationFilter]
    #
    # @!attribute [rw] next_token
    #   Next token
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of iteration history results to return
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListFlywheelIterationHistoryRequest AWS API Documentation
    #
    class ListFlywheelIterationHistoryRequest < Struct.new(
      :flywheel_arn,
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_iteration_properties_list
    #   List of flywheel iteration properties
    #   @return [Array<Types::FlywheelIterationProperties>]
    #
    # @!attribute [rw] next_token
    #   Next token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListFlywheelIterationHistoryResponse AWS API Documentation
    #
    class ListFlywheelIterationHistoryResponse < Struct.new(
      :flywheel_iteration_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter
    #   Filters the flywheels that are returned. You can filter flywheels on
    #   their status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::FlywheelFilter]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of results to return in a response. The default is
    #   100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListFlywheelsRequest AWS API Documentation
    #
    class ListFlywheelsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_summary_list
    #   A list of flywheel properties retrieved by the service in response
    #   to the request.
    #   @return [Array<Types::FlywheelSummary>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListFlywheelsResponse AWS API Documentation
    #
    class ListFlywheelsResponse < Struct.new(
      :flywheel_summary_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] filter
    #   Filters the jobs that are returned. You can filter jobs on their
    #   name, status, or the date and time that they were submitted. You can
    #   only set one filter at a time.
    #   @return [Types::TargetedSentimentDetectionJobFilter]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTargetedSentimentDetectionJobsRequest AWS API Documentation
    #
    class ListTargetedSentimentDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] targeted_sentiment_detection_job_properties_list
    #   A list containing the properties of each job that is returned.
    #   @return [Array<Types::TargetedSentimentDetectionJobProperties>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/ListTargetedSentimentDetectionJobsResponse AWS API Documentation
    #
    class ListTargetedSentimentDetectionJobsResponse < Struct.new(
      :targeted_sentiment_detection_job_properties_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Contains the sentiment and sentiment score for one mention of an
    # entity.
    #
    # For more information about targeted sentiment, see [Targeted
    # sentiment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html
    #
    # @!attribute [rw] sentiment
    #   The sentiment of the mention.
    #   @return [String]
    #
    # @!attribute [rw] sentiment_score
    #   Describes the level of confidence that Amazon Comprehend has in the
    #   accuracy of its detection of sentiments.
    #   @return [Types::SentimentScore]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/MentionSentiment AWS API Documentation
    #
    class MentionSentiment < Struct.new(
      :sentiment,
      :sentiment_score)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration parameters for the output of inference jobs.
    #
    # @!attribute [rw] s3_uri
    #   When you use the `OutputDataConfig` object with asynchronous
    #   operations, you specify the Amazon S3 location where you want to
    #   write the output data. The URI must be in the same Region as the API
    #   endpoint that you are calling. The location is used as the prefix
    #   for the actual location of the output file.
    #
    #   When the topic detection job is finished, the service creates an
    #   output file in a directory specific to the job. The `S3Uri` field
    #   contains the location of the output file, called `output.tar.gz`. It
    #   is a compressed archive that contains the ouput of the operation.
    #
    #   For a PII entity detection job, the output file is plain text, not a
    #   compressed archive. The output file name is the same as the input
    #   file, with `.out` appended at the end.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt the output results from an
    #   analysis job. The KmsKeyId can be one of the following formats:
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
    # that Amazon Comprehend can identify, see [Syntax][1] in the Comprehend
    # Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html
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
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the PII entities detection job. It
    #   is a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
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
      :job_arn,
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
    #   The zero-based offset from the beginning of the source text to the
    #   first character in the entity.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The zero-based offset from the beginning of the source text to the
    #   last character in the entity.
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
    #
    #   For a PII entity detection job, the output file is plain text, not a
    #   compressed archive. The output file name is the same as the input
    #   file, with `.out` appended at the end.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt the output results from an
    #   analysis job.
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

    # The X and Y coordinates of a point on a document page.
    #
    # For additional information, see [Point][1] in the Amazon Textract API
    # reference.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/API_Point.html
    #
    # @!attribute [rw] x
    #   The value of the X coordinate for a point on a polygon
    #   @return [Float]
    #
    # @!attribute [rw] y
    #   The value of the Y coordinate for a point on a polygon
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/Point AWS API Documentation
    #
    class Point < Struct.new(
      :x,
      :y)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the custom model to attach the
    #   policy to.
    #   @return [String]
    #
    # @!attribute [rw] resource_policy
    #   The JSON resource-based policy to attach to your custom model.
    #   Provide your JSON as a UTF-8 encoded string without line breaks. To
    #   provide valid JSON for your policy, enclose the attribute names and
    #   values in double quotes. If the JSON body is also enclosed in double
    #   quotes, then you must escape the double quotes that are inside the
    #   policy:
    #
    #   `"\{"attribute": "value", "attribute": ["value"]\}"`
    #
    #   To avoid escaping quotes, you can use single quotes to enclose the
    #   policy and double quotes to enclose the JSON names and values:
    #
    #   `'\{"attribute": "value", "attribute": ["value"]\}'`
    #   @return [String]
    #
    # @!attribute [rw] policy_revision_id
    #   The revision ID that Amazon Comprehend assigned to the policy that
    #   you are updating. If you are creating a new policy that has no prior
    #   version, don't use this parameter. Amazon Comprehend creates the
    #   revision ID for you.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PutResourcePolicyRequest AWS API Documentation
    #
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :resource_policy,
      :policy_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_revision_id
    #   The revision ID of the policy. Each time you modify a policy, Amazon
    #   Comprehend assigns a new revision ID, and it deletes the prior
    #   version of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/PutResourcePolicyResponse AWS API Documentation
    #
    class PutResourcePolicyResponse < Struct.new(
      :policy_revision_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides configuration parameters for PII entity redaction.
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

    # List of child blocks for the current block.
    #
    # @!attribute [rw] ids
    #   Identifers of the child blocks.
    #   @return [Array<String>]
    #
    # @!attribute [rw] type
    #   Only supported relationship is a child relationship.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/RelationshipsListItem AWS API Documentation
    #
    class RelationshipsListItem < Struct.new(
      :ids,
      :type)
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
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the sentiment detection job. It is
    #   a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
      :job_arn,
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
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
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] tags
    #   Tags to associate with the document classification job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel associated with the
    #   model to use.
    #   @return [String]
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
      :vpc_config,
      :tags,
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of the job,
    #   use this identifier with the `DescribeDocumentClassificationJob`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the document classification job.
    #   It is a unique, fully qualified identifier for the job. It includes
    #   the Amazon Web Services account, Amazon Web Services Region, and the
    #   job ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   * FAILED - The job did not complete. For details, use the
    #     `DescribeDocumentClassificationJob` operation.
    #
    #   * STOP\_REQUESTED - Amazon Comprehend has received a stop request
    #     for the job and is processing the request.
    #
    #   * STOPPED - The job was successfully stopped without completing.
    #   @return [String]
    #
    # @!attribute [rw] document_classifier_arn
    #   The ARN of the custom classification model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartDocumentClassificationJobResponse AWS API Documentation
    #
    class StartDocumentClassificationJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      :document_classifier_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
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
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] tags
    #   Tags to associate with the dominant language detection job. A tag is
    #   a key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
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
      :vpc_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the dominant language detection
    #   job. It is a unique, fully qualified identifier for the job. It
    #   includes the Amazon Web Services account, Amazon Web Services
    #   Region, and the job ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
      :job_arn,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
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
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] tags
    #   Tags to associate with the entities detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel associated with the
    #   model to use.
    #   @return [String]
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
      :vpc_config,
      :tags,
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of job, use
    #   this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the entities detection job. It is
    #   a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    # @!attribute [rw] entity_recognizer_arn
    #   The ARN of the custom entity recognition model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEntitiesDetectionJobResponse AWS API Documentation
    #
    class StartEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      :entity_recognizer_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the events detection job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   An unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] target_event_types
    #   The types of events to detect in the input documents.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the events detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEventsDetectionJobRequest AWS API Documentation
    #
    class StartEventsDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :target_event_types,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   An unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the events detection job. It is a
    #   unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab`
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the events detection job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartEventsDetectionJobResponse AWS API Documentation
    #
    class StartEventsDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   The ARN of the flywheel.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique identifier for the request. If you don't set the client
    #   request token, Amazon Comprehend generates one.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartFlywheelIterationRequest AWS API Documentation
    #
    class StartFlywheelIterationRequest < Struct.new(
      :flywheel_arn,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   @return [String]
    #
    # @!attribute [rw] flywheel_iteration_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartFlywheelIterationResponse AWS API Documentation
    #
    class StartFlywheelIterationResponse < Struct.new(
      :flywheel_arn,
      :flywheel_iteration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
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
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] tags
    #   Tags to associate with the key phrases detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
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
      :vpc_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the key phrase detection job. It
    #   is a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
      :job_arn,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The identifier of the job.
    #   @return [String]
    #
    # @!attribute [rw] language_code
    #   The language of the input documents. Currently, English is the only
    #   valid language.
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
    # @!attribute [rw] tags
    #   Tags to associate with the PII entities detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
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
      :client_request_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the PII entity detection job. It
    #   is a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
      :job_arn,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_data_config
    #   Specifies the format and location of the input data for the job.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
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
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] tags
    #   Tags to associate with the sentiment detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
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
      :vpc_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the operation.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the sentiment detection job. It is
    #   a unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
      :job_arn,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_data_config
    #   The input properties for an inference job. The document reader
    #   config field applies only to non-text inputs for custom analysis.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Specifies where to send the output files.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
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
    #   The language of the input documents. Currently, English is the only
    #   supported language.
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
    #   ID for the KMS key that Amazon Comprehend uses to encrypt data on
    #   the storage volume attached to the ML compute instance(s) that
    #   process the analysis job. The VolumeKmsKeyId can be either of the
    #   following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for the job. For
    #   more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @!attribute [rw] tags
    #   Tags to associate with the targeted sentiment detection job. A tag
    #   is a key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTargetedSentimentDetectionJobRequest AWS API Documentation
    #
    class StartTargetedSentimentDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of a job,
    #   use this identifier with the `DescribeTargetedSentimentDetectionJob`
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the targeted sentiment detection
    #   job. It is a unique, fully qualified identifier for the job. It
    #   includes the Amazon Web Services account, Amazon Web Services
    #   Region, and the job ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    #     `DescribeTargetedSentimentDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StartTargetedSentimentDetectionJobResponse AWS API Documentation
    #
    class StartTargetedSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data. For more information, see
    #   [Role-based permissions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions
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
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
    # @!attribute [rw] tags
    #   Tags to associate with the topics detection job. A tag is a
    #   key-value pair that adds metadata to a resource used by Amazon
    #   Comprehend. For example, a tag with "Sales" as the key might be
    #   added to a resource to indicate its use by the sales department.
    #   @return [Array<Types::Tag>]
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
      :vpc_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier generated for the job. To get the status of the job,
    #   use this identifier with the `DescribeTopicDetectionJob` operation.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the topics detection job. It is a
    #   unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab`
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
      :job_arn,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] job_id
    #   The identifier of the events detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEventsDetectionJobRequest AWS API Documentation
    #
    class StopEventsDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the events detection job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The status of the events detection job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopEventsDetectionJobResponse AWS API Documentation
    #
    class StopEventsDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] job_id
    #   The identifier of the targeted sentiment detection job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTargetedSentimentDetectionJobRequest AWS API Documentation
    #
    class StopTargetedSentimentDetectionJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the targeted sentiment detection job to stop.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   Either `STOP_REQUESTED` if the job is currently running, or
    #   `STOPPED` if the job was previously stopped with the
    #   `StopSentimentDetectionJob` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/StopTargetedSentimentDetectionJobResponse AWS API Documentation
    #
    class StopTargetedSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_status)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   identified. For more information, see [Syntax][1] in the Comprehend
    #   Developer Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html
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

    # Provides information for filtering a list of dominant language
    # detection jobs. For more information, see the
    # `ListTargetedSentimentDetectionJobs` operation.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TargetedSentimentDetectionJobFilter AWS API Documentation
    #
    class TargetedSentimentDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a targeted sentiment detection job.
    #
    # @!attribute [rw] job_id
    #   The identifier assigned to the targeted sentiment detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the targeted sentiment detection
    #   job. It is a unique, fully qualified identifier for the job. It
    #   includes the Amazon Web Services account, Amazon Web Services
    #   Region, and the job ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab`
    #   @return [String]
    #
    # @!attribute [rw] job_name
    #   The name that you assigned to the targeted sentiment detection job.
    #   @return [String]
    #
    # @!attribute [rw] job_status
    #   The current status of the targeted sentiment detection job. If the
    #   status is `FAILED`, the `Messages` field shows the reason for the
    #   failure.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of a job.
    #   @return [String]
    #
    # @!attribute [rw] submit_time
    #   The time that the targeted sentiment detection job was submitted for
    #   processing.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time that the targeted sentiment detection job ended.
    #   @return [Time]
    #
    # @!attribute [rw] input_data_config
    #   The input properties for an inference job. The document reader
    #   config field applies only to non-text inputs for custom analysis.
    #   @return [Types::InputDataConfig]
    #
    # @!attribute [rw] output_data_config
    #   Provides configuration parameters for the output of inference jobs.
    #   @return [Types::OutputDataConfig]
    #
    # @!attribute [rw] language_code
    #   The language code of the input documents.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your input data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt the data
    #   on the storage volume attached to the ML compute instance(s) that
    #   process the targeted sentiment detection job. The VolumeKmsKeyId can
    #   be either of the following formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for the job. For
    #   more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TargetedSentimentDetectionJobProperties AWS API Documentation
    #
    class TargetedSentimentDetectionJobProperties < Struct.new(
      :job_id,
      :job_arn,
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

    # Information about one of the entities found by targeted sentiment
    # analysis.
    #
    # For more information about targeted sentiment, see [Targeted
    # sentiment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html
    #
    # @!attribute [rw] descriptive_mention_index
    #   One or more index into the Mentions array that provides the best
    #   name for the entity group.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] mentions
    #   An array of mentions of the entity in the document. The array
    #   represents a co-reference group. See [ Co-reference group][1] for an
    #   example.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html#how-targeted-sentiment-values
    #   @return [Array<Types::TargetedSentimentMention>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TargetedSentimentEntity AWS API Documentation
    #
    class TargetedSentimentEntity < Struct.new(
      :descriptive_mention_index,
      :mentions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about one mention of an entity. The mention information
    # includes the location of the mention in the text and the sentiment of
    # the mention.
    #
    # For more information about targeted sentiment, see [Targeted
    # sentiment][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html
    #
    # @!attribute [rw] score
    #   Model confidence that the entity is relevant. Value range is zero to
    #   one, where one is highest confidence.
    #   @return [Float]
    #
    # @!attribute [rw] group_score
    #   The confidence that all the entities mentioned in the group relate
    #   to the same entity.
    #   @return [Float]
    #
    # @!attribute [rw] text
    #   The text in the document that identifies the entity.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the entity. Amazon Comprehend supports a variety of
    #   [entity types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html#how-targeted-sentiment-entities
    #   @return [String]
    #
    # @!attribute [rw] mention_sentiment
    #   Contains the sentiment and sentiment score for the mention.
    #   @return [Types::MentionSentiment]
    #
    # @!attribute [rw] begin_offset
    #   The offset into the document text where the mention begins.
    #   @return [Integer]
    #
    # @!attribute [rw] end_offset
    #   The offset into the document text where the mention ends.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TargetedSentimentMention AWS API Documentation
    #
    class TargetedSentimentMention < Struct.new(
      :score,
      :group_score,
      :text,
      :type,
      :mention_sentiment,
      :begin_offset,
      :end_offset)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration about the custom classifier associated with the
    # flywheel.
    #
    # @!attribute [rw] language_code
    #   Language code for the language that the model supports.
    #   @return [String]
    #
    # @!attribute [rw] document_classification_config
    #   Configuration required for a classification model.
    #   @return [Types::DocumentClassificationConfig]
    #
    # @!attribute [rw] entity_recognition_config
    #   Configuration required for an entity recognition model.
    #   @return [Types::EntityRecognitionConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/TaskConfig AWS API Documentation
    #
    class TaskConfig < Struct.new(
      :language_code,
      :document_classification_config,
      :entity_recognition_config)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the topics detection job. It is a
    #   unique, fully qualified identifier for the job. It includes the
    #   Amazon Web Services account, Amazon Web Services Region, and the job
    #   ID. The format of the ARN is as follows:
    #
    #   `arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id>`
    #
    #   The following is an example job ARN:
    #
    #   `arn:aws:comprehend:us-west-2:111122223333:topics-detection-job/1234abcd12ab34cd56ef1234567890ab`
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
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend read access to your job data.
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the Amazon Web Services Key Management Service (KMS) key that
    #   Amazon Comprehend uses to encrypt data on the storage volume
    #   attached to the ML compute instance(s) that process the analysis
    #   job. The VolumeKmsKeyId can be either of the following formats:
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
      :job_arn,
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
    # custom entity recognition APIs, only English, Spanish, French,
    # Italian, German, or Portuguese are accepted. For a list of supported
    # languages, [Supported languages][1] in the Comprehend Developer Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html
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

    # Data security configuration.
    #
    # @!attribute [rw] model_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt trained
    #   custom models. The ModelKmsKeyId can be either of the following
    #   formats:
    #
    #   * KMS Key ID: `"1234abcd-12ab-34cd-56ef-1234567890ab"`
    #
    #   * Amazon Resource Name (ARN) of a KMS Key:
    #     `"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"`
    #   @return [String]
    #
    # @!attribute [rw] volume_kms_key_id
    #   ID for the KMS key that Amazon Comprehend uses to encrypt the
    #   volume.
    #   @return [String]
    #
    # @!attribute [rw] vpc_config
    #   Configuration parameters for an optional private Virtual Private
    #   Cloud (VPC) containing the resources you are using for the job. For
    #   more information, see [Amazon VPC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
    #   @return [Types::VpcConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateDataSecurityConfig AWS API Documentation
    #
    class UpdateDataSecurityConfig < Struct.new(
      :model_kms_key_id,
      :volume_kms_key_id,
      :vpc_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Number (ARN) of the endpoint being updated.
    #   @return [String]
    #
    # @!attribute [rw] desired_model_arn
    #   The ARN of the new model to use when updating an existing endpoint.
    #   @return [String]
    #
    # @!attribute [rw] desired_inference_units
    #   The desired number of inference units to be used by the model using
    #   this endpoint. Each inference unit represents of a throughput of 100
    #   characters per second.
    #   @return [Integer]
    #
    # @!attribute [rw] desired_data_access_role_arn
    #   Data access role ARN to use in case the new model is encrypted with
    #   a customer CMK.
    #   @return [String]
    #
    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateEndpointRequest AWS API Documentation
    #
    class UpdateEndpointRequest < Struct.new(
      :endpoint_arn,
      :desired_model_arn,
      :desired_inference_units,
      :desired_data_access_role_arn,
      :flywheel_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] desired_model_arn
    #   The Amazon Resource Number (ARN) of the new model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateEndpointResponse AWS API Documentation
    #
    class UpdateEndpointResponse < Struct.new(
      :desired_model_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_arn
    #   The Amazon Resource Number (ARN) of the flywheel to update.
    #   @return [String]
    #
    # @!attribute [rw] active_model_arn
    #   The Amazon Resource Number (ARN) of the active model version.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that grants Amazon
    #   Comprehend permission to access the flywheel data.
    #   @return [String]
    #
    # @!attribute [rw] data_security_config
    #   Flywheel data security configuration.
    #   @return [Types::UpdateDataSecurityConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateFlywheelRequest AWS API Documentation
    #
    class UpdateFlywheelRequest < Struct.new(
      :flywheel_arn,
      :active_model_arn,
      :data_access_role_arn,
      :data_security_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] flywheel_properties
    #   The flywheel properties.
    #   @return [Types::FlywheelProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/UpdateFlywheelResponse AWS API Documentation
    #
    class UpdateFlywheelResponse < Struct.new(
      :flywheel_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for an optional private Virtual Private Cloud
    # (VPC) containing the resources you are using for the job. For more
    # information, see [Amazon VPC][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
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
    #   specific to a given availability zone in the VPC’s Region. This ID
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

    # The system identified one of the following warnings while processing
    # the input document:
    #
    # * The document to classify is plain text, but the classifier is a
    #   native model.
    #
    # * The document to classify is semi-structured, but the classifier is a
    #   plain-text model.
    #
    # @!attribute [rw] page
    #   Page number in the input document.
    #   @return [Integer]
    #
    # @!attribute [rw] warn_code
    #   The type of warning.
    #   @return [String]
    #
    # @!attribute [rw] warn_message
    #   Text message associated with the warning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27/WarningsListItem AWS API Documentation
    #
    class WarningsListItem < Struct.new(
      :page,
      :warn_code,
      :warn_message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
