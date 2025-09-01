# frozen_string_literal: true

# This is generated code!

module Aws::Comprehend
  # This module contains the types returned by client operations.
  module Types

    module AugmentedManifestsDocumentTypeFormat
      PLAIN_TEXT_DOCUMENT = 'PLAIN_TEXT_DOCUMENT'
      SEMI_STRUCTURED_DOCUMENT = 'SEMI_STRUCTURED_DOCUMENT'
    end

    # <p>An augmented manifest file that provides training data for your custom model. An augmented
    #       manifest file is a labeled dataset that is produced by Amazon SageMaker Ground Truth.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 location of the augmented manifest file.</p>
    #   @return [String]
    # @!attribute split
    #   <p>The purpose of the data you've provided in the augmented manifest. You can either train or
    #         test this data. If you don't specify, the default is train.</p>
    #            <p>TRAIN - all of the documents in the manifest will be used for training. If no test
    #         documents are provided, Amazon Comprehend will automatically reserve a portion of the training
    #         documents for testing.</p>
    #            <p> TEST - all of the documents in the manifest will be used for testing.</p>
    #   @return [String]
    # @!attribute attribute_names
    #   <p>The JSON attribute that contains the annotations for your training documents. The number
    #         of attribute names that you specify depends on whether your augmented manifest file is the
    #         output of a single labeling job or a chained labeling job.</p>
    #            <p>If your file is the output of a single labeling job, specify the LabelAttributeName key
    #         that was used when the job was created in Ground Truth.</p>
    #            <p>If your file is the output of a chained labeling job, specify the LabelAttributeName key
    #         for one or more jobs in the chain. Each LabelAttributeName key provides the annotations from
    #         an individual job.</p>
    #   @return [Array<String>]
    # @!attribute annotation_data_s3_uri
    #   <p>The S3 prefix to the annotation files that are referred in the augmented manifest
    #         file.</p>
    #   @return [String]
    # @!attribute source_documents_s3_uri
    #   <p>The S3 prefix to the source files (PDFs) that are referred to in the augmented manifest
    #         file.</p>
    #   @return [String]
    # @!attribute document_type
    #   <p>The type of augmented manifest. PlainTextDocument or SemiStructuredDocument. If you don't
    #         specify, the default is PlainTextDocument. </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PLAIN_TEXT_DOCUMENT</code> A document type that represents any unicode text that
    #             is encoded in UTF-8.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SEMI_STRUCTURED_DOCUMENT</code> A document type with positional and structural
    #             context, like a PDF. For training with Amazon Comprehend, only PDFs are supported. For
    #             inference, Amazon Comprehend support PDFs, DOCX and TXT.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AugmentedManifestsListItem < Struct.new(
      :s3_uri,
      :split,
      :attribute_names,
      :annotation_data_s3_uri,
      :source_documents_s3_uri,
      :document_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of calling the  operation.
    #       The operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #   @return [Integer]
    # @!attribute languages
    #   <p>One or more <a>DominantLanguage</a> objects describing the dominant
    #         languages in the document.</p>
    #   @return [Array<Types::DominantLanguage>]
    class BatchDetectDominantLanguageItemResult < Struct.new(
      :index,
      :languages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. Each document should contain at least 20 characters. The maximum size of each document is 5 KB.</p>
    #   @return [Array<String>]
    class BatchDetectDominantLanguageRequest < Struct.new(
      :text_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute result_list
    #   <p>A list of  objects
    #         containing the results of the operation. The results are sorted in ascending order by the
    #           <code>Index</code> field and match the order of the documents in the input list. If all of
    #         the documents contain an error, the <code>ResultList</code> is empty.</p>
    #   @return [Array<Types::BatchDetectDominantLanguageItemResult>]
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #   @return [Array<Types::BatchItemError>]
    class BatchDetectDominantLanguageResponse < Struct.new(
      :result_list,
      :error_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #   @return [Integer]
    # @!attribute entities
    #   <p>One or more <a>Entity</a> objects, one for each entity detected in the
    #         document.</p>
    #   @return [Array<Types::Entity>]
    class BatchDetectEntitiesItemResult < Struct.new(
      :index,
      :entities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size of each document is 5 KB.</p>
    #   @return [Array<String>]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    class BatchDetectEntitiesRequest < Struct.new(
      :text_list,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #   @return [Array<Types::BatchDetectEntitiesItemResult>]
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #   @return [Array<Types::BatchItemError>]
    class BatchDetectEntitiesResponse < Struct.new(
      :result_list,
      :error_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #   @return [Integer]
    # @!attribute key_phrases
    #   <p>One or more <a>KeyPhrase</a> objects, one for each key phrase detected in
    #         the document.</p>
    #   @return [Array<Types::KeyPhrase>]
    class BatchDetectKeyPhrasesItemResult < Struct.new(
      :index,
      :key_phrases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size of each document is 5 KB.</p>
    #   @return [Array<String>]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    class BatchDetectKeyPhrasesRequest < Struct.new(
      :text_list,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #   @return [Array<Types::BatchDetectKeyPhrasesItemResult>]
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #   @return [Array<Types::BatchItemError>]
    class BatchDetectKeyPhrasesResponse < Struct.new(
      :result_list,
      :error_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object for each document that is successfully processed by the
    #       operation.</p>
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #   @return [Integer]
    # @!attribute sentiment
    #   <p>The sentiment detected in the document.</p>
    #   @return [String]
    # @!attribute sentiment_score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its sentiment
    #         detection.</p>
    #   @return [Types::SentimentScore]
    class BatchDetectSentimentItemResult < Struct.new(
      :index,
      :sentiment,
      :sentiment_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size of each document is 5 KB. </p>
    #   @return [Array<String>]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    class BatchDetectSentimentRequest < Struct.new(
      :text_list,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #   @return [Array<Types::BatchDetectSentimentItemResult>]
    # @!attribute error_list
    #   <p>A list containing one  object for each document
    #         that contained an error. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If there are no errors in the
    #         batch, the <code>ErrorList</code> is empty.</p>
    #   @return [Array<Types::BatchItemError>]
    class BatchDetectSentimentResponse < Struct.new(
      :result_list,
      :error_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The result of calling the  operation. The
    #       operation returns one object that is successfully processed by the operation.</p>
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #   @return [Integer]
    # @!attribute syntax_tokens
    #   <p>The syntax tokens for the words in the document, one token for each word.</p>
    #   @return [Array<Types::SyntaxToken>]
    class BatchDetectSyntaxItemResult < Struct.new(
      :index,
      :syntax_tokens,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents. The list can contain a maximum of 25
    #         documents. The maximum size for each document is 5 KB.</p>
    #   @return [Array<String>]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt"). All documents must be in the same language.</p>
    #   @return [String]
    class BatchDetectSyntaxRequest < Struct.new(
      :text_list,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute result_list
    #   <p>A list of  objects containing the
    #         results of the operation. The results are sorted in ascending order by the <code>Index</code>
    #         field and match the order of the documents in the input list. If all of the documents contain
    #         an error, the <code>ResultList</code> is empty.</p>
    #   @return [Array<Types::BatchDetectSyntaxItemResult>]
    # @!attribute error_list
    #   <p>A list containing one  object for each document that
    #         contained an error. The results are sorted in ascending order by the <code>Index</code> field
    #         and match the order of the documents in the input list. If there are no errors in the batch,
    #         the <code>ErrorList</code> is empty.</p>
    #   @return [Array<Types::BatchItemError>]
    class BatchDetectSyntaxResponse < Struct.new(
      :result_list,
      :error_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Analysis results for one of the documents in the batch.</p>
    # @!attribute index
    #   <p>The zero-based index of this result in the input list.</p>
    #   @return [Integer]
    # @!attribute entities
    #   <p>An array of targeted sentiment entities.</p>
    #   @return [Array<Types::TargetedSentimentEntity>]
    class BatchDetectTargetedSentimentItemResult < Struct.new(
      :index,
      :entities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text_list
    #   <p>A list containing the UTF-8 encoded text of the input documents.
    #         The list can contain a maximum of 25 documents. The maximum size of each document is 5 KB.</p>
    #   @return [Array<String>]
    # @!attribute language_code
    #   <p>The language of the input documents. Currently, English is the only supported language.</p>
    #   @return [String]
    class BatchDetectTargetedSentimentRequest < Struct.new(
      :text_list,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute result_list
    #   <p>A list of objects containing the results of the operation.
    #         The results are sorted in ascending order by the <code>Index</code> field and match the order of the documents in the input list.
    #         If all of the documents contain an error, the <code>ResultList</code> is empty.</p>
    #   @return [Array<Types::BatchDetectTargetedSentimentItemResult>]
    # @!attribute error_list
    #   <p>List of errors that the operation can return.</p>
    #   @return [Array<Types::BatchItemError>]
    class BatchDetectTargetedSentimentResponse < Struct.new(
      :result_list,
      :error_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an error that occurred while processing a document in a batch. The operation
    #       returns on <code>BatchItemError</code> object for each document that contained an
    #       error.</p>
    # @!attribute index
    #   <p>The zero-based index of the document in the input list.</p>
    #   @return [Integer]
    # @!attribute error_code
    #   <p>The numeric error code of the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A text description of the error.</p>
    #   @return [String]
    class BatchItemError < Struct.new(
      :index,
      :error_code,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of documents in the request exceeds the limit of 25. Try your request again
    #       with fewer documents.</p>
    # @!attribute message
    #   @return [String]
    class BatchSizeLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about each word or line of text in the input document.</p>
    #          <p>For additional information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/API_Block.html">Block</a> in the Amazon Textract API reference.</p>
    # @!attribute id
    #   <p>Unique identifier for the block.</p>
    #   @return [String]
    # @!attribute block_type
    #   <p>The block represents a line of text or one word of text.</p>
    #            <ul>
    #               <li>
    #                  <p>WORD - A word that's detected on a document page.
    #           A word is one or more ISO basic Latin script characters that aren't separated by spaces.</p>
    #               </li>
    #               <li>
    #                  <p>LINE - A string of tab-delimited, contiguous words
    #           that are detected on a document page</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute text
    #   <p>The word or line of text extracted from the block.</p>
    #   @return [String]
    # @!attribute page
    #   <p>Page number where the block appears.</p>
    #   @return [Integer]
    # @!attribute geometry
    #   <p>Co-ordinates of the rectangle or polygon that contains the text.</p>
    #   @return [Types::Geometry]
    # @!attribute relationships
    #   <p>A list of child blocks of the current block.
    #         For example, a LINE object has child blocks for each WORD block that's part of the line of text. </p>
    #   @return [Array<Types::RelationshipsListItem>]
    class Block < Struct.new(
      :id,
      :block_type,
      :text,
      :page,
      :geometry,
      :relationships,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A reference to a block. </p>
    # @!attribute block_id
    #   <p>Unique identifier for the block.</p>
    #   @return [String]
    # @!attribute begin_offset
    #   <p>Offset of the start of the block within its parent block.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>Offset of the end of the block within its parent block.</p>
    #   @return [Integer]
    # @!attribute child_blocks
    #   <p>List of child blocks within this block.</p>
    #   @return [Array<Types::ChildBlock>]
    class BlockReference < Struct.new(
      :block_id,
      :begin_offset,
      :end_offset,
      :child_blocks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BlockType
      LINE = 'LINE'
      WORD = 'WORD'
    end

    # <p>The bounding box around the detected page
    #      or around an element on a document page.
    #     The left (x-coordinate) and top (y-coordinate) are coordinates that
    #       represent the top and left sides of the bounding box. Note that the upper-left
    #       corner of the image is the origin (0,0). </p>
    #          <p>For additional information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/API_BoundingBox.html">BoundingBox</a> in the Amazon Textract API reference.</p>
    # @!attribute height
    #   <p>The height of the bounding box as a ratio of the overall document page height.</p>
    #   @return [Float]
    # @!attribute left
    #   <p>The left coordinate of the bounding box as a ratio of overall document page width.</p>
    #   @return [Float]
    # @!attribute top
    #   <p>The top coordinate of the bounding box as a ratio of overall document page height.</p>
    #   @return [Float]
    # @!attribute width
    #   <p>The width of the bounding box as a ratio of the overall document page width.</p>
    #   @return [Float]
    class BoundingBox < Struct.new(
      :height,
      :left,
      :top,
      :width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Nested block contained within a block.</p>
    # @!attribute child_block_id
    #   <p>Unique identifier for the child block.</p>
    #   @return [String]
    # @!attribute begin_offset
    #   <p>Offset of the start of the child block within its parent block.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>Offset of the end of the child block within its parent block.</p>
    #   @return [Integer]
    class ChildBlock < Struct.new(
      :child_block_id,
      :begin_offset,
      :end_offset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the result metrics for the test data associated with an documentation
    #       classifier.</p>
    # @!attribute accuracy
    #   <p>The fraction of the labels that were correct recognized. It is computed by dividing the
    #         number of labels in the test documents that were correctly recognized by the total number of
    #         labels in the test documents.</p>
    #   @return [Float]
    # @!attribute precision
    #   <p>A measure of the usefulness of the classifier results in the test data. High precision
    #         means that the classifier returned substantially more relevant results than irrelevant
    #         ones.</p>
    #   @return [Float]
    # @!attribute recall
    #   <p>A measure of how complete the classifier results are for the test data. High recall means
    #         that the classifier returned most of the relevant results. </p>
    #   @return [Float]
    # @!attribute f1_score
    #   <p>A measure of how accurate the classifier results are for the test data. It is derived from
    #         the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the
    #         harmonic average of the two scores. The highest score is 1, and the worst score is 0. </p>
    #   @return [Float]
    # @!attribute micro_precision
    #   <p>A measure of the usefulness of the recognizer results in the test data. High precision
    #         means that the recognizer returned substantially more relevant results than irrelevant ones.
    #         Unlike the Precision metric which comes from averaging the precision of all available labels,
    #         this is based on the overall score of all precision scores added together.</p>
    #   @return [Float]
    # @!attribute micro_recall
    #   <p>A measure of how complete the classifier results are for the test data. High recall means
    #         that the classifier returned most of the relevant results. Specifically, this indicates how
    #         many of the correct categories in the text that the model can predict. It is a percentage of
    #         correct categories in the text that can found. Instead of averaging the recall scores of all
    #         labels (as with Recall), micro Recall is based on the overall score of all recall scores added
    #         together.</p>
    #   @return [Float]
    # @!attribute micro_f1_score
    #   <p>A measure of how accurate the classifier results are for the test data. It is a
    #         combination of the <code>Micro Precision</code> and <code>Micro Recall</code> values. The
    #           <code>Micro F1Score</code> is the harmonic mean of the two scores. The highest score is 1,
    #         and the worst score is 0.</p>
    #   @return [Float]
    # @!attribute hamming_loss
    #   <p>Indicates the fraction of labels that are incorrectly predicted. Also seen as the fraction
    #         of wrong labels compared to the total number of labels. Scores closer to zero are
    #         better.</p>
    #   @return [Float]
    class ClassifierEvaluationMetrics < Struct.new(
      :accuracy,
      :precision,
      :recall,
      :f1_score,
      :micro_precision,
      :micro_recall,
      :micro_f1_score,
      :hamming_loss,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a document classifier.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute number_of_labels
    #   <p>The number of labels in the input data. </p>
    #   @return [Integer]
    # @!attribute number_of_trained_documents
    #   <p>The number of documents in the input data that were used to train the classifier.
    #         Typically this is 80 to 90 percent of the input documents.</p>
    #   @return [Integer]
    # @!attribute number_of_test_documents
    #   <p>The number of documents in the input data that were used to test the classifier. Typically
    #         this is 10 to 20 percent of the input documents, up to 10,000 documents.</p>
    #   @return [Integer]
    # @!attribute evaluation_metrics
    #   <p> Describes the result metrics for the test data associated with an documentation
    #         classifier.</p>
    #   @return [Types::ClassifierEvaluationMetrics]
    class ClassifierMetadata < Struct.new(
      :number_of_labels,
      :number_of_trained_documents,
      :number_of_test_documents,
      :evaluation_metrics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>The document text to be analyzed. If you enter text using this parameter,
    #         do not use the <code>Bytes</code> parameter.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint. </p>
    #            <p>For prompt safety classification, Amazon Comprehend provides the endpoint ARN. For more information about prompt safety classifiers, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification">Prompt safety classification</a> in the <i>Amazon Comprehend Developer Guide</i>
    #            </p>
    #            <p>For custom classification, you create an endpoint for your custom model. For more information, 
    #         see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/using-endpoints.html">Using Amazon Comprehend endpoints</a>.</p>
    #   @return [String]
    # @!attribute bytes
    #   <p>Use the <code>Bytes</code> parameter to input a text, PDF, Word or image file.</p>
    #            <p>When you classify a document using a custom model, you can also use the <code>Bytes</code> parameter to input an Amazon Textract <code>DetectDocumentText</code>
    #           or <code>AnalyzeDocument</code> output file.</p>
    #            <p>To classify a document using the prompt safety classifier, use the <code>Text</code> parameter for input.</p>
    #            <p>Provide the input document as a sequence of base64-encoded bytes.
    #         If your code uses an Amazon Web Services SDK to classify documents, the SDK may encode
    #         the document file bytes for you. </p>
    #            <p>The maximum length of this field depends on the input document type. For details, see
    #         <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html">
    #           Inputs for real-time custom analysis</a> in the Comprehend Developer Guide. </p>
    #            <p>If you use the <code>Bytes</code> parameter, do not use the <code>Text</code> parameter.</p>
    #   @return [String]
    # @!attribute document_reader_config
    #   <p>Provides configuration parameters to override the default actions for extracting text
    #         from PDF documents and image files.</p>
    #   @return [Types::DocumentReaderConfig]
    class ClassifyDocumentRequest < Struct.new(
      :text,
      :endpoint_arn,
      :bytes,
      :document_reader_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute classes
    #   <p>The classes used by the document being analyzed. These are used for models trained in multi-class mode.
    #         Individual classes are mutually exclusive and each document is expected to have only a
    #         single class assigned to it. For example, an animal can be a dog or a cat, but not both at the
    #         same time. </p>
    #            <p>For prompt safety classification, the response includes only two classes (SAFE_PROMPT and UNSAFE_PROMPT), 
    #         along with a confidence score for each class. The value range of the score is zero to one, where one is the highest confidence.</p>
    #   @return [Array<Types::DocumentClass>]
    # @!attribute labels
    #   <p>The labels used in the document being analyzed. These are used for multi-label trained
    #         models. Individual labels represent different categories that are related in some manner and
    #         are not mutually exclusive. For example, a movie can be just an action movie, or it can be an
    #         action movie, a science fiction movie, and a comedy, all at the same time. </p>
    #   @return [Array<Types::DocumentLabel>]
    # @!attribute document_metadata
    #   <p>Extraction information about the document. This field is present
    #         in the response only if your request includes the <code>Byte</code> parameter. </p>
    #   @return [Types::DocumentMetadata]
    # @!attribute document_type
    #   <p>The document type for each page in the input document. This field is present
    #         in the response only if your request includes the <code>Byte</code> parameter. </p>
    #   @return [Array<Types::DocumentTypeListItem>]
    # @!attribute errors
    #   <p>Page-level errors that the system detected while processing the input document.
    #         The field is empty if the system encountered no errors.</p>
    #   @return [Array<Types::ErrorsListItem>]
    # @!attribute warnings
    #   <p>Warnings detected while processing the input document.
    #         The response includes a warning if there is a mismatch between the input document type 
    #         and the model type associated with the endpoint that you specified. The response can also include
    #          warnings for individual pages that have a mismatch. </p>
    #            <p>The field is empty if the system generated no warnings.</p>
    #   @return [Array<Types::WarningsListItem>]
    class ClassifyDocumentResponse < Struct.new(
      :classes,
      :labels,
      :document_metadata,
      :document_type,
      :errors,
      :warnings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Concurrent modification of the tags associated with an Amazon Comprehend resource is not
    #       supported. </p>
    # @!attribute message
    #   @return [String]
    class ConcurrentModificationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. The maximum string size is 100 KB.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents.</p>
    #   @return [String]
    class ContainsPiiEntitiesRequest < Struct.new(
      :text,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute labels
    #   <p>The labels used in the document being analyzed. Individual labels represent personally
    #         identifiable information (PII) entity types.</p>
    #   @return [Array<Types::EntityLabel>]
    class ContainsPiiEntitiesResponse < Struct.new(
      :labels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel of the flywheel to receive the data.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>Name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The dataset type. You can specify that the data in a dataset is for training
    #         the model or for testing the model.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the dataset.</p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>Information about the input data configuration. The type of input data varies based
    #         on the format of the input and whether the data is for a classifier model or an entity recognition model.</p>
    #   @return [Types::DatasetInputDataConfig]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags for the dataset.</p>
    #   @return [Array<Types::Tag>]
    class CreateDatasetRequest < Struct.new(
      :flywheel_arn,
      :dataset_name,
      :dataset_type,
      :description,
      :input_data_config,
      :client_request_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    class CreateDatasetResponse < Struct.new(
      :dataset_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classifier_name
    #   <p>The name of the document classifier.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The version name given to the newly created classifier. Version names can have a maximum
    #         of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same classifier name in the Amazon Web Services account/Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the document classifier. A tag is a key-value
    #         pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #   @return [Array<Types::Tag>]
    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::DocumentClassifierInputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies the location for the output files from a custom classifier job.
    #         This parameter is required for a request that creates a native document model.</p>
    #   @return [Types::DocumentClassifierOutputDataConfig]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom classifier. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute mode
    #   <p>Indicates the mode in which the classifier will be trained. The classifier can be trained
    #         in multi-class (single-label) mode or multi-label mode. 
    #         Multi-class mode identifies a single class label for each document and
    #         multi-label mode identifies one or more class labels for each document. Multiple
    #         labels for an individual document are separated by a delimiter. The default delimiter between
    #         labels is a pipe (|).</p>
    #   @return [String]
    # @!attribute model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute model_policy
    #   <p>The resource-based policy to attach to your custom document classifier model. You can use
    #         this policy to allow another Amazon Web Services account to import your custom model.</p>
    #            <p>Provide your policy as a JSON body that you enter as a UTF-8 encoded string without line
    #         breaks. To provide valid JSON, enclose the attribute names and values in double quotes. If the
    #         JSON body is also enclosed in double quotes, then you must escape the double quotes that are
    #         inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #   @return [String]
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
      :model_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>
    #   @return [String]
    class CreateDocumentClassifierResponse < Struct.new(
      :document_classifier_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_name
    #   <p>This is the descriptive suffix that becomes part of the <code>EndpointArn</code> used for
    #         all subsequent requests to this resource. </p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint will be
    #         attached.</p>
    #   @return [String]
    # @!attribute desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #         
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #   @return [Integer]
    # @!attribute client_request_token
    #   <p>An idempotency token provided by the customer. If this token matches a previous endpoint
    #         creation request, Amazon Comprehend will not return a <code>ResourceInUseException</code>.
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the endpoint. A tag is a key-value pair that adds
    #         metadata to the endpoint. For example, a tag with "Sales" as the key might be added to an
    #         endpoint to indicate its use by the sales department. </p>
    #   @return [Array<Types::Tag>]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to trained custom models encrypted with a customer
    #         managed key (ModelKmsKeyId).</p>
    #   @return [String]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel to which the endpoint will be
    #         attached.</p>
    #   @return [String]
    class CreateEndpointRequest < Struct.new(
      :endpoint_name,
      :model_arn,
      :desired_inference_units,
      :client_request_token,
      :tags,
      :data_access_role_arn,
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being created.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint is
    #         attached.</p>
    #   @return [String]
    class CreateEndpointResponse < Struct.new(
      :endpoint_arn,
      :model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute recognizer_name
    #   <p>The name given to the newly created recognizer. Recognizer names can be a maximum of 256
    #         characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The name
    #         must be unique in the account/Region.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The version name given to the newly created recognizer. Version names can be a maximum of
    #         256 characters. Alphanumeric characters, hyphens (-) and underscores (_) are allowed. The
    #         version name must be unique among all models with the same recognizer name in the account/Region.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the entity recognizer. A tag is a key-value pair
    #         that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #   @return [Array<Types::Tag>]
    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data. The S3 bucket containing the input
    #         data must be located in the same Region as the entity recognizer being created. </p>
    #   @return [Types::EntityRecognizerInputDataConfig]
    # @!attribute client_request_token
    #   <p> A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p> You can specify any of the following languages: English
    #         ("en"), Spanish ("es"), French ("fr"), Italian ("it"), German ("de"), or Portuguese ("pt").
    #         If you plan to use this entity recognizer with PDF, Word, or image input files, you must
    #         specify English as the language.
    #         All training documents must be in the same language.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your custom entity recognizer. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute model_policy
    #   <p>The JSON resource-based policy to attach to your custom entity recognizer model. You can
    #         use this policy to allow another Amazon Web Services account to import your custom model.</p>
    #            <p>Provide your JSON as a UTF-8 encoded string without line breaks. To provide valid JSON for
    #         your policy, enclose the attribute names and values in double quotes. If the JSON body is also
    #         enclosed in double quotes, then you must escape the double quotes that are inside the
    #         policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #   @return [String]
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
      :model_policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #   @return [String]
    class CreateEntityRecognizerResponse < Struct.new(
      :entity_recognizer_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_name
    #   <p>Name for the flywheel.</p>
    #   @return [String]
    # @!attribute active_model_arn
    #   <p>To associate an existing model with the flywheel, specify the Amazon Resource Number (ARN) of the model version.
    #         Do not set <code>TaskConfig</code> or <code>ModelType</code> if you specify an <code>ActiveModelArn</code>.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend the permissions required to access the flywheel data in the data lake.</p>
    #   @return [String]
    # @!attribute task_config
    #   <p>Configuration about the model associated with the flywheel.
    #         You need to set <code>TaskConfig</code> if you are creating a flywheel for a new model.</p>
    #   @return [Types::TaskConfig]
    # @!attribute model_type
    #   <p>The model type. You need to set <code>ModelType</code> if you are creating a flywheel for a new model.</p>
    #   @return [String]
    # @!attribute data_lake_s3_uri
    #   <p>Enter the S3 location for the data lake. You can specify a new S3 bucket or a new folder of an
    #       existing S3 bucket. The flywheel creates the data lake at this location.</p>
    #   @return [String]
    # @!attribute data_security_config
    #   <p>Data security configurations.</p>
    #   @return [Types::DataSecurityConfig]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to associate with this flywheel.</p>
    #   @return [Array<Types::Tag>]
    class CreateFlywheelRequest < Struct.new(
      :flywheel_name,
      :active_model_arn,
      :data_access_role_arn,
      :task_config,
      :model_type,
      :data_lake_s3_uri,
      :data_security_config,
      :client_request_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel.</p>
    #   @return [String]
    # @!attribute active_model_arn
    #   <p>The Amazon Resource Number (ARN) of the active model version.</p>
    #   @return [String]
    class CreateFlywheelResponse < Struct.new(
      :flywheel_arn,
      :active_model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Data security configuration.</p>
    # @!attribute model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt the volume.</p>
    #   @return [String]
    # @!attribute data_lake_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt the data in the data lake.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    class DataSecurityConfig < Struct.new(
      :model_kms_key_id,
      :volume_kms_key_id,
      :data_lake_kms_key_id,
      :vpc_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An augmented manifest file that provides training data for your custom model.
    #       An augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground Truth.</p>
    # @!attribute attribute_names
    #   <p>The JSON attribute that contains the annotations for your training documents. The number
    #         of attribute names that you specify depends on whether your augmented manifest file is the
    #         output of a single labeling job or a chained labeling job.</p>
    #            <p>If your file is the output of a single labeling job, specify the LabelAttributeName key
    #         that was used when the job was created in Ground Truth.</p>
    #            <p>If your file is the output of a chained labeling job, specify the LabelAttributeName key
    #         for one or more jobs in the chain. Each LabelAttributeName key provides the annotations from
    #         an individual job.</p>
    #   @return [Array<String>]
    # @!attribute s3_uri
    #   <p>The Amazon S3 location of the augmented manifest file.</p>
    #   @return [String]
    # @!attribute annotation_data_s3_uri
    #   <p>The S3 prefix to the annotation files that are referred in the augmented manifest
    #         file.</p>
    #   @return [String]
    # @!attribute source_documents_s3_uri
    #   <p>The S3 prefix to the source files (PDFs) that are referred to in the augmented manifest
    #         file.</p>
    #   @return [String]
    # @!attribute document_type
    #   <p>The type of augmented manifest. If you don't specify, the default is PlainTextDocument. </p>
    #            <p>
    #               <code>PLAIN_TEXT_DOCUMENT</code> A document type that represents any unicode text that
    #         is encoded in UTF-8.</p>
    #   @return [String]
    class DatasetAugmentedManifestsListItem < Struct.new(
      :attribute_names,
      :s3_uri,
      :annotation_data_s3_uri,
      :source_documents_s3_uri,
      :document_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DatasetDataFormat
      COMPREHEND_CSV = 'COMPREHEND_CSV'
      AUGMENTED_MANIFEST = 'AUGMENTED_MANIFEST'
    end

    # <p>Describes the dataset input data configuration for a document classifier model.</p>
    #          <p>For more information on how the input file is formatted, see  <a href="https://docs.aws.amazon.com/comprehend/latest/dg/prep-classifier-data.html">Preparing training data</a>
    #       in the Comprehend Developer Guide. </p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI for the input data. The S3 bucket must be in the same Region as the API
    #         endpoint that you are calling. The URI can point to a single input file or it can provide the
    #         prefix for a collection of input files.</p>
    #            <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a
    #         single file, Amazon Comprehend uses that file as input. If more than one file begins with the
    #         prefix, Amazon Comprehend uses all of them as input.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #         <code>COMPREHEND_CSV</code>.</p>
    #   @return [String]
    # @!attribute label_delimiter
    #   <p>Indicates the delimiter used to separate each label for training a multi-label classifier.
    #         The default delimiter between labels is a pipe (|). You can use a different character as a
    #         delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the
    #         training documents use a delimiter other than the default or the delimiter you specify, the
    #         labels on that line will be combined to make a single unique label, such as
    #         LABELLABELLABEL.</p>
    #   @return [String]
    class DatasetDocumentClassifierInputDataConfig < Struct.new(
      :s3_uri,
      :label_delimiter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the annotations associated with a entity recognizer.</p>
    # @!attribute s3_uri
    #   <p> Specifies the Amazon S3 location where the training documents for an entity recognizer
    #         are located. The URI must be in the same Region as the API endpoint that you are
    #         calling.</p>
    #   @return [String]
    class DatasetEntityRecognizerAnnotations < Struct.new(
      :s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the documents submitted with a dataset for an entity recognizer model.</p>
    # @!attribute s3_uri
    #   <p> Specifies the Amazon S3 location where the documents for the dataset
    #         are located.  </p>
    #   @return [String]
    # @!attribute input_format
    #   <p> Specifies how the text in an input file should be processed. This is optional, and the
    #         default is ONE_DOC_PER_LINE. ONE_DOC_PER_FILE - Each file is considered a separate document.
    #         Use this option when you are processing large documents, such as newspaper articles or
    #         scientific papers. ONE_DOC_PER_LINE - Each line in a file is considered a separate document.
    #         Use this option when you are processing many short documents, such as text messages.</p>
    #   @return [String]
    class DatasetEntityRecognizerDocuments < Struct.new(
      :s3_uri,
      :input_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the dataset entity list for an entity recognizer model.</p>
    #          <p>For more information on how the input file is formatted, see  <a href="https://docs.aws.amazon.com/comprehend/latest/dg/prep-training-data-cer.html">Preparing training data</a>
    #       in the Comprehend Developer Guide. </p>
    # @!attribute s3_uri
    #   <p>Specifies the Amazon S3 location where the entity list is located.</p>
    #   @return [String]
    class DatasetEntityRecognizerEntityList < Struct.new(
      :s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the format and location of the input data. You must provide either the
    #       <code>Annotations</code> parameter or the <code>EntityList</code> parameter.</p>
    # @!attribute annotations
    #   <p>The S3 location of the annotation documents for your custom entity recognizer.</p>
    #   @return [Types::DatasetEntityRecognizerAnnotations]
    # @!attribute documents
    #   <p>The format and location of the training documents for your custom entity
    #         recognizer.</p>
    #   @return [Types::DatasetEntityRecognizerDocuments]
    # @!attribute entity_list
    #   <p>The S3 location of the entity list for your custom entity recognizer.</p>
    #   @return [Types::DatasetEntityRecognizerEntityList]
    class DatasetEntityRecognizerInputDataConfig < Struct.new(
      :annotations,
      :documents,
      :entity_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filter the datasets based on creation time or dataset status.</p>
    # @!attribute status
    #   <p>Filter the datasets based on the dataset status.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>Filter the datasets based on the dataset type.</p>
    #   @return [String]
    # @!attribute creation_time_after
    #   <p>Filter the datasets to include datasets created after the specified time.</p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>Filter the datasets to include datasets created before the specified time.</p>
    #   @return [Time]
    class DatasetFilter < Struct.new(
      :status,
      :dataset_type,
      :creation_time_after,
      :creation_time_before,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the format and location of the input data for the dataset.</p>
    # @!attribute augmented_manifests
    #   <p>A list of augmented manifest files that provide training data for your custom model. An
    #         augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
    #         Truth. </p>
    #   @return [Array<Types::DatasetAugmentedManifestsListItem>]
    # @!attribute data_format
    #   <p>
    #               <code>COMPREHEND_CSV</code>: The data format is a two-column CSV file, where the
    #         first column contains labels and the second column contains documents.</p>
    #            <p>
    #               <code>AUGMENTED_MANIFEST</code>: The data format  </p>
    #   @return [String]
    # @!attribute document_classifier_input_data_config
    #   <p>The input properties for training a document classifier model. </p>
    #            <p>For more information on how the input file is formatted, see  <a href="https://docs.aws.amazon.com/comprehend/latest/dg/prep-classifier-data.html">Preparing training data</a>
    #         in the Comprehend Developer Guide. </p>
    #   @return [Types::DatasetDocumentClassifierInputDataConfig]
    # @!attribute entity_recognizer_input_data_config
    #   <p>The input properties for training an entity recognizer model.</p>
    #   @return [Types::DatasetEntityRecognizerInputDataConfig]
    class DatasetInputDataConfig < Struct.new(
      :augmented_manifests,
      :data_format,
      :document_classifier_input_data_config,
      :entity_recognizer_input_data_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Properties associated with the dataset.</p>
    # @!attribute dataset_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_name
    #   <p>The name of the dataset.</p>
    #   @return [String]
    # @!attribute dataset_type
    #   <p>The dataset type (training data or test data).</p>
    #   @return [String]
    # @!attribute dataset_s3_uri
    #   <p>The S3 URI where the dataset is stored.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Description of the dataset.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The dataset status. While the system creates the dataset, the status is <code>CREATING</code>.
    #         When the dataset is ready to use, the status changes to <code>COMPLETED</code>. </p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of the dataset.</p>
    #   @return [String]
    # @!attribute number_of_documents
    #   <p>The number of documents in the dataset.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>Creation time of the dataset.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Time when the data from the dataset becomes available in the data lake.</p>
    #   @return [Time]
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
      :end_time,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DatasetStatus
      CREATING = 'CREATING'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
    end

    module DatasetType
      TRAIN = 'TRAIN'
      TEST = 'TEST'
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>
    #   @return [String]
    class DeleteDocumentClassifierRequest < Struct.new(
      :document_classifier_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteDocumentClassifierResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being deleted.</p>
    #   @return [String]
    class DeleteEndpointRequest < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteEndpointResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #   @return [String]
    class DeleteEntityRecognizerRequest < Struct.new(
      :entity_recognizer_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteEntityRecognizerResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel to delete.</p>
    #   @return [String]
    class DeleteFlywheelRequest < Struct.new(
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteFlywheelResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model version that has the policy to delete.</p>
    #   @return [String]
    # @!attribute policy_revision_id
    #   <p>The revision ID of the policy to delete.</p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy_revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class DeleteResourcePolicyResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_arn
    #   <p>The ARN of the dataset.</p>
    #   @return [String]
    class DescribeDatasetRequest < Struct.new(
      :dataset_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_properties
    #   <p>The dataset properties.</p>
    #   @return [Types::DatasetProperties]
    class DescribeDatasetResponse < Struct.new(
      :dataset_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  
    #         <code>StartDocumentClassificationJob</code> operation returns this identifier in its response.</p>
    #   @return [String]
    class DescribeDocumentClassificationJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classification_job_properties
    #   <p>An object that describes the properties associated with the document classification
    #         job.</p>
    #   @return [Types::DocumentClassificationJobProperties]
    class DescribeDocumentClassificationJobResponse < Struct.new(
      :document_classification_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. The  
    #         <code>CreateDocumentClassifier</code> operation returns this identifier in its response.</p>
    #   @return [String]
    class DescribeDocumentClassifierRequest < Struct.new(
      :document_classifier_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classifier_properties
    #   <p>An object that contains the properties associated with a document classifier.</p>
    #   @return [Types::DocumentClassifierProperties]
    class DescribeDocumentClassifierResponse < Struct.new(
      :document_classifier_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  
    #         <code>StartDominantLanguageDetectionJob</code> operation returns this identifier in its response.</p>
    #   @return [String]
    class DescribeDominantLanguageDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dominant_language_detection_job_properties
    #   <p>An object that contains the properties associated with a dominant language detection
    #         job.</p>
    #   @return [Types::DominantLanguageDetectionJobProperties]
    class DescribeDominantLanguageDetectionJobResponse < Struct.new(
      :dominant_language_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being described.</p>
    #   @return [String]
    class DescribeEndpointRequest < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_properties
    #   <p>Describes information associated with the specific endpoint.</p>
    #   @return [Types::EndpointProperties]
    class DescribeEndpointResponse < Struct.new(
      :endpoint_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The 
    #           <code>StartEntitiesDetectionJob</code> operation returns this identifier in its response.</p>
    #   @return [String]
    class DescribeEntitiesDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entities_detection_job_properties
    #   <p>An object that contains the properties associated with an entities detection job.</p>
    #   @return [Types::EntitiesDetectionJobProperties]
    class DescribeEntitiesDetectionJobResponse < Struct.new(
      :entities_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #   @return [String]
    class DescribeEntityRecognizerRequest < Struct.new(
      :entity_recognizer_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_recognizer_properties
    #   <p>Describes information associated with an entity recognizer.</p>
    #   @return [Types::EntityRecognizerProperties]
    class DescribeEntityRecognizerResponse < Struct.new(
      :entity_recognizer_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the events detection job.</p>
    #   @return [String]
    class DescribeEventsDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute events_detection_job_properties
    #   <p>An object that contains the properties associated with an event detection job.</p>
    #   @return [Types::EventsDetectionJobProperties]
    class DescribeEventsDetectionJobResponse < Struct.new(
      :events_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p></p>
    #   @return [String]
    # @!attribute flywheel_iteration_id
    #   <p></p>
    #   @return [String]
    class DescribeFlywheelIterationRequest < Struct.new(
      :flywheel_arn,
      :flywheel_iteration_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_iteration_properties
    #   <p>The configuration properties of a flywheel iteration.</p>
    #   @return [Types::FlywheelIterationProperties]
    class DescribeFlywheelIterationResponse < Struct.new(
      :flywheel_iteration_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel.</p>
    #   @return [String]
    class DescribeFlywheelRequest < Struct.new(
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_properties
    #   <p>The flywheel properties.</p>
    #   @return [Types::FlywheelProperties]
    class DescribeFlywheelResponse < Struct.new(
      :flywheel_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The 
    #           <code>StartKeyPhrasesDetectionJob</code> operation returns this identifier in its
    #         response.</p>
    #   @return [String]
    class DescribeKeyPhrasesDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute key_phrases_detection_job_properties
    #   <p>An object that contains the properties associated with a key phrases detection job.
    #       </p>
    #   @return [Types::KeyPhrasesDetectionJobProperties]
    class DescribeKeyPhrasesDetectionJobResponse < Struct.new(
      :key_phrases_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #   @return [String]
    class DescribePiiEntitiesDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute pii_entities_detection_job_properties
    #   <p>Provides information about a PII entities detection job.</p>
    #   @return [Types::PiiEntitiesDetectionJobProperties]
    class DescribePiiEntitiesDetectionJobResponse < Struct.new(
      :pii_entities_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model version that has the resource policy.</p>
    #   @return [String]
    class DescribeResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_policy
    #   <p>The JSON body of the resource-based policy.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The time at which the policy was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The time at which the policy was last modified.</p>
    #   @return [Time]
    # @!attribute policy_revision_id
    #   <p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a
    #         new revision ID, and it deletes the prior version of the policy.</p>
    #   @return [String]
    class DescribeResourcePolicyResponse < Struct.new(
      :resource_policy,
      :creation_time,
      :last_modified_time,
      :policy_revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  operation returns this identifier in its
    #         response.</p>
    #   @return [String]
    class DescribeSentimentDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sentiment_detection_job_properties
    #   <p>An object that contains the properties associated with a sentiment detection job.</p>
    #   @return [Types::SentimentDetectionJobProperties]
    class DescribeSentimentDetectionJobResponse < Struct.new(
      :sentiment_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier that Amazon Comprehend generated for the job. The  
    #         <code>StartTargetedSentimentDetectionJob</code> operation returns this identifier in its
    #         response.</p>
    #   @return [String]
    class DescribeTargetedSentimentDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute targeted_sentiment_detection_job_properties
    #   <p>An object that contains the properties associated with a targeted sentiment detection job.</p>
    #   @return [Types::TargetedSentimentDetectionJobProperties]
    class DescribeTargetedSentimentDetectionJobResponse < Struct.new(
      :targeted_sentiment_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier assigned by the user to the detection job.</p>
    #   @return [String]
    class DescribeTopicsDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute topics_detection_job_properties
    #   <p>The list of properties for the requested job.</p>
    #   @return [Types::TopicsDetectionJobProperties]
    class DescribeTopicsDetectionJobResponse < Struct.new(
      :topics_detection_job_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. The string must contain at least 20 characters. The maximum string size is 100 KB.</p>
    #   @return [String]
    class DetectDominantLanguageRequest < Struct.new(
      :text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute languages
    #   <p>Array of languages that Amazon Comprehend detected in the input text. 
    #         The array is sorted in descending order of the score 
    #         (the dominant language is always the first element in the array).</p>
    #            <p>For each language, the
    #         response returns the RFC 5646 language code and the level of confidence that Amazon Comprehend
    #         has in the accuracy of its inference. For more information about RFC 5646, see <a href="https://tools.ietf.org/html/rfc5646">Tags for Identifying Languages</a> on the
    #           <i>IETF Tools</i> web site.</p>
    #   @return [Array<Types::DominantLanguage>]
    class DetectDominantLanguageResponse < Struct.new(
      :languages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. The maximum string size is 100 KB. If you enter text using this parameter,
    #       do not use the <code>Bytes</code> parameter.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. If your request includes the endpoint for a custom entity recognition model, Amazon
    #         Comprehend uses the language of your custom model, and it ignores any language code that you
    #         specify here.</p>
    #            <p>All input documents must be in the same language.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name of an endpoint that is associated with a custom entity
    #         recognition model. Provide an endpoint if you want to detect entities by using your own custom
    #         model instead of the default model that is used by Amazon Comprehend.</p>
    #            <p>If you specify an endpoint, Amazon Comprehend uses the language of your custom model, and
    #         it ignores any language code that you provide in your request.</p>
    #            <p>For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    #   @return [String]
    # @!attribute bytes
    #   <p>This field applies only when you use a custom entity recognition model that
    #         was trained with PDF annotations. For other cases,
    #         enter your text input in the <code>Text</code> field.</p>
    #            <p>
    #         Use the <code>Bytes</code> parameter to input a text, PDF, Word or image file.
    #         Using a plain-text file in the <code>Bytes</code> parameter is equivelent to using the
    #         <code>Text</code> parameter (the <code>Entities</code> field in the response is identical).</p>
    #            <p>You can also use the <code>Bytes</code> parameter to input an Amazon Textract <code>DetectDocumentText</code>
    #         or <code>AnalyzeDocument</code> output file.</p>
    #            <p>Provide the input document as a sequence of base64-encoded bytes.
    #         If your code uses an Amazon Web Services SDK to detect entities, the SDK may encode
    #         the document file bytes for you. </p>
    #            <p>The maximum length of this field depends on the input document type. For details, see
    #         <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html">
    #           Inputs for real-time custom analysis</a> in the Comprehend Developer Guide. </p>
    #            <p>If you use the <code>Bytes</code> parameter, do not use the <code>Text</code> parameter.</p>
    #   @return [String]
    # @!attribute document_reader_config
    #   <p>Provides configuration parameters to override the default actions for extracting text
    #         from PDF documents and image files.</p>
    #   @return [Types::DocumentReaderConfig]
    class DetectEntitiesRequest < Struct.new(
      :text,
      :language_code,
      :endpoint_arn,
      :bytes,
      :document_reader_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute entities
    #   <p>A collection of entities identified in the input text. For each entity, the response
    #         provides the entity text, entity type, where the entity text begins and ends, and the level of
    #         confidence that Amazon Comprehend has in the detection. </p>
    #            <p>If your request uses a custom entity recognition model, Amazon Comprehend detects the
    #         entities that the model is trained to recognize. Otherwise, it detects the default entity
    #         types. For a list of default entity types, see
    #         <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html">Entities</a> in the Comprehend Developer Guide.
    #       </p>
    #   @return [Array<Types::Entity>]
    # @!attribute document_metadata
    #   <p>Information about the document, discovered during text extraction. This field is present
    #         in the response only if your request used the <code>Byte</code> parameter. </p>
    #   @return [Types::DocumentMetadata]
    # @!attribute document_type
    #   <p>The document type for each page in the input document. This field is present
    #         in the response only if your request used the <code>Byte</code> parameter. </p>
    #   @return [Array<Types::DocumentTypeListItem>]
    # @!attribute blocks
    #   <p>Information about each block of text in the input document.
    #         Blocks are nested. A page block contains a block for each line of text,
    #         which contains a block for each word. </p>
    #            <p>The <code>Block</code> content for a Word input document does not include a <code>Geometry</code> field.</p>
    #            <p>The <code>Block</code> field is not present in the response for plain-text inputs.</p>
    #   @return [Array<Types::Block>]
    # @!attribute errors
    #   <p>Page-level errors that the system detected while processing the input document.
    #         The field is empty if the system encountered no errors.</p>
    #   @return [Array<Types::ErrorsListItem>]
    class DetectEntitiesResponse < Struct.new(
      :entities,
      :document_metadata,
      :document_type,
      :blocks,
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. The string must contain less than 100 KB of UTF-8 encoded
    #         characters.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    class DetectKeyPhrasesRequest < Struct.new(
      :text,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute key_phrases
    #   <p>A collection of key phrases that Amazon Comprehend identified in the input text. For
    #         each key phrase, the response provides the text of the key phrase, where the key phrase begins
    #         and ends, and the level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection. </p>
    #   @return [Array<Types::KeyPhrase>]
    class DetectKeyPhrasesResponse < Struct.new(
      :key_phrases,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. The maximum string size is 100 KB.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input text.   
    #         Enter the language code for English (en) or Spanish (es).</p>
    #   @return [String]
    class DetectPiiEntitiesRequest < Struct.new(
      :text,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entities
    #   <p>A collection of PII entities identified in the input text. For each entity, the response
    #         provides the entity type, where the entity text begins and ends, and the level of confidence
    #         that Amazon Comprehend has in the detection.</p>
    #   @return [Array<Types::PiiEntity>]
    class DetectPiiEntitiesResponse < Struct.new(
      :entities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. The maximum string size is 5 KB.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    class DetectSentimentRequest < Struct.new(
      :text,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute sentiment
    #   <p>The inferred sentiment that Amazon Comprehend has the highest level of confidence
    #         in.</p>
    #   @return [String]
    # @!attribute sentiment_score
    #   <p>An object that lists the sentiments, and their corresponding confidence
    #         levels.</p>
    #   @return [Types::SentimentScore]
    class DetectSentimentResponse < Struct.new(
      :sentiment,
      :sentiment_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 string. The maximum string size is 5 KB.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the input documents. You can specify any of the following languages
    #         supported by Amazon Comprehend: German ("de"), English ("en"), Spanish ("es"), French ("fr"),
    #         Italian ("it"), or Portuguese ("pt").</p>
    #   @return [String]
    class DetectSyntaxRequest < Struct.new(
      :text,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute syntax_tokens
    #   <p>A collection of syntax tokens describing the text. For each token, the response provides
    #         the text, the token type, where the text begins and ends, and the level of confidence that
    #         Amazon Comprehend has that the token is correct. For a list of token types, see
    #         <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html">Syntax</a> in the Comprehend Developer Guide.
    #       </p>
    #   @return [Array<Types::SyntaxToken>]
    class DetectSyntaxResponse < Struct.new(
      :syntax_tokens,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text
    #   <p>A UTF-8 text string. The maximum string length is 5 KB.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. Currently, English is the only supported language.</p>
    #   @return [String]
    class DetectTargetedSentimentRequest < Struct.new(
      :text,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute entities
    #   <p>Targeted sentiment analysis for each of the entities identified in the input text.</p>
    #   @return [Array<Types::TargetedSentimentEntity>]
    class DetectTargetedSentimentResponse < Struct.new(
      :entities,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute text_segments
    #   <p>A list of up to 10 text strings. Each string has a maximum size of 1 KB, and
    #         the maximum size of the list is 10 KB.</p>
    #   @return [Array<Types::TextSegment>]
    # @!attribute language_code
    #   <p>The language of the input text. Currently, English is the only supported language.</p>
    #   @return [String]
    class DetectToxicContentRequest < Struct.new(
      :text_segments,
      :language_code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute result_list
    #   <p>Results of the content moderation analysis.
    #         Each entry in the results list contains a list of toxic content types identified in 
    #         the text, along with a confidence score for each content type. 
    #         The results list also includes a toxicity score for each entry in the results list.
    #       </p>
    #   @return [Array<Types::ToxicLabels>]
    class DetectToxicContentResponse < Struct.new(
      :result_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the class that categorizes the document being analyzed</p>
    # @!attribute name
    #   <p>The name of the class.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The confidence score that Amazon Comprehend has this class correctly attributed.</p>
    #   @return [Float]
    # @!attribute page
    #   <p>Page number in the input document. This field is present
    #         in the response only if your request includes the <code>Byte</code> parameter. </p>
    #   @return [Integer]
    class DocumentClass < Struct.new(
      :name,
      :score,
      :page,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration required for a document classification model.</p>
    # @!attribute mode
    #   <p>Classification mode indicates whether the documents are <code>MULTI_CLASS</code> or <code>MULTI_LABEL</code>.</p>
    #   @return [String]
    # @!attribute labels
    #   <p>One or more labels to associate with the custom classifier.</p>
    #   @return [Array<String>]
    class DocumentClassificationConfig < Struct.new(
      :mode,
      :labels,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of document classification jobs. For more
    #       information, see the  operation. You can
    #       provide only one filter parameter in each request.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list based on job status. Returns only jobs with the specified status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class DocumentClassificationJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a document classification job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the document classification job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned to the document classification job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the document classification job. If the status is
    #           <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of the job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the document classification job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the document classification job completed.</p>
    #   @return [Time]
    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier. </p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the document
    #         classification job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the document
    #         classification job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your document classification job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel</p>
    #   @return [String]
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
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DocumentClassifierDataFormat
      COMPREHEND_CSV = 'COMPREHEND_CSV'
      AUGMENTED_MANIFEST = 'AUGMENTED_MANIFEST'
    end

    module DocumentClassifierDocumentTypeFormat
      PLAIN_TEXT_DOCUMENT = 'PLAIN_TEXT_DOCUMENT'
      SEMI_STRUCTURED_DOCUMENT = 'SEMI_STRUCTURED_DOCUMENT'
    end

    # <p>The location of the training documents. This parameter is required in a request to create a semi-structured document classification model.</p>
    # @!attribute s3_uri
    #   <p>The S3 URI location of the training documents specified in the S3Uri CSV file.</p>
    #   @return [String]
    # @!attribute test_s3_uri
    #   <p>The S3 URI location of the test documents included in the TestS3Uri CSV file.
    #         This field is not required if you do not specify a test CSV file.</p>
    #   @return [String]
    class DocumentClassifierDocuments < Struct.new(
      :s3_uri,
      :test_s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of document classifiers. You can only specify
    #       one filtering parameter in a request. For more information, see the 
    #         <code>ListDocumentClassifiers</code> operation.</p>
    # @!attribute status
    #   <p>Filters the list of classifiers based on status.</p>
    #   @return [String]
    # @!attribute document_classifier_name
    #   <p>The name that you assigned to the document classifier</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of classifiers based on the time that the classifier was submitted for
    #         processing. Returns only classifiers submitted before the specified time. Classifiers are
    #         returned in ascending order, oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of classifiers based on the time that the classifier was submitted for
    #         processing. Returns only classifiers submitted after the specified time. Classifiers are
    #         returned in descending order, newest to oldest.</p>
    #   @return [Time]
    class DocumentClassifierFilter < Struct.new(
      :status,
      :document_classifier_name,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input properties for training a document classifier. </p>
    #          <p>For more information on how the input file is formatted, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/prep-classifier-data.html">Preparing training data</a> in the Comprehend Developer Guide.
    #     </p>
    # @!attribute data_format
    #   <p>The format of your training data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPREHEND_CSV</code>: A two-column CSV file, where labels are provided in the
    #             first column, and documents are provided in the second. If you use this value, you must
    #             provide the <code>S3Uri</code> parameter in your request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon
    #             SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON
    #             object that contains a training document and its associated labels. </p>
    #                  <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter
    #             in your request.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the
    #         default.</p>
    #   @return [String]
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI for the input data. The S3 bucket must be in the same Region as the API
    #         endpoint that you are calling. The URI can point to a single input file or it can provide the
    #         prefix for a collection of input files.</p>
    #            <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a
    #         single file, Amazon Comprehend uses that file as input. If more than one file begins with the
    #         prefix, Amazon Comprehend uses all of them as input.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>COMPREHEND_CSV</code>.</p>
    #   @return [String]
    # @!attribute test_s3_uri
    #   <p>This specifies the Amazon S3 location that contains the test annotations for the document classifier. 
    #         The URI must be in the same Amazon Web Services Region as the API endpoint that you are calling. </p>
    #   @return [String]
    # @!attribute label_delimiter
    #   <p>Indicates the delimiter used to separate each label for training a multi-label classifier.
    #         The default delimiter between labels is a pipe (|). You can use a different character as a
    #         delimiter (if it's an allowed character) by specifying it under Delimiter for labels. If the
    #         training documents use a delimiter other than the default or the delimiter you specify, the
    #         labels on that line will be combined to make a single unique label, such as
    #         LABELLABELLABEL.</p>
    #   @return [String]
    # @!attribute augmented_manifests
    #   <p>A list of augmented manifest files that provide training data for your custom model. An
    #         augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
    #         Truth.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>AUGMENTED_MANIFEST</code>.</p>
    #   @return [Array<Types::AugmentedManifestsListItem>]
    # @!attribute document_type
    #   <p>The type of input documents for training the model. Provide plain-text documents to create a plain-text model, and
    #       provide semi-structured documents to create a native document model.</p>
    #   @return [String]
    # @!attribute documents
    #   <p>The S3 location of the training documents.  
    #         This parameter is required in a request to create a native document model.</p>
    #   @return [Types::DocumentClassifierDocuments]
    # @!attribute document_reader_config
    #   <p>Provides configuration parameters to override the default actions for extracting text from PDF documents and image files. </p>
    #            <p> By default, Amazon Comprehend performs the following actions to extract text from files, based on the input file type: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Word files</b> - Amazon Comprehend parser extracts the text. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Digital PDF files</b> - Amazon Comprehend parser extracts the text. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Image files and scanned PDF files</b> - Amazon Comprehend uses the Amazon Textract <code>DetectDocumentText</code>
    #             API to extract the text. </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <code>DocumentReaderConfig</code> does not apply to plain text files or Word files.</p>
    #            <p>
    #           For image files and PDF documents, you can override these default actions using the fields listed below.
    #           For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-set-textract-options.html">
    #           Setting text extraction options</a> in the Comprehend Developer Guide.
    #       </p>
    #   @return [Types::DocumentReaderConfig]
    class DocumentClassifierInputDataConfig < Struct.new(
      :data_format,
      :s3_uri,
      :test_s3_uri,
      :label_delimiter,
      :augmented_manifests,
      :document_type,
      :documents,
      :document_reader_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DocumentClassifierMode
      MULTI_CLASS = 'MULTI_CLASS'
      MULTI_LABEL = 'MULTI_LABEL'
    end

    # <p>Provide the location for output data from a custom classifier job. This field is mandatory 
    #       if you are training a native document model.</p>
    # @!attribute s3_uri
    #   <p>When you use the <code>OutputDataConfig</code> object while creating a custom
    #         classifier, you specify the Amazon S3 location where you want to write the confusion matrix
    #         and other output files.
    #         The URI must be in the same Region as the API endpoint that you are calling. The location is
    #         used as the prefix for the actual location of this output file.</p>
    #            <p>When the custom classifier job is finished, the service creates the output file in a
    #         directory specific to the job. The <code>S3Uri</code> field contains the location of the
    #         output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the
    #         confusion matrix.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
    #         output results from an analysis job. The KmsKeyId can be one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>KMS Key Alias: <code>"alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ARN of a KMS Key Alias:
    #               <code>"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute flywheel_stats_s3_prefix
    #   <p>The Amazon S3 prefix for the data lake location of the flywheel statistics.</p>
    #   @return [String]
    class DocumentClassifierOutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id,
      :flywheel_stats_s3_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a document classifier.</p>
    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code for the language of the documents that the classifier was trained
    #         on.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the document classifier. If the status is <code>TRAINED</code> the
    #         classifier is ready to use. If the status is <code>TRAINED_WITH_WARNINGS</code> the
    #         classifier training succeeded, but you should review the warnings returned in the 
    #         <code>CreateDocumentClassifier</code> response.</p>
    #            <p>  If the status is <code>FAILED</code> you can see additional
    #         information about why the classifier wasn't trained in the <code>Message</code> field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Additional information about the status of the classifier.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the document classifier was submitted for training.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that training the document classifier completed.</p>
    #   @return [Time]
    # @!attribute training_start_time
    #   <p>Indicates the time when the training starts on documentation classifiers. You are billed
    #         for the time interval between this time and the value of TrainingEndTime. </p>
    #   @return [Time]
    # @!attribute training_end_time
    #   <p>The time that training of the document classifier was completed. Indicates the time when
    #         the training completes on documentation classifiers. You are billed for the time interval
    #         between this time and the value of TrainingStartTime.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the document classifier
    #         for training.</p>
    #   @return [Types::DocumentClassifierInputDataConfig]
    # @!attribute output_data_config
    #   <p> Provides output results configuration parameters for custom classifier jobs.</p>
    #   @return [Types::DocumentClassifierOutputDataConfig]
    # @!attribute classifier_metadata
    #   <p>Information about the document classifier, including the number of documents used for
    #         training the classifier, the number of documents used for test the classifier, and an accuracy
    #         rating.</p>
    #   @return [Types::ClassifierMetadata]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your custom classifier. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute mode
    #   <p>Indicates the mode in which the specific classifier was trained. This also indicates the
    #         format of input documents and the format of the confusion matrix. Each classifier can only be
    #         trained in one mode and this cannot be changed once the classifier is trained.</p>
    #   @return [String]
    # @!attribute model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute version_name
    #   <p>The version name that you assigned to the document classifier.</p>
    #   @return [String]
    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the source model. This model was imported from a
    #         different Amazon Web Services account to create the document classifier model in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel</p>
    #   @return [String]
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
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes information about a document classifier and its versions.</p>
    # @!attribute document_classifier_name
    #   <p>The name that you assigned the document classifier.</p>
    #   @return [String]
    # @!attribute number_of_versions
    #   <p>The number of versions you created.</p>
    #   @return [Integer]
    # @!attribute latest_version_created_at
    #   <p>The time that the latest document classifier version was submitted for processing.</p>
    #   @return [Time]
    # @!attribute latest_version_name
    #   <p>The version name you assigned to the latest document classifier version.</p>
    #   @return [String]
    # @!attribute latest_version_status
    #   <p>Provides the status of the latest document classifier version.</p>
    #   @return [String]
    class DocumentClassifierSummary < Struct.new(
      :document_classifier_name,
      :number_of_versions,
      :latest_version_created_at,
      :latest_version_name,
      :latest_version_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies one of the label or labels that categorize the document being analyzed.</p>
    # @!attribute name
    #   <p>The name of the label.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The confidence score that Amazon Comprehend has this label correctly attributed.</p>
    #   @return [Float]
    # @!attribute page
    #   <p>Page number where the label occurs. This field is present
    #         in the response only if your request includes the <code>Byte</code> parameter. </p>
    #   @return [Integer]
    class DocumentLabel < Struct.new(
      :name,
      :score,
      :page,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the document, discovered during text extraction.</p>
    # @!attribute pages
    #   <p>Number of pages in the document.</p>
    #   @return [Integer]
    # @!attribute extracted_characters
    #   <p>List of pages in the document, with the number of characters extracted from each page.</p>
    #   @return [Array<Types::ExtractedCharactersListItem>]
    class DocumentMetadata < Struct.new(
      :pages,
      :extracted_characters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DocumentReadAction
      TEXTRACT_DETECT_DOCUMENT_TEXT = 'TEXTRACT_DETECT_DOCUMENT_TEXT'
      TEXTRACT_ANALYZE_DOCUMENT = 'TEXTRACT_ANALYZE_DOCUMENT'
    end

    # <p>TABLES or FORMS</p>
    module DocumentReadFeatureTypes
      TABLES = 'TABLES'
      FORMS = 'FORMS'
    end

    module DocumentReadMode
      SERVICE_DEFAULT = 'SERVICE_DEFAULT'
      FORCE_DOCUMENT_READ_ACTION = 'FORCE_DOCUMENT_READ_ACTION'
    end

    # <p>Provides configuration parameters to override the default actions for extracting text from PDF documents and image files. </p>
    #          <p> By default, Amazon Comprehend performs the following actions to extract text from files, based on the input file type: </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Word files</b> - Amazon Comprehend parser extracts the text. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Digital PDF files</b> - Amazon Comprehend parser extracts the text. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Image files and scanned PDF files</b> - Amazon Comprehend uses the Amazon Textract <code>DetectDocumentText</code>
    #           API to extract the text. </p>
    #             </li>
    #          </ul>
    #          <p>
    #             <code>DocumentReaderConfig</code> does not apply to plain text files or Word files.</p>
    #          <p>
    #         For image files and PDF documents, you can override these default actions using the fields listed below.
    #         For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-set-textract-options.html">
    #         Setting text extraction options</a> in the Comprehend Developer Guide.
    #     </p>
    # @!attribute document_read_action
    #   <p>This field defines the Amazon Textract API operation that Amazon Comprehend uses to extract text from PDF files and image files.
    #         Enter one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TEXTRACT_DETECT_DOCUMENT_TEXT</code> - The Amazon Comprehend service uses the <code>DetectDocumentText</code>
    #              API operation. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TEXTRACT_ANALYZE_DOCUMENT</code> - The Amazon Comprehend service uses the <code>AnalyzeDocument</code>
    #             API operation. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute document_read_mode
    #   <p>Determines the text extraction actions for PDF files. Enter one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SERVICE_DEFAULT</code> - use the Amazon Comprehend service defaults for PDF files.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORCE_DOCUMENT_READ_ACTION</code> - Amazon Comprehend uses the Textract API specified by
    #             DocumentReadAction for all PDF files, including digital PDF files. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute feature_types
    #   <p>Specifies the type of Amazon Textract features to apply. If you chose <code>TEXTRACT_ANALYZE_DOCUMENT</code>
    #         as the read action, you must specify one or both of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>TABLES</code> - Returns additional information about any tables that are detected in the input document. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FORMS</code> - Returns additional information about any forms that are detected in the input document. </p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    class DocumentReaderConfig < Struct.new(
      :document_read_action,
      :document_read_mode,
      :feature_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DocumentType
      NATIVE_PDF = 'NATIVE_PDF'
      SCANNED_PDF = 'SCANNED_PDF'
      MS_WORD = 'MS_WORD'
      IMAGE = 'IMAGE'
      PLAIN_TEXT = 'PLAIN_TEXT'
      TEXTRACT_DETECT_DOCUMENT_TEXT_JSON = 'TEXTRACT_DETECT_DOCUMENT_TEXT_JSON'
      TEXTRACT_ANALYZE_DOCUMENT_JSON = 'TEXTRACT_ANALYZE_DOCUMENT_JSON'
    end

    # <p>Document type for each page in the document.</p>
    # @!attribute page
    #   <p>Page number.</p>
    #   @return [Integer]
    # @!attribute type
    #   <p>Document type.</p>
    #   @return [String]
    class DocumentTypeListItem < Struct.new(
      :page,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Returns the code for the dominant language in the input text and the level of
    #       confidence that Amazon Comprehend has in the accuracy of the detection.</p>
    # @!attribute language_code
    #   <p>The RFC 5646 language code for the dominant language. For more information about RFC
    #         5646, see <a href="https://tools.ietf.org/html/rfc5646">Tags for Identifying
    #           Languages</a> on the <i>IETF Tools</i> web site.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #   @return [Float]
    class DominantLanguage < Struct.new(
      :language_code,
      :score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the 
    #       operation.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class DominantLanguageDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a dominant language detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the dominant language detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,
    #         fully qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID.
    #         The format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned to the dominant language detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the dominant language detection job. If the status is
    #           <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description for the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the dominant language detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the dominant language detection job completed.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the dominant language
    #         detection job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the dominant language
    #         detection job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your dominant language detection job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
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
      :vpc_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The filter used to determine which endpoints are returned. You can filter jobs on their
    #       name, model, status, or the date and time that they were created. You can only set one filter
    #       at a time. </p>
    # @!attribute model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the status of the endpoint being returned. Possible values are: Creating, Ready,
    #         Updating, Deleting, Failed.</p>
    #   @return [String]
    # @!attribute creation_time_before
    #   <p>Specifies a date before which the returned endpoint or endpoints were created.</p>
    #   @return [Time]
    # @!attribute creation_time_after
    #   <p>Specifies a date after which the returned endpoint or endpoints were created.</p>
    #   @return [Time]
    class EndpointFilter < Struct.new(
      :model_arn,
      :status,
      :creation_time_before,
      :creation_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies information about the specified endpoint.
    #       For information about endpoints, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing endpoints</a>.</p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Specifies the status of the endpoint. Because the endpoint updates and creation are
    #         asynchronous, so customers will need to wait for the endpoint to be <code>Ready</code> status
    #         before making inference requests.</p>
    #   @return [String]
    # @!attribute message
    #   <p>Specifies a reason for failure in cases of <code>Failed</code> status.</p>
    #   @return [String]
    # @!attribute model_arn
    #   <p>The Amazon Resource Number (ARN) of the model to which the endpoint is attached.</p>
    #   @return [String]
    # @!attribute desired_model_arn
    #   <p>ARN of the new model to use for updating an existing endpoint. This ARN is going to be
    #         different from the model ARN when the update is in progress</p>
    #   @return [String]
    # @!attribute desired_inference_units
    #   <p>The desired number of inference units to be used by the model using this endpoint.
    #         
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #   @return [Integer]
    # @!attribute current_inference_units
    #   <p>The number of inference units currently used by the model using this endpoint.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The creation date and time of the endpoint.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time that the endpoint was last modified.</p>
    #   @return [Time]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to trained custom models encrypted with a customer
    #         managed key (ModelKmsKeyId).</p>
    #   @return [String]
    # @!attribute desired_data_access_role_arn
    #   <p>Data access role ARN to use in case the new model is encrypted with a customer KMS
    #         key.</p>
    #   @return [String]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel</p>
    #   @return [String]
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
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EndpointStatus
      CREATING = 'CREATING'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
      IN_SERVICE = 'IN_SERVICE'
      UPDATING = 'UPDATING'
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the  operation.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class EntitiesDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about an entities detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the entities detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned the entities detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the entities detection job. If the status is <code>FAILED</code>,
    #         the <code>Message</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the entities detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the entities detection job completed</p>
    #   @return [Time]
    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the entities detection
    #         job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the entities detection
    #         job. </p>
    #   @return [Types::OutputDataConfig]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your entity detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Name (ARN) of the flywheel associated with this job.</p>
    #   @return [String]
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
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about an entity. </p>
    #          <p> </p>
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #   @return [Float]
    # @!attribute type
    #   <p>The entity type. For entity detection using the built-in model, this field contains one of the
    #         standard entity types listed below.</p>
    #            <p>For custom entity detection, this field contains one of the
    #         entity types that you specified when you trained your custom model.</p>
    #   @return [String]
    # @!attribute text
    #   <p>The text of the entity.</p>
    #   @return [String]
    # @!attribute begin_offset
    #   <p>The zero-based offset from the beginning of the source text to the first character in the
    #         entity.</p>
    #            <p>This field is empty for non-text input.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The zero-based offset from the beginning of the source text to the last character in the
    #         entity.</p>
    #            <p>This field is empty for non-text input.</p>
    #   @return [Integer]
    # @!attribute block_references
    #   <p>A reference to each block for this entity. This field is empty for plain-text input.</p>
    #   @return [Array<Types::BlockReference>]
    class Entity < Struct.new(
      :score,
      :type,
      :text,
      :begin_offset,
      :end_offset,
      :block_references,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies one of the label or labels that categorize the personally identifiable
    #       information (PII) entity being analyzed.</p>
    # @!attribute name
    #   <p>The name of the label.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #   @return [Float]
    class EntityLabel < Struct.new(
      :name,
      :score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration required for an entity recognition model.</p>
    # @!attribute entity_types
    #   <p>Up to 25 entity types that the model is trained to recognize.</p>
    #   @return [Array<Types::EntityTypesListItem>]
    class EntityRecognitionConfig < Struct.new(
      :entity_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the annotations associated with a entity recognizer.</p>
    # @!attribute s3_uri
    #   <p> Specifies the Amazon S3 location where the annotations for an entity recognizer are
    #         located. The URI must be in the same Region as the API endpoint that you are calling.</p>
    #   @return [String]
    # @!attribute test_s3_uri
    #   <p> Specifies the Amazon S3 location where the test annotations for an entity recognizer are
    #         located. The URI must be in the same Region as the API endpoint that you are calling.</p>
    #   @return [String]
    class EntityRecognizerAnnotations < Struct.new(
      :s3_uri,
      :test_s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EntityRecognizerDataFormat
      COMPREHEND_CSV = 'COMPREHEND_CSV'
      AUGMENTED_MANIFEST = 'AUGMENTED_MANIFEST'
    end

    # <p>Describes the training documents submitted with an entity recognizer.</p>
    # @!attribute s3_uri
    #   <p> Specifies the Amazon S3 location where the training documents for an entity recognizer
    #         are located. The URI must be in the same Region as the API endpoint that you are
    #         calling.</p>
    #   @return [String]
    # @!attribute test_s3_uri
    #   <p> Specifies the Amazon S3 location where the test documents for an entity recognizer are
    #         located. The URI must be in the same Amazon Web Services Region as the API endpoint that you are
    #         calling.</p>
    #   @return [String]
    # @!attribute input_format
    #   <p> Specifies how the text in an input file should be processed. This is optional, and the
    #         default is ONE_DOC_PER_LINE. ONE_DOC_PER_FILE - Each file is considered a separate document.
    #         Use this option when you are processing large documents, such as newspaper articles or
    #         scientific papers. ONE_DOC_PER_LINE - Each line in a file is considered a separate document.
    #         Use this option when you are processing many short documents, such as text messages.</p>
    #   @return [String]
    class EntityRecognizerDocuments < Struct.new(
      :s3_uri,
      :test_s3_uri,
      :input_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the entity list submitted with an entity recognizer.</p>
    # @!attribute s3_uri
    #   <p>Specifies the Amazon S3 location where the entity list is located. The URI must be in the
    #         same Region as the API endpoint that you are calling.</p>
    #   @return [String]
    class EntityRecognizerEntityList < Struct.new(
      :s3_uri,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about the accuracy of an entity recognizer. </p>
    # @!attribute precision
    #   <p>A measure of the usefulness of the recognizer results in the test data. High precision
    #         means that the recognizer returned substantially more relevant results than irrelevant ones.
    #       </p>
    #   @return [Float]
    # @!attribute recall
    #   <p>A measure of how complete the recognizer results are for the test data. High recall means
    #         that the recognizer returned most of the relevant results.</p>
    #   @return [Float]
    # @!attribute f1_score
    #   <p>A measure of how accurate the recognizer results are for the test data. It is derived from
    #         the <code>Precision</code> and <code>Recall</code> values. The <code>F1Score</code> is the
    #         harmonic average of the two scores. For plain text entity recognizer models, the range is 0 to 100,
    #         where 100 is the best score. For PDF/Word entity recognizer models, the range is 0 to 1,
    #         where 1 is the best score.
    #       </p>
    #   @return [Float]
    class EntityRecognizerEvaluationMetrics < Struct.new(
      :precision,
      :recall,
      :f1_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of entity recognizers. You can only specify one
    #       filtering parameter in a request. For more information, see the 
    #         <code>ListEntityRecognizers</code> operation./></p>
    # @!attribute status
    #   <p>The status of an entity recognizer.</p>
    #   @return [String]
    # @!attribute recognizer_name
    #   <p>The name that you assigned the entity recognizer.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of entities based on the time that the list was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of entities based on the time that the list was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    class EntityRecognizerFilter < Struct.new(
      :status,
      :recognizer_name,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the format and location of the input data.</p>
    # @!attribute data_format
    #   <p>The format of your training data:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPREHEND_CSV</code>: A CSV file that supplements your training documents. The
    #             CSV file contains information about the custom entities that your trained model will
    #             detect. The required format of the file depends on whether you are providing annotations
    #             or an entity list.</p>
    #                  <p>If you use this value, you must provide your CSV file by using either the
    #               <code>Annotations</code> or <code>EntityList</code> parameters. You must provide your
    #             training documents by using the <code>Documents</code> parameter.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AUGMENTED_MANIFEST</code>: A labeled dataset that is produced by Amazon
    #             SageMaker Ground Truth. This file is in JSON lines format. Each line is a complete JSON
    #             object that contains a training document and its labels. Each label annotates a named
    #             entity in the training document. </p>
    #                  <p>If you use this value, you must provide the <code>AugmentedManifests</code> parameter
    #             in your request.</p>
    #               </li>
    #            </ul>
    #            <p>If you don't specify a value, Amazon Comprehend uses <code>COMPREHEND_CSV</code> as the
    #         default.</p>
    #   @return [String]
    # @!attribute entity_types
    #   <p>The entity types in the labeled training data that Amazon Comprehend uses to train the
    #         custom entity recognizer. Any entity types that you don't specify are ignored.</p>
    #            <p>A maximum of 25 entity types can be used at one time to train an entity recognizer. Entity
    #         types must not contain the following invalid characters: \n (line break), \\n (escaped line
    #         break), \r (carriage return), \\r (escaped carriage return), \t (tab), \\t (escaped tab),
    #         space, and , (comma). </p>
    #   @return [Array<Types::EntityTypesListItem>]
    # @!attribute documents
    #   <p>The S3 location of the folder that contains the training documents for your custom entity
    #         recognizer.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>COMPREHEND_CSV</code>.</p>
    #   @return [Types::EntityRecognizerDocuments]
    # @!attribute annotations
    #   <p>The S3 location of the CSV file that annotates your training documents.</p>
    #   @return [Types::EntityRecognizerAnnotations]
    # @!attribute entity_list
    #   <p>The S3 location of the CSV file that has the entity list for your custom entity
    #         recognizer.</p>
    #   @return [Types::EntityRecognizerEntityList]
    # @!attribute augmented_manifests
    #   <p>A list of augmented manifest files that provide training data for your custom model. An
    #         augmented manifest file is a labeled dataset that is produced by Amazon SageMaker Ground
    #         Truth.</p>
    #            <p>This parameter is required if you set <code>DataFormat</code> to
    #           <code>AUGMENTED_MANIFEST</code>.</p>
    #   @return [Array<Types::AugmentedManifestsListItem>]
    class EntityRecognizerInputDataConfig < Struct.new(
      :data_format,
      :entity_types,
      :documents,
      :annotations,
      :entity_list,
      :augmented_manifests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information about an entity recognizer.</p>
    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute number_of_trained_documents
    #   <p> The number of documents in the input data that were used to train the entity recognizer.
    #         Typically this is 80 to 90 percent of the input documents.</p>
    #   @return [Integer]
    # @!attribute number_of_test_documents
    #   <p> The number of documents in the input data that were used to test the entity recognizer.
    #         Typically this is 10 to 20 percent of the input documents.</p>
    #   @return [Integer]
    # @!attribute evaluation_metrics
    #   <p>Detailed information about the accuracy of an entity recognizer.</p>
    #   @return [Types::EntityRecognizerEvaluationMetrics]
    # @!attribute entity_types
    #   <p>Entity types from the metadata of an entity recognizer.</p>
    #   @return [Array<Types::EntityRecognizerMetadataEntityTypesListItem>]
    class EntityRecognizerMetadata < Struct.new(
      :number_of_trained_documents,
      :number_of_test_documents,
      :evaluation_metrics,
      :entity_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Individual item from the list of entity types in the metadata of an entity
    #       recognizer.</p>
    # @!attribute type
    #   <p>Type of entity from the list of entity types in the metadata of an entity recognizer.
    #       </p>
    #   @return [String]
    # @!attribute evaluation_metrics
    #   <p>Detailed information about the accuracy of the entity recognizer for a specific item on
    #         the list of entity types. </p>
    #   @return [Types::EntityTypesEvaluationMetrics]
    # @!attribute number_of_train_mentions
    #   <p>Indicates the number of times the given entity type was seen in the training data. </p>
    #   @return [Integer]
    class EntityRecognizerMetadataEntityTypesListItem < Struct.new(
      :type,
      :evaluation_metrics,
      :number_of_train_mentions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Output data configuration.</p>
    # @!attribute flywheel_stats_s3_prefix
    #   <p>The Amazon S3 prefix for the data lake location of the flywheel statistics.</p>
    #   @return [String]
    class EntityRecognizerOutputDataConfig < Struct.new(
      :flywheel_stats_s3_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes information about an entity recognizer.</p>
    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p> The language of the input documents. All documents must be in the same language. Only
    #         English ("en") is currently supported.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Provides the status of the entity recognizer.</p>
    #   @return [String]
    # @!attribute message
    #   <p> A description of the status of the recognizer.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the recognizer was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the recognizer creation completed.</p>
    #   @return [Time]
    # @!attribute training_start_time
    #   <p>The time that training of the entity recognizer started.</p>
    #   @return [Time]
    # @!attribute training_end_time
    #   <p>The time that training of the entity recognizer was completed.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data properties of an entity recognizer.</p>
    #   @return [Types::EntityRecognizerInputDataConfig]
    # @!attribute recognizer_metadata
    #   <p> Provides information about an entity recognizer.</p>
    #   @return [Types::EntityRecognizerMetadata]
    # @!attribute data_access_role_arn
    #   <p> The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your custom entity recognizer. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute version_name
    #   <p>The version name you assigned to the entity recognizer.</p>
    #   @return [String]
    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the source model. This model was imported from a
    #         different Amazon Web Services account to create the entity recognizer model in your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel</p>
    #   @return [String]
    # @!attribute output_data_config
    #   <p>Output data configuration.</p>
    #   @return [Types::EntityRecognizerOutputDataConfig]
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
      :output_data_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Describes the information about an entity recognizer and its versions.</p>
    # @!attribute recognizer_name
    #   <p> The name that you assigned the entity recognizer.</p>
    #   @return [String]
    # @!attribute number_of_versions
    #   <p> The number of versions you created.</p>
    #   @return [Integer]
    # @!attribute latest_version_created_at
    #   <p> The time that the latest entity recognizer version was submitted for processing.</p>
    #   @return [Time]
    # @!attribute latest_version_name
    #   <p> The version name you assigned to the latest entity recognizer version.</p>
    #   @return [String]
    # @!attribute latest_version_status
    #   <p> Provides the status of the latest entity recognizer version.</p>
    #   @return [String]
    class EntityRecognizerSummary < Struct.new(
      :recognizer_name,
      :number_of_versions,
      :latest_version_created_at,
      :latest_version_name,
      :latest_version_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EntityType
      PERSON = 'PERSON'
      LOCATION = 'LOCATION'
      ORGANIZATION = 'ORGANIZATION'
      COMMERCIAL_ITEM = 'COMMERCIAL_ITEM'
      EVENT = 'EVENT'
      DATE = 'DATE'
      QUANTITY = 'QUANTITY'
      TITLE = 'TITLE'
      OTHER = 'OTHER'
    end

    # <p>Detailed information about the accuracy of an entity recognizer for a specific entity
    #       type. </p>
    # @!attribute precision
    #   <p>A measure of the usefulness of the recognizer results for a specific entity type in the
    #         test data. High precision means that the recognizer returned substantially more relevant
    #         results than irrelevant ones. </p>
    #   @return [Float]
    # @!attribute recall
    #   <p>A measure of how complete the recognizer results are for a specific entity type in the
    #         test data. High recall means that the recognizer returned most of the relevant results.</p>
    #   @return [Float]
    # @!attribute f1_score
    #   <p>A measure of how accurate the recognizer results are for a specific entity type in the
    #         test data. It is derived from the <code>Precision</code> and <code>Recall</code> values. The
    #           <code>F1Score</code> is the harmonic average of the two scores. The highest score is 1, and
    #         the worst score is 0. </p>
    #   @return [Float]
    class EntityTypesEvaluationMetrics < Struct.new(
      :precision,
      :recall,
      :f1_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An entity type within a labeled training dataset that Amazon Comprehend uses to train a
    #       custom entity recognizer.</p>
    # @!attribute type
    #   <p>An entity type within a labeled training dataset that Amazon Comprehend uses to train a
    #         custom entity recognizer.</p>
    #            <p>Entity types must not contain the following invalid characters: \n (line break), \\n
    #         (escaped line break, \r (carriage return), \\r (escaped carriage return), \t (tab), \\t
    #         (escaped tab), and , (comma).</p>
    #   @return [String]
    class EntityTypesListItem < Struct.new(
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Text extraction encountered one or more page-level errors in the input document.</p>
    #          <p>The <code>ErrorCode</code> contains one of the following values:</p>
    #          <ul>
    #             <li>
    #                <p>TEXTRACT_BAD_PAGE - Amazon Textract cannot read the page. For more information
    #           about page limits in Amazon Textract, see <a href="https://docs.aws.amazon.com/textract/latest/dg/limits-document.html">
    #             Page Quotas in Amazon Textract</a>.</p>
    #             </li>
    #             <li>
    #                <p>TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED - The number of requests exceeded your throughput limit.
    #           For more information about throughput quotas in Amazon Textract, see <a href="https://docs.aws.amazon.com/textract/latest/dg/limits-quotas-explained.html">
    #             Default quotas in Amazon Textract</a>.</p>
    #             </li>
    #             <li>
    #                <p>PAGE_CHARACTERS_EXCEEDED - Too many text characters on the page (10,000 characters maximum).</p>
    #             </li>
    #             <li>
    #                <p>PAGE_SIZE_EXCEEDED - The maximum page size is 10 MB.</p>
    #             </li>
    #             <li>
    #                <p>INTERNAL_SERVER_ERROR - The request encountered a service issue. Try the API request again.</p>
    #             </li>
    #          </ul>
    # @!attribute page
    #   <p>Page number where the error occurred.</p>
    #   @return [Integer]
    # @!attribute error_code
    #   <p>Error code for the cause of the error.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Text message explaining the reason for the error.</p>
    #   @return [String]
    class ErrorsListItem < Struct.new(
      :page,
      :error_code,
      :error_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of event detection jobs.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the events detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class EventsDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about an events detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the events detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name you assigned the events detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the events detection job.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of the events detection job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the events detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the events detection job completed.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the events detection
    #         job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the events detection
    #         job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute target_event_types
    #   <p>The types of events that are detected by the job.</p>
    #   @return [Array<String>]
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
      :target_event_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Array of the number of characters extracted from each page.</p>
    # @!attribute page
    #   <p>Page number.</p>
    #   @return [Integer]
    # @!attribute count
    #   <p>Number of characters extracted from each page.</p>
    #   @return [Integer]
    class ExtractedCharactersListItem < Struct.new(
      :page,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filter the flywheels based on creation time or flywheel status.</p>
    # @!attribute status
    #   <p>Filter the flywheels based on the flywheel status.</p>
    #   @return [String]
    # @!attribute creation_time_after
    #   <p>Filter the flywheels to include flywheels created after the specified time.</p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>Filter the flywheels to include flywheels created before the specified time.</p>
    #   @return [Time]
    class FlywheelFilter < Struct.new(
      :status,
      :creation_time_after,
      :creation_time_before,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Filter the flywheel iterations based on creation time.</p>
    # @!attribute creation_time_after
    #   <p>Filter the flywheel iterations to include iterations created after the specified time.</p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>Filter the flywheel iterations to include iterations created before the specified time.</p>
    #   @return [Time]
    class FlywheelIterationFilter < Struct.new(
      :creation_time_after,
      :creation_time_before,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The configuration properties of a flywheel iteration.</p>
    # @!attribute flywheel_arn
    #   <p></p>
    #   @return [String]
    # @!attribute flywheel_iteration_id
    #   <p></p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation start time of the flywheel iteration.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The completion time of this flywheel iteration.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The status of the flywheel iteration.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of the flywheel iteration.</p>
    #   @return [String]
    # @!attribute evaluated_model_arn
    #   <p>The ARN of the evaluated model associated with this flywheel iteration.</p>
    #   @return [String]
    # @!attribute evaluated_model_metrics
    #   <p>The evaluation metrics associated with the evaluated model.</p>
    #   @return [Types::FlywheelModelEvaluationMetrics]
    # @!attribute trained_model_arn
    #   <p>The ARN of the trained model associated with this flywheel iteration.</p>
    #   @return [String]
    # @!attribute trained_model_metrics
    #   <p>The metrics associated with the trained model.</p>
    #   @return [Types::FlywheelModelEvaluationMetrics]
    # @!attribute evaluation_manifest_s3_prefix
    #   <p></p>
    #   @return [String]
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
      :evaluation_manifest_s3_prefix,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FlywheelIterationStatus
      TRAINING = 'TRAINING'
      EVALUATING = 'EVALUATING'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
      STOP_REQUESTED = 'STOP_REQUESTED'
      STOPPED = 'STOPPED'
    end

    # <p>The evaluation metrics associated with the evaluated model.</p>
    # @!attribute average_f1_score
    #   <p>The average F1 score from the evaluation metrics.</p>
    #   @return [Float]
    # @!attribute average_precision
    #   <p>Average precision metric for the model.</p>
    #   @return [Float]
    # @!attribute average_recall
    #   <p>Average recall metric for the model.</p>
    #   @return [Float]
    # @!attribute average_accuracy
    #   <p>Average accuracy metric for the model.</p>
    #   @return [Float]
    class FlywheelModelEvaluationMetrics < Struct.new(
      :average_f1_score,
      :average_precision,
      :average_recall,
      :average_accuracy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The flywheel properties.</p>
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel.</p>
    #   @return [String]
    # @!attribute active_model_arn
    #   <p>The Amazon Resource Number (ARN) of the active model version.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend permission to access the flywheel data.</p>
    #   @return [String]
    # @!attribute task_config
    #   <p>Configuration about the model associated with a flywheel.</p>
    #   @return [Types::TaskConfig]
    # @!attribute data_lake_s3_uri
    #   <p>Amazon S3 URI of the data lake location. </p>
    #   @return [String]
    # @!attribute data_security_config
    #   <p>Data security configuration.</p>
    #   @return [Types::DataSecurityConfig]
    # @!attribute status
    #   <p>The status of the flywheel.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>Model type of the flywheel's model.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of the flywheel.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the flywheel.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Last modified time for the flywheel.</p>
    #   @return [Time]
    # @!attribute latest_flywheel_iteration
    #   <p>The most recent flywheel iteration.</p>
    #   @return [String]
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
      :latest_flywheel_iteration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FlywheelStatus
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      FAILED = 'FAILED'
    end

    # <p>Flywheel summary information.</p>
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel</p>
    #   @return [String]
    # @!attribute active_model_arn
    #   <p>ARN of the active model version for the flywheel.</p>
    #   @return [String]
    # @!attribute data_lake_s3_uri
    #   <p>Amazon S3 URI of the data lake location. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the flywheel.</p>
    #   @return [String]
    # @!attribute model_type
    #   <p>Model type of the flywheel's model.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of the flywheel.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>Creation time of the flywheel.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>Last modified time for the flywheel.</p>
    #   @return [Time]
    # @!attribute latest_flywheel_iteration
    #   <p>The most recent flywheel iteration.</p>
    #   @return [String]
    class FlywheelSummary < Struct.new(
      :flywheel_arn,
      :active_model_arn,
      :data_lake_s3_uri,
      :status,
      :model_type,
      :message,
      :creation_time,
      :last_modified_time,
      :latest_flywheel_iteration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the location of items on a document page.</p>
    #          <p>For additional information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/API_Geometry.html">Geometry</a> in the Amazon Textract API reference.</p>
    # @!attribute bounding_box
    #   <p>An axis-aligned coarse representation of the location of the recognized item on the
    #         document page.</p>
    #   @return [Types::BoundingBox]
    # @!attribute polygon
    #   <p>Within the bounding box, a fine-grained polygon around the recognized item.</p>
    #   @return [Array<Types::Point>]
    class Geometry < Struct.new(
      :bounding_box,
      :polygon,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute source_model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to import.</p>
    #   @return [String]
    # @!attribute model_name
    #   <p>The name to assign to the custom model that is created in Amazon Comprehend by this
    #         import.</p>
    #   @return [String]
    # @!attribute version_name
    #   <p>The version name given to the custom model that is created by this import. Version names
    #         can have a maximum of 256 characters. Alphanumeric characters, hyphens (-) and underscores (_)
    #         are allowed. The version name must be unique among all models with the same classifier name in
    #         the account/Region.</p>
    #   @return [String]
    # @!attribute model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend permission to use Amazon Key Management Service (KMS) to encrypt or decrypt the custom
    #         model.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the custom model that is created by this import. A tag is a
    #         key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a
    #         tag with "Sales" as the key might be added to a resource to indicate its use by the sales
    #         department.</p>
    #   @return [Array<Types::Tag>]
    class ImportModelRequest < Struct.new(
      :source_model_arn,
      :model_name,
      :version_name,
      :model_kms_key_id,
      :data_access_role_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute model_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model being imported.</p>
    #   @return [String]
    class ImportModelResponse < Struct.new(
      :model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The input properties for an inference job. The document reader config field applies
    #       only to non-text inputs for custom analysis.</p>
    # @!attribute s3_uri
    #   <p>The Amazon S3 URI for the input data. The URI must be in same Region as the API
    #         endpoint that you are calling. The URI can point to a single input file or it can provide the
    #         prefix for a collection of data files. </p>
    #            <p>For example, if you use the URI <code>S3://bucketName/prefix</code>, if the prefix is a
    #         single file, Amazon Comprehend uses that file as input. If more than one file begins with the
    #         prefix, Amazon Comprehend uses all of them as input.</p>
    #   @return [String]
    # @!attribute input_format
    #   <p>Specifies how the text in an input file should be processed:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ONE_DOC_PER_FILE</code> - Each file is considered a separate document. Use
    #             this option when you are processing large documents, such as newspaper articles or
    #             scientific papers.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ONE_DOC_PER_LINE</code> - Each line in a file is considered a separate
    #             document. Use this option when you are processing many short documents, such as text
    #             messages.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute document_reader_config
    #   <p>Provides configuration parameters to override the default actions for extracting text
    #         from PDF documents and image files.</p>
    #   @return [Types::DocumentReaderConfig]
    class InputDataConfig < Struct.new(
      :s3_uri,
      :input_format,
      :document_reader_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InputFormat
      ONE_DOC_PER_FILE = 'ONE_DOC_PER_FILE'
      ONE_DOC_PER_LINE = 'ONE_DOC_PER_LINE'
    end

    # <p>An internal server error occurred. Retry your request.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The filter specified for the operation is invalid. Specify a different
    #       filter.</p>
    # @!attribute message
    #   @return [String]
    class InvalidFilterException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides additional detail about why the request failed.</p>
    # @!attribute reason
    #   <p>Reason codes include the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>DOCUMENT_SIZE_EXCEEDED - Document size is too large. Check the size of your file and resubmit the request.</p>
    #               </li>
    #               <li>
    #                  <p>UNSUPPORTED_DOC_TYPE - Document type is not supported. Check the file type and resubmit the request.</p>
    #               </li>
    #               <li>
    #                  <p>PAGE_LIMIT_EXCEEDED - Too many pages in the document. Check the number of pages in your file and resubmit the request.</p>
    #               </li>
    #               <li>
    #                  <p>TEXTRACT_ACCESS_DENIED - Access denied to Amazon Textract. Verify that your account has permission to use Amazon Textract API operations and resubmit the request.</p>
    #               </li>
    #               <li>
    #                  <p>NOT_TEXTRACT_JSON - Document is not Amazon Textract JSON format. Verify the format and resubmit the request.</p>
    #               </li>
    #               <li>
    #                  <p>MISMATCHED_TOTAL_PAGE_COUNT - Check the number of pages in your file and resubmit the request.</p>
    #               </li>
    #               <li>
    #                  <p>INVALID_DOCUMENT - Invalid document. Check the file and resubmit the request.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class InvalidRequestDetail < Struct.new(
      :reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InvalidRequestDetailReason
      DOCUMENT_SIZE_EXCEEDED = 'DOCUMENT_SIZE_EXCEEDED'
      UNSUPPORTED_DOC_TYPE = 'UNSUPPORTED_DOC_TYPE'
      PAGE_LIMIT_EXCEEDED = 'PAGE_LIMIT_EXCEEDED'
      TEXTRACT_ACCESS_DENIED = 'TEXTRACT_ACCESS_DENIED'
    end

    # <p>The request is invalid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   @return [String]
    # @!attribute detail
    #   <p>Provides additional detail about why the request failed.</p>
    #   @return [Types::InvalidRequestDetail]
    class InvalidRequestException < Struct.new(
      :message,
      :reason,
      :detail,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InvalidRequestReason
      INVALID_DOCUMENT = 'INVALID_DOCUMENT'
    end

    # <p>The specified job was not found. Check the job ID and try again.</p>
    # @!attribute message
    #   @return [String]
    class JobNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module JobStatus
      SUBMITTED = 'SUBMITTED'
      IN_PROGRESS = 'IN_PROGRESS'
      COMPLETED = 'COMPLETED'
      FAILED = 'FAILED'
      STOP_REQUESTED = 'STOP_REQUESTED'
      STOPPED = 'STOPPED'
    end

    # <p>Describes a key noun phrase.</p>
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #   @return [Float]
    # @!attribute text
    #   <p>The text of a key noun phrase.</p>
    #   @return [String]
    # @!attribute begin_offset
    #   <p>The zero-based offset from the beginning of the source text to the first character in the
    #         key phrase.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The zero-based offset from the beginning of the source text to the last character in the
    #         key phrase.</p>
    #   @return [Integer]
    class KeyPhrase < Struct.new(
      :score,
      :text,
      :begin_offset,
      :end_offset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the  operation.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class KeyPhrasesDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a key phrases detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the key phrases detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the key phrases detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned the key phrases detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the key phrases detection job. If the status is <code>FAILED</code>,
    #         the <code>Message</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the key phrases detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the key phrases detection job completed.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the key phrases detection
    #         job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the key phrases detection
    #         job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your key phrases detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
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
      :vpc_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The KMS customer managed key (CMK) entered cannot be validated. Verify the key and
    #       re-enter it.</p>
    # @!attribute message
    #   @return [String]
    class KmsKeyValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LanguageCode
      EN = 'en'
      ES = 'es'
      FR = 'fr'
      DE = 'de'
      IT = 'it'
      PT = 'pt'
      AR = 'ar'
      HI = 'hi'
      JA = 'ja'
      KO = 'ko'
      ZH = 'zh'
      ZH_TW = 'zh-TW'
    end

    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filters the datasets to be returned in the response.</p>
    #   @return [Types::DatasetFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return in a response. The default is 100.</p>
    #   @return [Integer]
    class ListDatasetsRequest < Struct.new(
      :flywheel_arn,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dataset_properties_list
    #   <p>The dataset properties list.</p>
    #   @return [Array<Types::DatasetProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListDatasetsResponse < Struct.new(
      :dataset_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their names, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::DocumentClassificationJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListDocumentClassificationJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classification_job_properties_list
    #   <p>A list containing the properties of each job returned.</p>
    #   @return [Array<Types::DocumentClassificationJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListDocumentClassificationJobsResponse < Struct.new(
      :document_classification_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    #   @return [Integer]
    class ListDocumentClassifierSummariesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classifier_summaries_list
    #   <p>The list of summaries of document classifiers.</p>
    #   @return [Array<Types::DocumentClassifierSummary>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListDocumentClassifierSummariesResponse < Struct.new(
      :document_classifier_summaries_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::DocumentClassifierFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListDocumentClassifiersRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classifier_properties_list
    #   <p>A list containing the properties of each job returned.</p>
    #   @return [Array<Types::DocumentClassifierProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListDocumentClassifiersResponse < Struct.new(
      :document_classifier_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters that jobs that are returned. You can filter jobs on their name, status, or the
    #         date and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::DominantLanguageDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListDominantLanguageDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute dominant_language_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::DominantLanguageDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListDominantLanguageDetectionJobsResponse < Struct.new(
      :dominant_language_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the endpoints that are returned. You can filter endpoints on their name, model,
    #         status, or the date and time that they were created. You can only set one filter at a time.
    #       </p>
    #   @return [Types::EndpointFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListEndpointsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_properties_list
    #   <p>Displays a list of endpoint properties being retrieved by the service in response to the
    #         request.</p>
    #   @return [Array<Types::EndpointProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListEndpointsResponse < Struct.new(
      :endpoint_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::EntitiesDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListEntitiesDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entities_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::EntitiesDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListEntitiesDetectionJobsResponse < Struct.new(
      :entities_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return on each page. The default is 100.</p>
    #   @return [Integer]
    class ListEntityRecognizerSummariesRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_recognizer_summaries_list
    #   <p>The list entity recognizer summaries.</p>
    #   @return [Array<Types::EntityRecognizerSummary>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListEntityRecognizerSummariesResponse < Struct.new(
      :entity_recognizer_summaries_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the list of entities returned. You can filter on <code>Status</code>,
    #           <code>SubmitTimeBefore</code>, or <code>SubmitTimeAfter</code>. You can only set one filter
    #         at a time.</p>
    #   @return [Types::EntityRecognizerFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return on each page. The default is 100.</p>
    #   @return [Integer]
    class ListEntityRecognizersRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_recognizer_properties_list
    #   <p>The list of properties of an entity recognizer.</p>
    #   @return [Array<Types::EntityRecognizerProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListEntityRecognizersResponse < Struct.new(
      :entity_recognizer_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::EventsDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page.</p>
    #   @return [Integer]
    class ListEventsDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute events_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::EventsDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListEventsDetectionJobsResponse < Struct.new(
      :events_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p>The ARN of the flywheel.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filter the flywheel iteration history based on creation time.</p>
    #   @return [Types::FlywheelIterationFilter]
    # @!attribute next_token
    #   <p>Next token</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of iteration history results to return</p>
    #   @return [Integer]
    class ListFlywheelIterationHistoryRequest < Struct.new(
      :flywheel_arn,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_iteration_properties_list
    #   <p>List of flywheel iteration properties</p>
    #   @return [Array<Types::FlywheelIterationProperties>]
    # @!attribute next_token
    #   <p>Next token</p>
    #   @return [String]
    class ListFlywheelIterationHistoryResponse < Struct.new(
      :flywheel_iteration_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the flywheels that are returned. You can filter flywheels on their status,
    #         or the date and time that they were submitted. You can only set one filter at a time.
    #       </p>
    #   @return [Types::FlywheelFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of results to return in a response. The default is 100.</p>
    #   @return [Integer]
    class ListFlywheelsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_summary_list
    #   <p>A list of flywheel properties retrieved by the service in response to the request.
    #          </p>
    #   @return [Array<Types::FlywheelSummary>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListFlywheelsResponse < Struct.new(
      :flywheel_summary_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::KeyPhrasesDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListKeyPhrasesDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute key_phrases_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::KeyPhrasesDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListKeyPhrasesDetectionJobsResponse < Struct.new(
      :key_phrases_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::PiiEntitiesDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page.</p>
    #   @return [Integer]
    class ListPiiEntitiesDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute pii_entities_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::PiiEntitiesDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListPiiEntitiesDetectionJobsResponse < Struct.new(
      :pii_entities_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::SentimentDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListSentimentDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute sentiment_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::SentimentDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListSentimentDetectionJobsResponse < Struct.new(
      :sentiment_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are querying.
    #       </p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource you are
    #         querying.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags associated with the Amazon Comprehend resource being queried. A tag is a key-value
    #         pair that adds as a metadata to a resource used by Amazon Comprehend. For example, a tag with
    #         "Sales" as the key might be added to a resource to indicate its use by the sales department.
    #       </p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. You can filter jobs on their name, status, or the date
    #         and time that they were submitted. You can only set one filter at a time.</p>
    #   @return [Types::TargetedSentimentDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListTargetedSentimentDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute targeted_sentiment_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::TargetedSentimentDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListTargetedSentimentDetectionJobsResponse < Struct.new(
      :targeted_sentiment_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filter
    #   <p>Filters the jobs that are returned. Jobs can be filtered on their name, status, or the
    #         date and time that they were submitted. You can set only one filter at a time.</p>
    #   @return [Types::TopicsDetectionJobFilter]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in each page. The default is 100.</p>
    #   @return [Integer]
    class ListTopicsDetectionJobsRequest < Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute topics_detection_job_properties_list
    #   <p>A list containing the properties of each job that is returned.</p>
    #   @return [Array<Types::TopicsDetectionJobProperties>]
    # @!attribute next_token
    #   <p>Identifies the next page of results to return.</p>
    #   @return [String]
    class ListTopicsDetectionJobsResponse < Struct.new(
      :topics_detection_job_properties_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains the sentiment and sentiment score for one mention of an entity.</p>
    #          <p>For more information about targeted sentiment, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html">Targeted sentiment</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @!attribute sentiment
    #   <p>The sentiment of the mention. </p>
    #   @return [String]
    # @!attribute sentiment_score
    #   <p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its
    #         detection of sentiments.</p>
    #   @return [Types::SentimentScore]
    class MentionSentiment < Struct.new(
      :sentiment,
      :sentiment_score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ModelStatus
      SUBMITTED = 'SUBMITTED'
      TRAINING = 'TRAINING'
      DELETING = 'DELETING'
      STOP_REQUESTED = 'STOP_REQUESTED'
      STOPPED = 'STOPPED'
      IN_ERROR = 'IN_ERROR'
      TRAINED = 'TRAINED'
      TRAINED_WITH_WARNING = 'TRAINED_WITH_WARNING'
    end

    module ModelType
      DOCUMENT_CLASSIFIER = 'DOCUMENT_CLASSIFIER'
      ENTITY_RECOGNIZER = 'ENTITY_RECOGNIZER'
    end

    # <p>Provides configuration parameters for the output of inference jobs.</p>
    #          <p></p>
    # @!attribute s3_uri
    #   <p>When you use the <code>OutputDataConfig</code> object with asynchronous operations, you
    #         specify the Amazon S3 location where you want to write the output data. The URI must be in the
    #         same Region as the API endpoint that you are calling. The location is used as the prefix for
    #         the actual location of the output file.</p>
    #            <p>When the topic detection job is finished, the service creates an output file in a
    #         directory specific to the job. The <code>S3Uri</code> field contains the location of the
    #         output file, called <code>output.tar.gz</code>. It is a compressed archive that contains the
    #         ouput of the operation.</p>
    #            <p>
    #         For a PII entity detection job, the output file is plain text, not a compressed archive.
    #         The output file name is the same as the input file, with <code>.out</code> appended at the end.
    #       </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
    #         output results from an analysis job. Specify the Key Id of a symmetric key, because you cannot use an asymmetric
    #          key for uploading data to S3.</p>
    #            <p>The KmsKeyId can be one of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>KMS Key Alias: <code>"alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ARN of a KMS Key Alias:
    #               <code>"arn:aws:kms:us-west-2:111122223333:alias/ExampleAlias"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class OutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PageBasedErrorCode
      TEXTRACT_BAD_PAGE = 'TEXTRACT_BAD_PAGE'
      TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED = 'TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED'
      PAGE_CHARACTERS_EXCEEDED = 'PAGE_CHARACTERS_EXCEEDED'
      PAGE_SIZE_EXCEEDED = 'PAGE_SIZE_EXCEEDED'
      INTERNAL_SERVER_ERROR = 'INTERNAL_SERVER_ERROR'
    end

    module PageBasedWarningCode
      INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL = 'INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL'
      INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL = 'INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL'
    end

    # <p>Identifies the part of speech represented by the token and gives the confidence that
    #       Amazon Comprehend has that the part of speech was correctly identified. For more information
    #       about the parts of speech that Amazon Comprehend can identify, see
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html">Syntax</a> in the Comprehend Developer Guide.
    #        </p>
    # @!attribute tag
    #   <p>Identifies the part of speech that the token represents.</p>
    #   @return [String]
    # @!attribute score
    #   <p>The confidence that Amazon Comprehend has that the part of speech was correctly
    #         identified.</p>
    #   @return [Float]
    class PartOfSpeechTag < Struct.new(
      :tag,
      :score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PartOfSpeechTagType
      ADJ = 'ADJ'
      ADP = 'ADP'
      ADV = 'ADV'
      AUX = 'AUX'
      CONJ = 'CONJ'
      CCONJ = 'CCONJ'
      DET = 'DET'
      INTJ = 'INTJ'
      NOUN = 'NOUN'
      NUM = 'NUM'
      O = 'O'
      PART = 'PART'
      PRON = 'PRON'
      PROPN = 'PROPN'
      PUNCT = 'PUNCT'
      SCONJ = 'SCONJ'
      SYM = 'SYM'
      VERB = 'VERB'
    end

    # <p>Provides information for filtering a list of PII entity detection jobs.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class PiiEntitiesDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a PII entities detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the PII entities detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the PII entities detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned the PII entities detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the PII entities detection job. If the status is
    #         <code>FAILED</code>, the <code>Message</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the PII entities detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the PII entities detection job completed.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input properties for a PII entities detection job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the PII entities
    #         detection job.</p>
    #   @return [Types::PiiOutputDataConfig]
    # @!attribute redaction_config
    #   <p>Provides configuration parameters for PII entity redaction.</p>
    #            <p>This parameter is required if you set the <code>Mode</code> parameter to
    #           <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
    #         definition that includes the <code>PiiEntityTypes</code> parameter.</p>
    #   @return [Types::RedactionConfig]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
    #         which PII entities are redacted.</p>
    #   @return [String]
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
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PiiEntitiesDetectionMaskMode
      MASK = 'MASK'
      REPLACE_WITH_PII_ENTITY_TYPE = 'REPLACE_WITH_PII_ENTITY_TYPE'
    end

    module PiiEntitiesDetectionMode
      ONLY_REDACTION = 'ONLY_REDACTION'
      ONLY_OFFSETS = 'ONLY_OFFSETS'
    end

    # <p>Provides information about a PII entity.</p>
    # @!attribute score
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of the
    #         detection.</p>
    #   @return [Float]
    # @!attribute type
    #   <p>The entity's type.</p>
    #   @return [String]
    # @!attribute begin_offset
    #   <p>The zero-based offset from the beginning of the source text to the first character in the
    #         entity.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The zero-based offset from the beginning of the source text to the last character in the
    #         entity.</p>
    #   @return [Integer]
    class PiiEntity < Struct.new(
      :score,
      :type,
      :begin_offset,
      :end_offset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PiiEntityType
      BANK_ACCOUNT_NUMBER = 'BANK_ACCOUNT_NUMBER'
      BANK_ROUTING = 'BANK_ROUTING'
      CREDIT_DEBIT_NUMBER = 'CREDIT_DEBIT_NUMBER'
      CREDIT_DEBIT_CVV = 'CREDIT_DEBIT_CVV'
      CREDIT_DEBIT_EXPIRY = 'CREDIT_DEBIT_EXPIRY'
      PIN = 'PIN'
      EMAIL = 'EMAIL'
      ADDRESS = 'ADDRESS'
      NAME = 'NAME'
      PHONE = 'PHONE'
      SSN = 'SSN'
      DATE_TIME = 'DATE_TIME'
      PASSPORT_NUMBER = 'PASSPORT_NUMBER'
      DRIVER_ID = 'DRIVER_ID'
      URL = 'URL'
      AGE = 'AGE'
      USERNAME = 'USERNAME'
      PASSWORD = 'PASSWORD'
      AWS_ACCESS_KEY = 'AWS_ACCESS_KEY'
      AWS_SECRET_KEY = 'AWS_SECRET_KEY'
      IP_ADDRESS = 'IP_ADDRESS'
      MAC_ADDRESS = 'MAC_ADDRESS'
      ALL = 'ALL'
      LICENSE_PLATE = 'LICENSE_PLATE'
      VEHICLE_IDENTIFICATION_NUMBER = 'VEHICLE_IDENTIFICATION_NUMBER'
      UK_NATIONAL_INSURANCE_NUMBER = 'UK_NATIONAL_INSURANCE_NUMBER'
      CA_SOCIAL_INSURANCE_NUMBER = 'CA_SOCIAL_INSURANCE_NUMBER'
      US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER = 'US_INDIVIDUAL_TAX_IDENTIFICATION_NUMBER'
      UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER = 'UK_UNIQUE_TAXPAYER_REFERENCE_NUMBER'
      IN_PERMANENT_ACCOUNT_NUMBER = 'IN_PERMANENT_ACCOUNT_NUMBER'
      IN_NREGA = 'IN_NREGA'
      INTERNATIONAL_BANK_ACCOUNT_NUMBER = 'INTERNATIONAL_BANK_ACCOUNT_NUMBER'
      SWIFT_CODE = 'SWIFT_CODE'
      UK_NATIONAL_HEALTH_SERVICE_NUMBER = 'UK_NATIONAL_HEALTH_SERVICE_NUMBER'
      CA_HEALTH_NUMBER = 'CA_HEALTH_NUMBER'
      IN_AADHAAR = 'IN_AADHAAR'
      IN_VOTER_NUMBER = 'IN_VOTER_NUMBER'
    end

    # <p>Provides configuration parameters for the output of PII entity detection jobs.</p>
    # @!attribute s3_uri
    #   <p>When you use the <code>PiiOutputDataConfig</code> object with asynchronous operations,
    #         you specify the Amazon S3 location where you want to write the output data. </p>
    #            <p>
    #         For a PII entity detection job, the output file is plain text, not a compressed archive.
    #         The output file name is the same as the input file, with <code>.out</code> appended at the end.
    #       </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt the
    #         output results from an analysis job.</p>
    #   @return [String]
    class PiiOutputDataConfig < Struct.new(
      :s3_uri,
      :kms_key_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The X and Y coordinates of a point on a document page.</p>
    #          <p>For additional information, see <a href="https://docs.aws.amazon.com/textract/latest/dg/API_Point.html">Point</a> in the Amazon Textract API reference.</p>
    # @!attribute x
    #   <p>The value of the X coordinate for a point on a polygon</p>
    #   @return [Float]
    # @!attribute y
    #   <p>The value of the Y coordinate for a point on a polygon</p>
    #   @return [Float]
    class Point < Struct.new(
      :x,
      :y,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the custom model to attach the policy to.</p>
    #   @return [String]
    # @!attribute resource_policy
    #   <p>The JSON resource-based policy to attach to your custom model. Provide your JSON as a
    #         UTF-8 encoded string without line breaks. To provide valid JSON for your policy, enclose the
    #         attribute names and values in double quotes. If the JSON body is also enclosed in double
    #         quotes, then you must escape the double quotes that are inside the policy:</p>
    #            <p>
    #               <code>"{\"attribute\": \"value\", \"attribute\": [\"value\"]}"</code>
    #            </p>
    #            <p>To avoid escaping quotes, you can use single quotes to enclose the policy and double
    #         quotes to enclose the JSON names and values:</p>
    #            <p>
    #               <code>'{"attribute": "value", "attribute": ["value"]}'</code>
    #            </p>
    #   @return [String]
    # @!attribute policy_revision_id
    #   <p>The revision ID that Amazon Comprehend assigned to the policy that you are updating. If
    #         you are creating a new policy that has no prior version, don't use this parameter. Amazon
    #         Comprehend creates the revision ID for you.</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :resource_policy,
      :policy_revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy_revision_id
    #   <p>The revision ID of the policy. Each time you modify a policy, Amazon Comprehend assigns a
    #         new revision ID, and it deletes the prior version of the policy.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      :policy_revision_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides configuration parameters for PII entity redaction.</p>
    # @!attribute pii_entity_types
    #   <p>An array of the types of PII entities that Amazon Comprehend detects in the input text for
    #         your request.</p>
    #   @return [Array<String>]
    # @!attribute mask_mode
    #   <p>Specifies whether the PII entity is redacted with the mask character or the entity
    #         type.</p>
    #   @return [String]
    # @!attribute mask_character
    #   <p>A character that replaces each character in the redacted PII entity.</p>
    #   @return [String]
    class RedactionConfig < Struct.new(
      :pii_entity_types,
      :mask_mode,
      :mask_character,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RelationshipType
      CHILD = 'CHILD'
    end

    # <p>List of child blocks for the current block.</p>
    # @!attribute ids
    #   <p>Identifers of the child blocks.</p>
    #   @return [Array<String>]
    # @!attribute type
    #   <p>Only supported relationship is a child relationship.</p>
    #   @return [String]
    class RelationshipsListItem < Struct.new(
      :ids,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource name is already in use. Use a different name and try your request
    #       again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The maximum number of resources per account has been exceeded. Review the resources, and
    #       then try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource ARN was not found. Check the ARN and try your request again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified resource is not available. Check the resource and try your request
    #       again.</p>
    # @!attribute message
    #   @return [String]
    class ResourceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the  operation.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class SentimentDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a sentiment detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the sentiment detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned to the sentiment detection job</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the sentiment detection job. If the status is <code>FAILED</code>,
    #         the <code>Messages</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the sentiment detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the sentiment detection job ended.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data configuration that you supplied when you created the sentiment detection
    #         job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration that you supplied when you created the sentiment detection
    #         job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your sentiment detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
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
      :vpc_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes the level of confidence that Amazon Comprehend has in the accuracy of its
    #       detection of sentiments.</p>
    # @!attribute positive
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>POSITIVE</code> sentiment.</p>
    #   @return [Float]
    # @!attribute negative
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>NEGATIVE</code> sentiment.</p>
    #   @return [Float]
    # @!attribute neutral
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>NEUTRAL</code> sentiment.</p>
    #   @return [Float]
    # @!attribute mixed
    #   <p>The level of confidence that Amazon Comprehend has in the accuracy of its detection of
    #         the <code>MIXED</code> sentiment.</p>
    #   @return [Float]
    class SentimentScore < Struct.new(
      :positive,
      :negative,
      :neutral,
      :mixed,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SentimentType
      POSITIVE = 'POSITIVE'
      NEGATIVE = 'NEGATIVE'
      NEUTRAL = 'NEUTRAL'
      MIXED = 'MIXED'
    end

    module Split
      TRAIN = 'TRAIN'
      TEST = 'TEST'
    end

    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) of the document classifier to use to process the
    #         job.</p>
    #   @return [String]
    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your document classification job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>Tags to associate with the document classification job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel associated with the model to use.</p>
    #   @return [String]
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
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of the job, use this identifier
    #         with the <code>DescribeDocumentClassificationJob</code> operation.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the document classification job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:document-classification-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job:</p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. For details, use the 
    #             <code>DescribeDocumentClassificationJob</code> operation.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is
    #             processing the request.</p>
    #               </li>
    #               <li>
    #                  <p>STOPPED - The job was successfully stopped without completing.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute document_classifier_arn
    #   <p>The ARN of the custom classification model.</p>
    #   @return [String]
    class StartDocumentClassificationJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      :document_classifier_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>An identifier for the job.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your dominant language detection job. For more information,
    #         see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>Tags to associate with the dominant language detection job. A tag is a key-value pair
    #         that adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as
    #         the key might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    class StartDominantLanguageDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the  operation.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the dominant language detection job. It is a unique,
    #         fully qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID.
    #         The format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:dominant-language-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:dominant-language-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StartDominantLanguageDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the specific entity recognizer to be used
    #         by the <code>StartEntitiesDetectionJob</code>. This ARN is optional and is only used for a
    #         custom entity recognition job.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. All documents must be in the same language. You can
    #         specify any of the languages supported by Amazon Comprehend. If custom entities recognition is
    #         used, this parameter is ignored and the language used for training the model is used
    #         instead.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your entity detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>Tags to associate with the entities detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel associated with the model to use.</p>
    #   @return [String]
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
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of job, use this identifier with
    #         the  operation.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the entities detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #               <li>
    #                  <p>STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is
    #             processing the request.</p>
    #               </li>
    #               <li>
    #                  <p>STOPPED - The job was successfully stopped without completing.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute entity_recognizer_arn
    #   <p>The ARN of the custom entity recognition model.</p>
    #   @return [String]
    class StartEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      :entity_recognizer_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the events detection job.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>An unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute target_event_types
    #   <p>The types of events to detect in the input documents.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Tags to associate with the events detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    class StartEventsDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :target_event_types,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>An unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the events detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:events-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:events-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the events detection job.</p>
    #   @return [String]
    class StartEventsDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p>The ARN of the flywheel.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    class StartFlywheelIterationRequest < Struct.new(
      :flywheel_arn,
      :client_request_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p></p>
    #   @return [String]
    # @!attribute flywheel_iteration_id
    #   <p></p>
    #   @return [String]
    class StartFlywheelIterationResponse < Struct.new(
      :flywheel_arn,
      :flywheel_iteration_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your key phrases detection job. For more information, see
    #         <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>Tags to associate with the key phrases detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    class StartKeyPhrasesDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the  operation.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the key phrase detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:key-phrases-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:key-phrases-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StartKeyPhrasesDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>The input properties for a PII entities detection job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Provides conﬁguration parameters for the output of PII entity detection jobs.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute mode
    #   <p>Specifies whether the output provides the locations (offsets) of PII entities or a file in
    #         which PII entities are redacted.</p>
    #   @return [String]
    # @!attribute redaction_config
    #   <p>Provides configuration parameters for PII entity redaction.</p>
    #            <p>This parameter is required if you set the <code>Mode</code> parameter to
    #           <code>ONLY_REDACTION</code>. In that case, you must provide a <code>RedactionConfig</code>
    #         definition that includes the <code>PiiEntityTypes</code> parameter.</p>
    #   @return [Types::RedactionConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. 
    #         Enter the language code for English (en) or Spanish (es).</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags to associate with the PII entities detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    class StartPiiEntitiesDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :mode,
      :redaction_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the PII entity detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:pii-entities-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:pii-entities-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job.</p>
    #   @return [String]
    class StartPiiEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files. </p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. You can specify any of the primary languages
    #         supported by Amazon Comprehend. All documents must be in the same language.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your sentiment detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>Tags to associate with the sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    class StartSentimentDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the  operation.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the  operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StartSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>The input properties for an inference job. The document reader config field applies
    #         only to non-text inputs for custom analysis.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files. </p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute language_code
    #   <p>The language of the input documents. Currently, English is the only supported language.</p>
    #   @return [String]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you don't set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #             <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>Tags to associate with the targeted sentiment detection job. A tag is a key-value pair that
    #         adds metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the
    #         key might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    class StartTargetedSentimentDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :language_code,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of a job, use this identifier with
    #         the <code>DescribeTargetedSentimentDetectionJob</code> operation.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job. </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the 
    #             <code>DescribeTargetedSentimentDetectionJob</code> operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StartTargetedSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute input_data_config
    #   <p>Specifies the format and location of the input data for the job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Specifies where to send the output files. The output is a compressed archive with two
    #         files, <code>topic-terms.csv</code> that lists the terms associated with each topic, and
    #           <code>doc-topics.csv</code> that lists the documents associated with each topic</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data. For more information, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based permissions</a>.</p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The identifier of the job.</p>
    #   @return [String]
    # @!attribute number_of_topics
    #   <p>The number of topics to detect.</p>
    #   @return [Integer]
    # @!attribute client_request_token
    #   <p>A unique identifier for the request. If you do not set the client request token, Amazon
    #         Comprehend generates one.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for your topic detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    # @!attribute tags
    #   <p>Tags to associate with the topics detection job. A tag is a key-value pair that adds
    #         metadata to a resource used by Amazon Comprehend. For example, a tag with "Sales" as the key
    #         might be added to a resource to indicate its use by the sales department.</p>
    #   @return [Array<Types::Tag>]
    class StartTopicsDetectionJobRequest < Struct.new(
      :input_data_config,
      :output_data_config,
      :data_access_role_arn,
      :job_name,
      :number_of_topics,
      :client_request_token,
      :volume_kms_key_id,
      :vpc_config,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier generated for the job. To get the status of the job, use this identifier
    #         with the <code>DescribeTopicDetectionJob</code> operation.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:document-classification-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the job: </p>
    #            <ul>
    #               <li>
    #                  <p>SUBMITTED - The job has been received and is queued for processing.</p>
    #               </li>
    #               <li>
    #                  <p>IN_PROGRESS - Amazon Comprehend is processing the job.</p>
    #               </li>
    #               <li>
    #                  <p>COMPLETED - The job was successfully completed and the output is
    #             available.</p>
    #               </li>
    #               <li>
    #                  <p>FAILED - The job did not complete. To get details, use the
    #               <code>DescribeTopicDetectionJob</code> operation.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class StartTopicsDetectionJobResponse < Struct.new(
      :job_id,
      :job_arn,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the dominant language detection job to stop.</p>
    #   @return [String]
    class StopDominantLanguageDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the dominant language detection job to stop.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopDominantLanguageDetectionJob</code> operation.</p>
    #   @return [String]
    class StopDominantLanguageDetectionJobResponse < Struct.new(
      :job_id,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the entities detection job to stop.</p>
    #   @return [String]
    class StopEntitiesDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the entities detection job to stop.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopEntitiesDetectionJob</code> operation.</p>
    #   @return [String]
    class StopEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the events detection job to stop.</p>
    #   @return [String]
    class StopEventsDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the events detection job to stop.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the events detection job.</p>
    #   @return [String]
    class StopEventsDetectionJobResponse < Struct.new(
      :job_id,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the key phrases detection job to stop.</p>
    #   @return [String]
    class StopKeyPhrasesDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the key phrases detection job to stop.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopKeyPhrasesDetectionJob</code> operation.</p>
    #   @return [String]
    class StopKeyPhrasesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the PII entities detection job to stop.</p>
    #   @return [String]
    class StopPiiEntitiesDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the PII entities detection job to stop.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The status of the PII entities detection job.</p>
    #   @return [String]
    class StopPiiEntitiesDetectionJobResponse < Struct.new(
      :job_id,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the sentiment detection job to stop.</p>
    #   @return [String]
    class StopSentimentDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the sentiment detection job to stop.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #           <code>STOPPED</code> if the job was previously stopped with the
    #           <code>StopSentimentDetectionJob</code> operation.</p>
    #   @return [String]
    class StopSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the targeted sentiment detection job to stop.</p>
    #   @return [String]
    class StopTargetedSentimentDetectionJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the targeted sentiment detection job to stop.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Either <code>STOP_REQUESTED</code> if the job is currently running, or
    #         <code>STOPPED</code> if the job was previously stopped with the
    #         <code>StopSentimentDetectionJob</code> operation.</p>
    #   @return [String]
    class StopTargetedSentimentDetectionJobResponse < Struct.new(
      :job_id,
      :job_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute document_classifier_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the document classifier currently being
    #         trained.</p>
    #   @return [String]
    class StopTrainingDocumentClassifierRequest < Struct.new(
      :document_classifier_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopTrainingDocumentClassifierResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entity_recognizer_arn
    #   <p>The Amazon Resource Name (ARN) that identifies the entity recognizer currently being
    #         trained.</p>
    #   @return [String]
    class StopTrainingEntityRecognizerRequest < Struct.new(
      :entity_recognizer_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopTrainingEntityRecognizerResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SyntaxLanguageCode
      EN = 'en'
      ES = 'es'
      FR = 'fr'
      DE = 'de'
      IT = 'it'
      PT = 'pt'
    end

    # <p>Represents a work in the input text that was recognized and assigned a part of speech.
    #       There is one syntax token record for each word in the source text.</p>
    # @!attribute token_id
    #   <p>A unique identifier for a token.</p>
    #   @return [Integer]
    # @!attribute text
    #   <p>The word that was recognized in the source text.</p>
    #   @return [String]
    # @!attribute begin_offset
    #   <p>The zero-based offset from the beginning of the source text to the first character in the
    #         word.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The zero-based offset from the beginning of the source text to the last character in the
    #         word.</p>
    #   @return [Integer]
    # @!attribute part_of_speech
    #   <p>Provides the part of speech label and the confidence level that Amazon Comprehend has that
    #         the part of speech was correctly identified. For more information, see
    #         <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html">Syntax</a> in the Comprehend Developer Guide.
    #       </p>
    #   @return [Types::PartOfSpeechTag]
    class SyntaxToken < Struct.new(
      :token_id,
      :text,
      :begin_offset,
      :end_offset,
      :part_of_speech,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A key-value pair that adds as a metadata to a resource used by Amazon Comprehend. For
    #       example, a tag with the key-value pair ‘Department’:’Sales’ might be added to a resource to
    #       indicate its use by a particular department. </p>
    # @!attribute key
    #   <p>The initial part of a key-value pair that forms a tag associated with a given resource.
    #         For instance, if you want to show which resources are used by which departments, you might use
    #         “Department” as the key portion of the pair, with multiple possible values such as “sales,”
    #         “legal,” and “administration.” </p>
    #   @return [String]
    # @!attribute value
    #   <p> The second part of a key-value pair that forms a tag associated with a given resource.
    #         For instance, if you want to show which resources are used by which departments, you might use
    #         “Department” as the initial (key) portion of the pair, with a value of “sales” to indicate the
    #         sales department. </p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the given Amazon Comprehend resource to which you want
    #         to associate the tags. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags being associated with a specific Amazon Comprehend resource. There can be a maximum
    #         of 50 tags (both existing and pending) associated with a specific resource. </p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering a list of dominant language detection jobs. For more
    #       information, see the <code>ListTargetedSentimentDetectionJobs</code> operation.</p>
    # @!attribute job_name
    #   <p>Filters on the name of the job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of jobs based on job status. Returns only jobs with the specified
    #         status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted before the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Returns only jobs submitted after the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    class TargetedSentimentDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a targeted sentiment detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the targeted sentiment detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the targeted sentiment detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:targeted-sentiment-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:targeted-sentiment-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name that you assigned to the targeted sentiment detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the targeted sentiment detection job. If the status is <code>FAILED</code>,
    #         the <code>Messages</code> field shows the reason for the failure.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description of the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the targeted sentiment detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the targeted sentiment detection job ended.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input properties for an inference job. The document reader config field applies
    #         only to non-text inputs for custom analysis.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>Provides configuration parameters for the output of inference jobs.</p>
    #            <p></p>
    #   @return [Types::OutputDataConfig]
    # @!attribute language_code
    #   <p>The language code of the input documents.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your input data.</p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt the
    #         data on the storage volume attached to the ML compute instance(s) that process the
    #         targeted sentiment detection job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #             <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
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
      :vpc_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about one of the entities found by targeted sentiment analysis.</p>
    #          <p>For more information about targeted sentiment, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html">Targeted sentiment</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @!attribute descriptive_mention_index
    #   <p>One or more index into the Mentions array that provides the best name for the entity group.</p>
    #   @return [Array<Integer>]
    # @!attribute mentions
    #   <p>An array of mentions of the entity in the document. The array represents a co-reference group.
    #         See <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html#how-targeted-sentiment-values">
    #           Co-reference group</a> for an example. </p>
    #   @return [Array<Types::TargetedSentimentMention>]
    class TargetedSentimentEntity < Struct.new(
      :descriptive_mention_index,
      :mentions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetedSentimentEntityType
      PERSON = 'PERSON'
      LOCATION = 'LOCATION'
      ORGANIZATION = 'ORGANIZATION'
      FACILITY = 'FACILITY'
      BRAND = 'BRAND'
      COMMERCIAL_ITEM = 'COMMERCIAL_ITEM'
      MOVIE = 'MOVIE'
      MUSIC = 'MUSIC'
      BOOK = 'BOOK'
      SOFTWARE = 'SOFTWARE'
      GAME = 'GAME'
      PERSONAL_TITLE = 'PERSONAL_TITLE'
      EVENT = 'EVENT'
      DATE = 'DATE'
      QUANTITY = 'QUANTITY'
      ATTRIBUTE = 'ATTRIBUTE'
      OTHER = 'OTHER'
    end

    # <p>Information about one mention of an entity. The mention information includes the location of the mention
    #       in the text and the sentiment of the mention.</p>
    #          <p>For more information about targeted sentiment, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html">Targeted sentiment</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @!attribute score
    #   <p>Model confidence that the entity is relevant. Value range is zero to one, where one is highest confidence.</p>
    #   @return [Float]
    # @!attribute group_score
    #   <p>The confidence that all the entities mentioned in the group relate to the same entity.</p>
    #   @return [Float]
    # @!attribute text
    #   <p>The text in the document that identifies the entity.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the entity. Amazon Comprehend supports a variety of <a href="https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html#how-targeted-sentiment-entities">entity types</a>.</p>
    #   @return [String]
    # @!attribute mention_sentiment
    #   <p>Contains the sentiment and sentiment score for the mention.</p>
    #   @return [Types::MentionSentiment]
    # @!attribute begin_offset
    #   <p>The offset into the document text where the mention begins.</p>
    #   @return [Integer]
    # @!attribute end_offset
    #   <p>The offset into the document text where the mention ends.</p>
    #   @return [Integer]
    class TargetedSentimentMention < Struct.new(
      :score,
      :group_score,
      :text,
      :type,
      :mention_sentiment,
      :begin_offset,
      :end_offset,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configuration about the model associated with a flywheel.</p>
    # @!attribute language_code
    #   <p>Language code for the language that the model supports.</p>
    #   @return [String]
    # @!attribute document_classification_config
    #   <p>Configuration required for a document classification model.</p>
    #   @return [Types::DocumentClassificationConfig]
    # @!attribute entity_recognition_config
    #   <p>Configuration required for an entity recognition model.</p>
    #   @return [Types::EntityRecognitionConfig]
    class TaskConfig < Struct.new(
      :language_code,
      :document_classification_config,
      :entity_recognition_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>One of the of text strings. Each string has a size limit of 1KB.</p>
    # @!attribute text
    #   <p>The text content.</p>
    #   @return [String]
    class TextSegment < Struct.new(
      :text,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The size of the input text exceeds the limit. Use a smaller document.</p>
    # @!attribute message
    #   @return [String]
    class TextSizeLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The number of requests exceeds the limit. Resubmit your request later.</p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request contains more tag keys than can be associated with a resource (50 tag keys per
    #       resource).</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagKeysException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request contains more tags than can be associated with a resource (50 tags per
    #       resource). The maximum number of tags includes both existing tags and those included in your
    #       current request. </p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information for filtering topic detection jobs. For more information, see
    #         .</p>
    # @!attribute job_name
    #   <p></p>
    #   @return [String]
    # @!attribute job_status
    #   <p>Filters the list of topic detection jobs based on job status. Returns only jobs with
    #         the specified status.</p>
    #   @return [String]
    # @!attribute submit_time_before
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Only returns jobs submitted before the specified time. Jobs are returned in descending order,
    #         newest to oldest.</p>
    #   @return [Time]
    # @!attribute submit_time_after
    #   <p>Filters the list of jobs based on the time that the job was submitted for processing.
    #         Only returns jobs submitted after the specified time. Jobs are returned in ascending order,
    #         oldest to newest.</p>
    #   @return [Time]
    class TopicsDetectionJobFilter < Struct.new(
      :job_name,
      :job_status,
      :submit_time_before,
      :submit_time_after,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a topic detection job.</p>
    # @!attribute job_id
    #   <p>The identifier assigned to the topic detection job.</p>
    #   @return [String]
    # @!attribute job_arn
    #   <p>The Amazon Resource Name (ARN) of the topics detection job. It is a unique, fully
    #         qualified identifier for the job. It includes the Amazon Web Services account, Amazon Web Services Region, and the job ID. The
    #         format of the ARN is as follows:</p>
    #            <p>
    #               <code>arn:<partition>:comprehend:<region>:<account-id>:topics-detection-job/<job-id></code>
    #            </p>
    #            <p>The following is an example job ARN:</p>
    #            <p>
    #               <code>arn:aws:comprehend:us-west-2:111122223333:topics-detection-job/1234abcd12ab34cd56ef1234567890ab</code>
    #            </p>
    #   @return [String]
    # @!attribute job_name
    #   <p>The name of the topic detection job.</p>
    #   @return [String]
    # @!attribute job_status
    #   <p>The current status of the topic detection job. If the status is <code>Failed</code>,
    #         the reason for the failure is shown in the <code>Message</code> field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A description for the status of a job.</p>
    #   @return [String]
    # @!attribute submit_time
    #   <p>The time that the topic detection job was submitted for processing.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The time that the topic detection job was completed.</p>
    #   @return [Time]
    # @!attribute input_data_config
    #   <p>The input data configuration supplied when you created the topic detection
    #         job.</p>
    #   @return [Types::InputDataConfig]
    # @!attribute output_data_config
    #   <p>The output data configuration supplied when you created the topic detection
    #         job.</p>
    #   @return [Types::OutputDataConfig]
    # @!attribute number_of_topics
    #   <p>The number of topics to detect supplied when you created the topic detection job. The
    #         default is 10. </p>
    #   @return [Integer]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend read access to your job data. </p>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the Amazon Web Services Key Management Service (KMS) key that Amazon Comprehend uses to encrypt
    #         data on the storage volume attached to the ML compute instance(s) that process the analysis
    #         job. The VolumeKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute vpc_config
    #   <p>Configuration parameters for a private Virtual Private Cloud (VPC) containing the
    #         resources you are using for your topic detection job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
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
      :vpc_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Toxic content analysis result for one string. For more information about toxicity detection, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html">Toxicity detection</a> in the <i>Amazon Comprehend Developer Guide</i>
    #          </p>
    # @!attribute name
    #   <p>The name of the toxic content type.</p>
    #   @return [String]
    # @!attribute score
    #   <p> 
    #         Model confidence in the detected content type. Value range is zero to one, where one is highest confidence.</p>
    #   @return [Float]
    class ToxicContent < Struct.new(
      :name,
      :score,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ToxicContentType
      GRAPHIC = 'GRAPHIC'
      HARASSMENT_OR_ABUSE = 'HARASSMENT_OR_ABUSE'
      HATE_SPEECH = 'HATE_SPEECH'
      INSULT = 'INSULT'
      PROFANITY = 'PROFANITY'
      SEXUAL = 'SEXUAL'
      VIOLENCE_OR_THREAT = 'VIOLENCE_OR_THREAT'
    end

    # <p>Toxicity analysis result for one string. For more information about toxicity detection, see <a href="https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html">Toxicity detection</a> in the <i>Amazon Comprehend Developer Guide</i>.</p>
    # @!attribute labels
    #   <p>Array of toxic content types identified in the string.</p>
    #   @return [Array<Types::ToxicContent>]
    # @!attribute toxicity
    #   <p>Overall toxicity score for the string. Value range is zero to one, where one is the highest confidence.</p>
    #   @return [Float]
    class ToxicLabels < Struct.new(
      :labels,
      :toxicity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Amazon Comprehend can't process the language of the input text. For a list of supported languages,
    #       <a href="https://docs.aws.amazon.com/comprehend/latest/dg/supported-languages.html">Supported languages</a> in the Comprehend Developer Guide.
    #     </p>
    # @!attribute message
    #   @return [String]
    class UnsupportedLanguageException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the given Amazon Comprehend resource from which you
    #         want to remove the tags. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The initial part of a key-value pair that forms a tag being removed from a given resource.
    #         For example, a tag with "Sales" as the key might be added to a resource to indicate its use by
    #         the sales department. Keys must be unique and cannot be duplicated for a particular resource.
    #       </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Data security configuration.</p>
    # @!attribute model_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt
    #         trained custom models. The ModelKmsKeyId can be either of the following formats:</p>
    #            <ul>
    #               <li>
    #                  <p>KMS Key ID: <code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Resource Name (ARN) of a KMS Key:
    #               <code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute volume_kms_key_id
    #   <p>ID for the KMS key that Amazon Comprehend uses to encrypt the volume.</p>
    #   @return [String]
    # @!attribute vpc_config
    #   <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #         the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #           VPC</a>. </p>
    #   @return [Types::VpcConfig]
    class UpdateDataSecurityConfig < Struct.new(
      :model_kms_key_id,
      :volume_kms_key_id,
      :vpc_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Number (ARN) of the endpoint being updated.</p>
    #   @return [String]
    # @!attribute desired_model_arn
    #   <p>The ARN of the new model to use when updating an existing endpoint.</p>
    #   @return [String]
    # @!attribute desired_inference_units
    #   <p> The desired number of inference units to be used by the model using this endpoint.
    #         
    #         Each inference unit represents of a throughput of 100 characters per second.</p>
    #   @return [Integer]
    # @!attribute desired_data_access_role_arn
    #   <p>Data access role ARN to use in case the new model is encrypted with a customer CMK.</p>
    #   @return [String]
    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel</p>
    #   @return [String]
    class UpdateEndpointRequest < Struct.new(
      :endpoint_arn,
      :desired_model_arn,
      :desired_inference_units,
      :desired_data_access_role_arn,
      :flywheel_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute desired_model_arn
    #   <p>The Amazon Resource Number (ARN) of the new model.</p>
    #   @return [String]
    class UpdateEndpointResponse < Struct.new(
      :desired_model_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_arn
    #   <p>The Amazon Resource Number (ARN) of the flywheel to update.</p>
    #   @return [String]
    # @!attribute active_model_arn
    #   <p>The Amazon Resource Number (ARN) of the active model version.</p>
    #   @return [String]
    # @!attribute data_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that
    #         grants Amazon Comprehend permission to access the flywheel data.</p>
    #   @return [String]
    # @!attribute data_security_config
    #   <p>Flywheel data security configuration.</p>
    #   @return [Types::UpdateDataSecurityConfig]
    class UpdateFlywheelRequest < Struct.new(
      :flywheel_arn,
      :active_model_arn,
      :data_access_role_arn,
      :data_security_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flywheel_properties
    #   <p>The flywheel properties.</p>
    #   @return [Types::FlywheelProperties]
    class UpdateFlywheelResponse < Struct.new(
      :flywheel_properties,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Configuration parameters for an optional private Virtual Private Cloud (VPC) containing
    #       the resources you are using for the job. For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
    #         VPC</a>. </p>
    # @!attribute security_group_ids
    #   <p>The ID number for a security group on an instance of your private VPC. Security groups on
    #         your VPC function serve as a virtual firewall to control inbound and outbound traffic and
    #         provides security for the resources that you’ll be accessing on the VPC. This ID number is
    #         preceded by "sg-", for instance: "sg-03b388029b0a285ea". For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html">Security
    #           Groups for your VPC</a>. </p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The ID for each subnet being used in your private VPC. This subnet is a subset of the a
    #         range of IPv4 addresses used by the VPC and is specific to a given availability zone in the
    #         VPC’s Region. This ID number is preceded by "subnet-", for instance:
    #         "subnet-04ccf456919e69055". For more information, see <a href="https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Subnets.html">VPCs and
    #           Subnets</a>. </p>
    #   @return [Array<String>]
    class VpcConfig < Struct.new(
      :security_group_ids,
      :subnets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The system identified one of the following warnings while processing the input document:</p>
    #          <ul>
    #             <li>
    #                <p>The document to classify is plain text, but the classifier is a native document model.</p>
    #             </li>
    #             <li>
    #                <p>The document to classify is semi-structured, but the classifier is a plain-text model.</p>
    #             </li>
    #          </ul>
    # @!attribute page
    #   <p>Page number in the input document.</p>
    #   @return [Integer]
    # @!attribute warn_code
    #   <p>The type of warning.</p>
    #   @return [String]
    # @!attribute warn_message
    #   <p>Text message associated with the warning.</p>
    #   @return [String]
    class WarningsListItem < Struct.new(
      :page,
      :warn_code,
      :warn_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
