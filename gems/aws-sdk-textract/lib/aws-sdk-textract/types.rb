# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Textract
  module Types

    # You aren't authorized to perform the action. Use the Amazon Resource
    # Name (ARN) of an authorized user or IAM role to perform the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AnalyzeDocumentRequest
    #   data as a hash:
    #
    #       {
    #         document: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         feature_types: ["TABLES"], # required, accepts TABLES, FORMS
    #         human_loop_config: {
    #           human_loop_name: "HumanLoopName", # required
    #           flow_definition_arn: "FlowDefinitionArn", # required
    #           data_attributes: {
    #             content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] document
    #   The input document as base64-encoded bytes or an Amazon S3 object.
    #   If you use the AWS CLI to call Amazon Textract operations, you
    #   can't pass image bytes. The document must be an image in JPEG or
    #   PNG format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes that are passed using the `Bytes`
    #   field.
    #   @return [Types::Document]
    #
    # @!attribute [rw] feature_types
    #   A list of the types of analysis to perform. Add TABLES to the list
    #   to return information about the tables that are detected in the
    #   input document. Add FORMS to return detected form data. To perform
    #   both types of analysis, add TABLES and FORMS to `FeatureTypes`. All
    #   lines and words detected in the document are included in the
    #   response (including text that isn't related to the value of
    #   `FeatureTypes`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] human_loop_config
    #   Sets the configuration for the human in the loop workflow for
    #   analyzing documents.
    #   @return [Types::HumanLoopConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeDocumentRequest AWS API Documentation
    #
    class AnalyzeDocumentRequest < Struct.new(
      :document,
      :feature_types,
      :human_loop_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Metadata about the analyzed document. An example is the number of
    #   pages.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] blocks
    #   The items that are detected and analyzed by `AnalyzeDocument`.
    #   @return [Array<Types::Block>]
    #
    # @!attribute [rw] human_loop_activation_output
    #   Shows the results of the human in the loop evaluation.
    #   @return [Types::HumanLoopActivationOutput]
    #
    # @!attribute [rw] analyze_document_model_version
    #   The version of the model used to analyze the document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeDocumentResponse AWS API Documentation
    #
    class AnalyzeDocumentResponse < Struct.new(
      :document_metadata,
      :blocks,
      :human_loop_activation_output,
      :analyze_document_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AnalyzeExpenseRequest
    #   data as a hash:
    #
    #       {
    #         document: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] document
    #   The input document, either as bytes or as an S3 object.
    #
    #   You pass image bytes to an Amazon Textract API operation by using
    #   the `Bytes` property. For example, you would use the `Bytes`
    #   property to pass a document loaded from a local file system. Image
    #   bytes passed by using the `Bytes` property must be base64 encoded.
    #   Your code might not need to encode document file bytes if you're
    #   using an AWS SDK to call Amazon Textract API operations.
    #
    #   You pass images stored in an S3 bucket to an Amazon Textract API
    #   operation by using the `S3Object` property. Documents stored in an
    #   S3 bucket don't need to be base64 encoded.
    #
    #   The AWS Region for the S3 bucket that contains the S3 object must
    #   match the AWS Region that you use for Amazon Textract operations.
    #
    #   If you use the AWS CLI to call Amazon Textract operations, passing
    #   image bytes using the Bytes property isn't supported. You must
    #   first upload the document to an Amazon S3 bucket, and then call the
    #   operation using the S3Object property.
    #
    #   For Amazon Textract to process an S3 object, the user must have
    #   permission to access the S3 object.
    #   @return [Types::Document]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeExpenseRequest AWS API Documentation
    #
    class AnalyzeExpenseRequest < Struct.new(
      :document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Information about the input document.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] expense_documents
    #   The expenses detected by Amazon Textract.
    #   @return [Array<Types::ExpenseDocument>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeExpenseResponse AWS API Documentation
    #
    class AnalyzeExpenseResponse < Struct.new(
      :document_metadata,
      :expense_documents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Used to contain the information detected by an AnalyzeID operation.
    #
    # @!attribute [rw] text
    #   Text of either the normalized field or value associated with it.
    #   @return [String]
    #
    # @!attribute [rw] normalized_value
    #   Only returned for dates, returns the type of value detected and the
    #   date written in a more machine readable way.
    #   @return [Types::NormalizedValue]
    #
    # @!attribute [rw] confidence
    #   The confidence score of the detected text.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeIDDetections AWS API Documentation
    #
    class AnalyzeIDDetections < Struct.new(
      :text,
      :normalized_value,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AnalyzeIDRequest
    #   data as a hash:
    #
    #       {
    #         document_pages: [ # required
    #           {
    #             bytes: "data",
    #             s3_object: {
    #               bucket: "S3Bucket",
    #               name: "S3ObjectName",
    #               version: "S3ObjectVersion",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] document_pages
    #   The document being passed to AnalyzeID.
    #   @return [Array<Types::Document>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeIDRequest AWS API Documentation
    #
    class AnalyzeIDRequest < Struct.new(
      :document_pages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identity_documents
    #   The list of documents processed by AnalyzeID. Includes a number
    #   denoting their place in the list and the response structure for the
    #   document.
    #   @return [Array<Types::IdentityDocument>]
    #
    # @!attribute [rw] document_metadata
    #   Information about the input document.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] analyze_id_model_version
    #   The version of the AnalyzeIdentity API being used to process
    #   documents.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeIDResponse AWS API Documentation
    #
    class AnalyzeIDResponse < Struct.new(
      :identity_documents,
      :document_metadata,
      :analyze_id_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Textract isn't able to read the document. For more information
    # on the document limits in Amazon Textract, see limits.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/BadDocumentException AWS API Documentation
    #
    class BadDocumentException < Aws::EmptyStructure; end

    # A `Block` represents items that are recognized in a document within a
    # group of pixels close to each other. The information returned in a
    # `Block` object depends on the type of operation. In text detection for
    # documents (for example DetectDocumentText), you get information about
    # the detected words and lines of text. In text analysis (for example
    # AnalyzeDocument), you can also get information about the fields,
    # tables, and selection elements that are detected in the document.
    #
    # An array of `Block` objects is returned by both synchronous and
    # asynchronous operations. In synchronous operations, such as
    # DetectDocumentText, the array of `Block` objects is the entire set of
    # results. In asynchronous operations, such as GetDocumentAnalysis, the
    # array is returned over one or more responses.
    #
    # For more information, see [How Amazon Textract Works][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/how-it-works.html
    #
    # @!attribute [rw] block_type
    #   The type of text item that's recognized. In operations for text
    #   detection, the following types are returned:
    #
    #   * *PAGE* - Contains a list of the LINE `Block` objects that are
    #     detected on a document page.
    #
    #   * *WORD* - A word detected on a document page. A word is one or more
    #     ISO basic Latin script characters that aren't separated by
    #     spaces.
    #
    #   * *LINE* - A string of tab-delimited, contiguous words that are
    #     detected on a document page.
    #
    #   In text analysis operations, the following types are returned:
    #
    #   * *PAGE* - Contains a list of child `Block` objects that are
    #     detected on a document page.
    #
    #   * *KEY\_VALUE\_SET* - Stores the KEY and VALUE `Block` objects for
    #     linked text that's detected on a document page. Use the
    #     `EntityType` field to determine if a KEY\_VALUE\_SET object is a
    #     KEY `Block` object or a VALUE `Block` object.
    #
    #   * *WORD* - A word that's detected on a document page. A word is one
    #     or more ISO basic Latin script characters that aren't separated
    #     by spaces.
    #
    #   * *LINE* - A string of tab-delimited, contiguous words that are
    #     detected on a document page.
    #
    #   * *TABLE* - A table that's detected on a document page. A table is
    #     grid-based information with two or more rows or columns, with a
    #     cell span of one row and one column each.
    #
    #   * *CELL* - A cell within a detected table. The cell is the parent of
    #     the block that contains the text in the cell.
    #
    #   * *SELECTION\_ELEMENT* - A selection element such as an option
    #     button (radio button) or a check box that's detected on a
    #     document page. Use the value of `SelectionStatus` to determine the
    #     status of the selection element.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence score that Amazon Textract has in the accuracy of the
    #   recognized text and the accuracy of the geometry points around the
    #   recognized text.
    #   @return [Float]
    #
    # @!attribute [rw] text
    #   The word or line of text that's recognized by Amazon Textract.
    #   @return [String]
    #
    # @!attribute [rw] text_type
    #   The kind of text that Amazon Textract has detected. Can check for
    #   handwritten text and printed text.
    #   @return [String]
    #
    # @!attribute [rw] row_index
    #   The row in which a table cell is located. The first row position is
    #   1. `RowIndex` isn't returned by `DetectDocumentText` and
    #   `GetDocumentTextDetection`.
    #   @return [Integer]
    #
    # @!attribute [rw] column_index
    #   The column in which a table cell appears. The first column position
    #   is 1. `ColumnIndex` isn't returned by `DetectDocumentText` and
    #   `GetDocumentTextDetection`.
    #   @return [Integer]
    #
    # @!attribute [rw] row_span
    #   The number of rows that a table cell spans. Currently this value is
    #   always 1, even if the number of rows spanned is greater than 1.
    #   `RowSpan` isn't returned by `DetectDocumentText` and
    #   `GetDocumentTextDetection`.
    #   @return [Integer]
    #
    # @!attribute [rw] column_span
    #   The number of columns that a table cell spans. Currently this value
    #   is always 1, even if the number of columns spanned is greater than
    #   1. `ColumnSpan` isn't returned by `DetectDocumentText` and
    #   `GetDocumentTextDetection`.
    #   @return [Integer]
    #
    # @!attribute [rw] geometry
    #   The location of the recognized text on the image. It includes an
    #   axis-aligned, coarse bounding box that surrounds the text, and a
    #   finer-grain polygon for more accurate spatial information.
    #   @return [Types::Geometry]
    #
    # @!attribute [rw] id
    #   The identifier for the recognized text. The identifier is only
    #   unique for a single operation.
    #   @return [String]
    #
    # @!attribute [rw] relationships
    #   A list of child blocks of the current block. For example, a LINE
    #   object has child blocks for each WORD block that's part of the line
    #   of text. There aren't Relationship objects in the list for
    #   relationships that don't exist, such as when the current block has
    #   no child blocks. The list size can be the following:
    #
    #   * 0 - The block has no child blocks.
    #
    #   * 1 - The block has child blocks.
    #   @return [Array<Types::Relationship>]
    #
    # @!attribute [rw] entity_types
    #   The type of entity. The following can be returned:
    #
    #   * *KEY* - An identifier for a field on the document.
    #
    #   * *VALUE* - The field text.
    #
    #   `EntityTypes` isn't returned by `DetectDocumentText` and
    #   `GetDocumentTextDetection`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] selection_status
    #   The selection status of a selection element, such as an option
    #   button or check box.
    #   @return [String]
    #
    # @!attribute [rw] page
    #   The page on which a block was detected. `Page` is returned by
    #   asynchronous operations. Page values greater than 1 are only
    #   returned for multipage documents that are in PDF or TIFF format. A
    #   scanned image (JPEG/PNG), even if it contains multiple document
    #   pages, is considered to be a single-page document. The value of
    #   `Page` is always 1. Synchronous operations don't return `Page`
    #   because every input document is considered to be a single-page
    #   document.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Block AWS API Documentation
    #
    class Block < Struct.new(
      :block_type,
      :confidence,
      :text,
      :text_type,
      :row_index,
      :column_index,
      :row_span,
      :column_span,
      :geometry,
      :id,
      :relationships,
      :entity_types,
      :selection_status,
      :page)
      SENSITIVE = []
      include Aws::Structure
    end

    # The bounding box around the detected page, text, key-value pair,
    # table, table cell, or selection element on a document page. The `left`
    # (x-coordinate) and `top` (y-coordinate) are coordinates that represent
    # the top and left sides of the bounding box. Note that the upper-left
    # corner of the image is the origin (0,0).
    #
    # The `top` and `left` values returned are ratios of the overall
    # document page size. For example, if the input image is 700 x 200
    # pixels, and the top-left coordinate of the bounding box is 350 x 50
    # pixels, the API returns a `left` value of 0.5 (350/700) and a `top`
    # value of 0.25 (50/200).
    #
    # The `width` and `height` values represent the dimensions of the
    # bounding box as a ratio of the overall document page dimension. For
    # example, if the document page size is 700 x 200 pixels, and the
    # bounding box width is 70 pixels, the width returned is 0.1.
    #
    # @!attribute [rw] width
    #   The width of the bounding box as a ratio of the overall document
    #   page width.
    #   @return [Float]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/BoundingBox AWS API Documentation
    #
    class BoundingBox < Struct.new(
      :width,
      :height,
      :left,
      :top)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetectDocumentTextRequest
    #   data as a hash:
    #
    #       {
    #         document: { # required
    #           bytes: "data",
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] document
    #   The input document as base64-encoded bytes or an Amazon S3 object.
    #   If you use the AWS CLI to call Amazon Textract operations, you
    #   can't pass image bytes. The document must be an image in JPEG or
    #   PNG format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes that are passed using the `Bytes`
    #   field.
    #   @return [Types::Document]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DetectDocumentTextRequest AWS API Documentation
    #
    class DetectDocumentTextRequest < Struct.new(
      :document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Metadata about the document. It contains the number of pages that
    #   are detected in the document.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] blocks
    #   An array of `Block` objects that contain the text that's detected
    #   in the document.
    #   @return [Array<Types::Block>]
    #
    # @!attribute [rw] detect_document_text_model_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DetectDocumentTextResponse AWS API Documentation
    #
    class DetectDocumentTextResponse < Struct.new(
      :document_metadata,
      :blocks,
      :detect_document_text_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input document, either as bytes or as an S3 object.
    #
    # You pass image bytes to an Amazon Textract API operation by using the
    # `Bytes` property. For example, you would use the `Bytes` property to
    # pass a document loaded from a local file system. Image bytes passed by
    # using the `Bytes` property must be base64 encoded. Your code might not
    # need to encode document file bytes if you're using an AWS SDK to call
    # Amazon Textract API operations.
    #
    # You pass images stored in an S3 bucket to an Amazon Textract API
    # operation by using the `S3Object` property. Documents stored in an S3
    # bucket don't need to be base64 encoded.
    #
    # The AWS Region for the S3 bucket that contains the S3 object must
    # match the AWS Region that you use for Amazon Textract operations.
    #
    # If you use the AWS CLI to call Amazon Textract operations, passing
    # image bytes using the Bytes property isn't supported. You must first
    # upload the document to an Amazon S3 bucket, and then call the
    # operation using the S3Object property.
    #
    # For Amazon Textract to process an S3 object, the user must have
    # permission to access the S3 object.
    #
    # @note When making an API call, you may pass Document
    #   data as a hash:
    #
    #       {
    #         bytes: "data",
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion",
    #         },
    #       }
    #
    # @!attribute [rw] bytes
    #   A blob of base64-encoded document bytes. The maximum size of a
    #   document that's provided in a blob of bytes is 5 MB. The document
    #   bytes must be in PNG or JPEG format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes passed using the `Bytes` field.
    #   @return [String]
    #
    # @!attribute [rw] s3_object
    #   Identifies an S3 object as the document source. The maximum size of
    #   a document that's stored in an S3 bucket is 5 MB.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Document AWS API Documentation
    #
    class Document < Struct.new(
      :bytes,
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 bucket that contains the document to be processed. It's
    # used by asynchronous operations such as StartDocumentTextDetection.
    #
    # The input document can be an image file in JPEG or PNG format. It can
    # also be a file in PDF format.
    #
    # @note When making an API call, you may pass DocumentLocation
    #   data as a hash:
    #
    #       {
    #         s3_object: {
    #           bucket: "S3Bucket",
    #           name: "S3ObjectName",
    #           version: "S3ObjectVersion",
    #         },
    #       }
    #
    # @!attribute [rw] s3_object
    #   The Amazon S3 bucket that contains the input document.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DocumentLocation AWS API Documentation
    #
    class DocumentLocation < Struct.new(
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the input document.
    #
    # @!attribute [rw] pages
    #   The number of pages that are detected in the document.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DocumentMetadata AWS API Documentation
    #
    class DocumentMetadata < Struct.new(
      :pages)
      SENSITIVE = []
      include Aws::Structure
    end

    # The document can't be processed because it's too large. The maximum
    # document size for synchronous operations 10 MB. The maximum document
    # size for asynchronous operations is 500 MB for PDF files.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DocumentTooLargeException AWS API Documentation
    #
    class DocumentTooLargeException < Aws::EmptyStructure; end

    # An object used to store information about the Value or Label detected
    # by Amazon Textract.
    #
    # @!attribute [rw] text
    #   The word or line of text recognized by Amazon Textract
    #   @return [String]
    #
    # @!attribute [rw] geometry
    #   Information about where the following items are located on a
    #   document page: detected page, text, key-value pairs, tables, table
    #   cells, and selection elements.
    #   @return [Types::Geometry]
    #
    # @!attribute [rw] confidence
    #   The confidence in detection, as a percentage
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseDetection AWS API Documentation
    #
    class ExpenseDetection < Struct.new(
      :text,
      :geometry,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure holding all the information returned by AnalyzeExpense
    #
    # @!attribute [rw] expense_index
    #   Denotes which invoice or receipt in the document the information is
    #   coming from. First document will be 1, the second 2, and so on.
    #   @return [Integer]
    #
    # @!attribute [rw] summary_fields
    #   Any information found outside of a table by Amazon Textract.
    #   @return [Array<Types::ExpenseField>]
    #
    # @!attribute [rw] line_item_groups
    #   Information detected on each table of a document, seperated into
    #   `LineItems`.
    #   @return [Array<Types::LineItemGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseDocument AWS API Documentation
    #
    class ExpenseDocument < Struct.new(
      :expense_index,
      :summary_fields,
      :line_item_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Breakdown of detected information, seperated into the catagories Type,
    # LabelDetection, and ValueDetection
    #
    # @!attribute [rw] type
    #   The implied label of a detected element. Present alongside
    #   LabelDetection for explicit elements.
    #   @return [Types::ExpenseType]
    #
    # @!attribute [rw] label_detection
    #   The explicitly stated label of a detected element.
    #   @return [Types::ExpenseDetection]
    #
    # @!attribute [rw] value_detection
    #   The value of a detected element. Present in explicit and implicit
    #   elements.
    #   @return [Types::ExpenseDetection]
    #
    # @!attribute [rw] page_number
    #   The page number the value was detected on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseField AWS API Documentation
    #
    class ExpenseField < Struct.new(
      :type,
      :label_detection,
      :value_detection,
      :page_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object used to store information about the Type detected by Amazon
    # Textract.
    #
    # @!attribute [rw] text
    #   The word or line of text detected by Amazon Textract.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   The confidence of accuracy, as a percentage.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseType AWS API Documentation
    #
    class ExpenseType < Struct.new(
      :text,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about where the following items are located on a document
    # page: detected page, text, key-value pairs, tables, table cells, and
    # selection elements.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Geometry AWS API Documentation
    #
    class Geometry < Struct.new(
      :bounding_box,
      :polygon)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDocumentAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] job_id
    #   A unique identifier for the text-detection job. The `JobId` is
    #   returned from `StartDocumentAnalysis`. A `JobId` value is only valid
    #   for 7 days.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value that you can specify is 1,000. If you specify a value
    #   greater than 1,000, a maximum of 1,000 results is returned. The
    #   default value is 1,000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   blocks to retrieve), Amazon Textract returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of blocks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentAnalysisRequest AWS API Documentation
    #
    class GetDocumentAnalysisRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Information about a document that Amazon Textract processed.
    #   `DocumentMetadata` is returned in every page of paginated responses
    #   from an Amazon Textract video operation.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] job_status
    #   The current status of the text detection job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Textract returns this token.
    #   You can use this token in the subsequent request to retrieve the
    #   next set of text detection results.
    #   @return [String]
    #
    # @!attribute [rw] blocks
    #   The results of the text-analysis operation.
    #   @return [Array<Types::Block>]
    #
    # @!attribute [rw] warnings
    #   A list of warnings that occurred during the document-analysis
    #   operation.
    #   @return [Array<Types::Warning>]
    #
    # @!attribute [rw] status_message
    #   Returns if the detection job could not be completed. Contains
    #   explanation for what error occured.
    #   @return [String]
    #
    # @!attribute [rw] analyze_document_model_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentAnalysisResponse AWS API Documentation
    #
    class GetDocumentAnalysisResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :blocks,
      :warnings,
      :status_message,
      :analyze_document_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDocumentTextDetectionRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] job_id
    #   A unique identifier for the text detection job. The `JobId` is
    #   returned from `StartDocumentTextDetection`. A `JobId` value is only
    #   valid for 7 days.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 1,000. If you specify a value
    #   greater than 1,000, a maximum of 1,000 results is returned. The
    #   default value is 1,000.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   blocks to retrieve), Amazon Textract returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of blocks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentTextDetectionRequest AWS API Documentation
    #
    class GetDocumentTextDetectionRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Information about a document that Amazon Textract processed.
    #   `DocumentMetadata` is returned in every page of paginated responses
    #   from an Amazon Textract video operation.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] job_status
    #   The current status of the text detection job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Textract returns this token.
    #   You can use this token in the subsequent request to retrieve the
    #   next set of text-detection results.
    #   @return [String]
    #
    # @!attribute [rw] blocks
    #   The results of the text-detection operation.
    #   @return [Array<Types::Block>]
    #
    # @!attribute [rw] warnings
    #   A list of warnings that occurred during the text-detection operation
    #   for the document.
    #   @return [Array<Types::Warning>]
    #
    # @!attribute [rw] status_message
    #   Returns if the detection job could not be completed. Contains
    #   explanation for what error occured.
    #   @return [String]
    #
    # @!attribute [rw] detect_document_text_model_version
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentTextDetectionResponse AWS API Documentation
    #
    class GetDocumentTextDetectionResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :blocks,
      :warnings,
      :status_message,
      :detect_document_text_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExpenseAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         job_id: "JobId", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] job_id
    #   A unique identifier for the text detection job. The `JobId` is
    #   returned from `StartExpenseAnalysis`. A `JobId` value is only valid
    #   for 7 days.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value you can specify is 20. If you specify a value greater
    #   than 20, a maximum of 20 results is returned. The default value is
    #   20.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete (because there are more
    #   blocks to retrieve), Amazon Textract returns a pagination token in
    #   the response. You can use this pagination token to retrieve the next
    #   set of blocks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetExpenseAnalysisRequest AWS API Documentation
    #
    class GetExpenseAnalysisRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Information about a document that Amazon Textract processed.
    #   `DocumentMetadata` is returned in every page of paginated responses
    #   from an Amazon Textract operation.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] job_status
    #   The current status of the text detection job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Textract returns this token.
    #   You can use this token in the subsequent request to retrieve the
    #   next set of text-detection results.
    #   @return [String]
    #
    # @!attribute [rw] expense_documents
    #   The expenses detected by Amazon Textract.
    #   @return [Array<Types::ExpenseDocument>]
    #
    # @!attribute [rw] warnings
    #   A list of warnings that occurred during the text-detection operation
    #   for the document.
    #   @return [Array<Types::Warning>]
    #
    # @!attribute [rw] status_message
    #   Returns if the detection job could not be completed. Contains
    #   explanation for what error occured.
    #   @return [String]
    #
    # @!attribute [rw] analyze_expense_model_version
    #   The current model version of AnalyzeExpense.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetExpenseAnalysisResponse AWS API Documentation
    #
    class GetExpenseAnalysisResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :expense_documents,
      :warnings,
      :status_message,
      :analyze_expense_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shows the results of the human in the loop evaluation. If there is no
    # HumanLoopArn, the input did not trigger human review.
    #
    # @!attribute [rw] human_loop_arn
    #   The Amazon Resource Name (ARN) of the HumanLoop created.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_activation_reasons
    #   Shows if and why human review was needed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] human_loop_activation_conditions_evaluation_results
    #   Shows the result of condition evaluations, including those
    #   conditions which activated a human review.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/HumanLoopActivationOutput AWS API Documentation
    #
    class HumanLoopActivationOutput < Struct.new(
      :human_loop_arn,
      :human_loop_activation_reasons,
      :human_loop_activation_conditions_evaluation_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets up the human review workflow the document will be sent to if one
    # of the conditions is met. You can also set certain attributes of the
    # image before review.
    #
    # @note When making an API call, you may pass HumanLoopConfig
    #   data as a hash:
    #
    #       {
    #         human_loop_name: "HumanLoopName", # required
    #         flow_definition_arn: "FlowDefinitionArn", # required
    #         data_attributes: {
    #           content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #         },
    #       }
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human workflow used for this image. This should be
    #   kept unique within a region.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition.
    #   @return [String]
    #
    # @!attribute [rw] data_attributes
    #   Sets attributes of the input data.
    #   @return [Types::HumanLoopDataAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/HumanLoopConfig AWS API Documentation
    #
    class HumanLoopConfig < Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :data_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Allows you to set attributes of the image. Currently, you can declare
    # an image as free of personally identifiable information and adult
    # content.
    #
    # @note When making an API call, you may pass HumanLoopDataAttributes
    #   data as a hash:
    #
    #       {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       }
    #
    # @!attribute [rw] content_classifiers
    #   Sets whether the input image is free of personally identifiable
    #   information or adult content.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/HumanLoopDataAttributes AWS API Documentation
    #
    class HumanLoopDataAttributes < Struct.new(
      :content_classifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates you have exceeded the maximum number of active human in the
    # loop workflows available
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/HumanLoopQuotaExceededException AWS API Documentation
    #
    class HumanLoopQuotaExceededException < Struct.new(
      :resource_type,
      :quota_code,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # A `ClientRequestToken` input parameter was reused with an operation,
    # but at least one of the other input parameters is different from the
    # previous call to the operation.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/IdempotentParameterMismatchException AWS API Documentation
    #
    class IdempotentParameterMismatchException < Aws::EmptyStructure; end

    # The structure that lists each document processed in an AnalyzeID
    # operation.
    #
    # @!attribute [rw] document_index
    #   Denotes the placement of a document in the IdentityDocument list.
    #   The first document is marked 1, the second 2 and so on.
    #   @return [Integer]
    #
    # @!attribute [rw] identity_document_fields
    #   The structure used to record information extracted from identity
    #   documents. Contains both normalized field and value of the extracted
    #   text.
    #   @return [Array<Types::IdentityDocumentField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/IdentityDocument AWS API Documentation
    #
    class IdentityDocument < Struct.new(
      :document_index,
      :identity_document_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure containing both the normalized type of the extracted
    # information and the text associated with it. These are extracted as
    # Type and Value respectively.
    #
    # @!attribute [rw] type
    #   Used to contain the information detected by an AnalyzeID operation.
    #   @return [Types::AnalyzeIDDetections]
    #
    # @!attribute [rw] value_detection
    #   Used to contain the information detected by an AnalyzeID operation.
    #   @return [Types::AnalyzeIDDetections]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/IdentityDocumentField AWS API Documentation
    #
    class IdentityDocumentField < Struct.new(
      :type,
      :value_detection)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Textract experienced a service issue. Try your call again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/InternalServerError AWS API Documentation
    #
    class InternalServerError < Aws::EmptyStructure; end

    # An invalid job identifier was passed to GetDocumentAnalysis or to
    # GetDocumentAnalysis.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/InvalidJobIdException AWS API Documentation
    #
    class InvalidJobIdException < Aws::EmptyStructure; end

    # Indicates you do not have decrypt permissions with the KMS key
    # entered, or the KMS key was entered incorrectly.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/InvalidKMSKeyException AWS API Documentation
    #
    class InvalidKMSKeyException < Aws::EmptyStructure; end

    # An input parameter violated a constraint. For example, in synchronous
    # operations, an `InvalidParameterException` exception occurs when
    # neither of the `S3Object` or `Bytes` values are supplied in the
    # `Document` request parameter. Validate your parameter before calling
    # the API operation again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Aws::EmptyStructure; end

    # Amazon Textract is unable to access the S3 object that's specified in
    # the request. for more information, [Configure Access to Amazon S3][1]
    # For troubleshooting information, see [Troubleshooting Amazon S3][2]
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html
    # [2]: https://docs.aws.amazon.com/AmazonS3/latest/dev/troubleshooting.html
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/InvalidS3ObjectException AWS API Documentation
    #
    class InvalidS3ObjectException < Aws::EmptyStructure; end

    # An Amazon Textract service limit was exceeded. For example, if you
    # start too many asynchronous jobs concurrently, calls to start
    # operations (`StartDocumentTextDetection`, for example) raise a
    # LimitExceededException exception (HTTP status code: 400) until the
    # number of concurrently running jobs is below the Amazon Textract
    # service limit.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Aws::EmptyStructure; end

    # A structure that holds information about the different lines found in
    # a document's tables.
    #
    # @!attribute [rw] line_item_expense_fields
    #   ExpenseFields used to show information from detected lines on a
    #   table.
    #   @return [Array<Types::ExpenseField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LineItemFields AWS API Documentation
    #
    class LineItemFields < Struct.new(
      :line_item_expense_fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # A grouping of tables which contain LineItems, with each table
    # identified by the table's `LineItemGroupIndex`.
    #
    # @!attribute [rw] line_item_group_index
    #   The number used to identify a specific table in a document. The
    #   first table encountered will have a LineItemGroupIndex of 1, the
    #   second 2, etc.
    #   @return [Integer]
    #
    # @!attribute [rw] line_items
    #   The breakdown of information on a particular line of a table.
    #   @return [Array<Types::LineItemFields>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LineItemGroup AWS API Documentation
    #
    class LineItemGroup < Struct.new(
      :line_item_group_index,
      :line_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information relating to dates in a document, including the
    # type of value, and the value.
    #
    # @!attribute [rw] value
    #   The value of the date, written as Year-Month-DayTHour:Minute:Second.
    #   @return [String]
    #
    # @!attribute [rw] value_type
    #   The normalized type of the value detected. In this case, DATE.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/NormalizedValue AWS API Documentation
    #
    class NormalizedValue < Struct.new(
      :value,
      :value_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon Simple Notification Service (Amazon SNS) topic to which
    # Amazon Textract publishes the completion status of an asynchronous
    # document operation, such as StartDocumentTextDetection.
    #
    # @note When making an API call, you may pass NotificationChannel
    #   data as a hash:
    #
    #       {
    #         sns_topic_arn: "SNSTopicArn", # required
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon SNS topic that Amazon Textract posts the completion
    #   status to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role that gives Amazon
    #   Textract publishing permissions to the Amazon SNS topic.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/NotificationChannel AWS API Documentation
    #
    class NotificationChannel < Struct.new(
      :sns_topic_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets whether or not your output will go to a user created bucket. Used
    # to set the name of the bucket, and the prefix on the output file.
    #
    # `OutputConfig` is an optional parameter which lets you adjust where
    # your output will be placed. By default, Amazon Textract will store the
    # results internally and can only be accessed by the Get API operations.
    # With OutputConfig enabled, you can set the name of the bucket the
    # output will be sent to and the file prefix of the results where you
    # can download your results. Additionally, you can set the `KMSKeyID`
    # parameter to a customer master key (CMK) to encrypt your output.
    # Without this parameter set Amazon Textract will encrypt server-side
    # using the AWS managed CMK for Amazon S3.
    #
    # Decryption of Customer Content is necessary for processing of the
    # documents by Amazon Textract. If your account is opted out under an AI
    # services opt out policy then all unencrypted Customer Content is
    # immediately and permanently deleted after the Customer Content has
    # been processed by the service. No copy of of the output is retained by
    # Amazon Textract. For information about how to opt out, see [ Managing
    # AI services opt-out policy. ][1]
    #
    # For more information on data privacy, see the [Data Privacy FAQ][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    # [2]: https://aws.amazon.com/compliance/data-privacy-faq/
    #
    # @note When making an API call, you may pass OutputConfig
    #   data as a hash:
    #
    #       {
    #         s3_bucket: "S3Bucket", # required
    #         s3_prefix: "S3ObjectName",
    #       }
    #
    # @!attribute [rw] s3_bucket
    #   The name of the bucket your output will go to.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The prefix of the object key that the output will be saved to. When
    #   not enabled, the prefix will be “textract\_output".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/OutputConfig AWS API Documentation
    #
    class OutputConfig < Struct.new(
      :s3_bucket,
      :s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # The X and Y coordinates of a point on a document page. The X and Y
    # values that are returned are ratios of the overall document page size.
    # For example, if the input document is 700 x 200 and the operation
    # returns X=0.5 and Y=0.25, then the point is at the (350,50) pixel
    # coordinate on the document page.
    #
    # An array of `Point` objects, `Polygon`, is returned by
    # DetectDocumentText. `Polygon` represents a fine-grained polygon around
    # detected text. For more information, see Geometry in the Amazon
    # Textract Developer Guide.
    #
    # @!attribute [rw] x
    #   The value of the X coordinate for a point on a `Polygon`.
    #   @return [Float]
    #
    # @!attribute [rw] y
    #   The value of the Y coordinate for a point on a `Polygon`.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Point AWS API Documentation
    #
    class Point < Struct.new(
      :x,
      :y)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeded your throughput limit. If you want to
    # increase this limit, contact Amazon Textract.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ProvisionedThroughputExceededException AWS API Documentation
    #
    class ProvisionedThroughputExceededException < Aws::EmptyStructure; end

    # Information about how blocks are related to each other. A `Block`
    # object contains 0 or more `Relation` objects in a list,
    # `Relationships`. For more information, see Block.
    #
    # The `Type` element provides the type of the relationship for all
    # blocks in the `IDs` array.
    #
    # @!attribute [rw] type
    #   The type of relationship that the blocks in the IDs array have with
    #   the current block. The relationship can be `VALUE` or `CHILD`. A
    #   relationship of type VALUE is a list that contains the ID of the
    #   VALUE block that's associated with the KEY of a key-value pair. A
    #   relationship of type CHILD is a list of IDs that identify WORD
    #   blocks in the case of lines Cell blocks in the case of Tables, and
    #   WORD blocks in the case of Selection Elements.
    #   @return [String]
    #
    # @!attribute [rw] ids
    #   An array of IDs for related blocks. You can get the type of the
    #   relationship from the `Type` element.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Relationship AWS API Documentation
    #
    class Relationship < Struct.new(
      :type,
      :ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # The S3 bucket name and file name that identifies the document.
    #
    # The AWS Region for the S3 bucket that contains the document must match
    # the Region that you use for Amazon Textract operations.
    #
    # For Amazon Textract to process a file in an S3 bucket, the user must
    # have permission to access the S3 bucket and file.
    #
    # @note When making an API call, you may pass S3Object
    #   data as a hash:
    #
    #       {
    #         bucket: "S3Bucket",
    #         name: "S3ObjectName",
    #         version: "S3ObjectVersion",
    #       }
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket. Note that the # character is not valid in
    #   the file name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The file name of the input document. Synchronous operations can use
    #   image files that are in JPEG or PNG format. Asynchronous operations
    #   also support PDF and TIFF format files.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   If the bucket has versioning enabled, you can specify the object
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :bucket,
      :name,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDocumentAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         document_location: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         feature_types: ["TABLES"], # required, accepts TABLES, FORMS
    #         client_request_token: "ClientRequestToken",
    #         job_tag: "JobTag",
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         output_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_prefix: "S3ObjectName",
    #         },
    #         kms_key_id: "KMSKeyId",
    #       }
    #
    # @!attribute [rw] document_location
    #   The location of the document to be processed.
    #   @return [Types::DocumentLocation]
    #
    # @!attribute [rw] feature_types
    #   A list of the types of analysis to perform. Add TABLES to the list
    #   to return information about the tables that are detected in the
    #   input document. Add FORMS to return detected form data. To perform
    #   both types of analysis, add TABLES and FORMS to `FeatureTypes`. All
    #   lines and words detected in the document are included in the
    #   response (including text that isn't related to the value of
    #   `FeatureTypes`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] client_request_token
    #   The idempotent token that you use to identify the start request. If
    #   you use the same token with multiple `StartDocumentAnalysis`
    #   requests, the same `JobId` is returned. Use `ClientRequestToken` to
    #   prevent the same job from being accidentally started more than once.
    #   For more information, see [Calling Amazon Textract Asynchronous
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #   @return [String]
    #
    # @!attribute [rw] job_tag
    #   An identifier that you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish
    #   the completion status of the operation to.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] output_config
    #   Sets if the output will go to a customer defined bucket. By default,
    #   Amazon Textract will save the results internally to be accessed by
    #   the GetDocumentAnalysis operation.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the
    #   KMS key will be used for server-side encryption of the objects in
    #   the customer bucket. When this parameter is not enabled, the result
    #   will be encrypted server side,using SSE-S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentAnalysisRequest AWS API Documentation
    #
    class StartDocumentAnalysisRequest < Struct.new(
      :document_location,
      :feature_types,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier for the document text detection job. Use `JobId` to
    #   identify the job in a subsequent call to `GetDocumentAnalysis`. A
    #   `JobId` value is only valid for 7 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentAnalysisResponse AWS API Documentation
    #
    class StartDocumentAnalysisResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartDocumentTextDetectionRequest
    #   data as a hash:
    #
    #       {
    #         document_location: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         job_tag: "JobTag",
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         output_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_prefix: "S3ObjectName",
    #         },
    #         kms_key_id: "KMSKeyId",
    #       }
    #
    # @!attribute [rw] document_location
    #   The location of the document to be processed.
    #   @return [Types::DocumentLocation]
    #
    # @!attribute [rw] client_request_token
    #   The idempotent token that's used to identify the start request. If
    #   you use the same token with multiple `StartDocumentTextDetection`
    #   requests, the same `JobId` is returned. Use `ClientRequestToken` to
    #   prevent the same job from being accidentally started more than once.
    #   For more information, see [Calling Amazon Textract Asynchronous
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #   @return [String]
    #
    # @!attribute [rw] job_tag
    #   An identifier that you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish
    #   the completion status of the operation to.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] output_config
    #   Sets if the output will go to a customer defined bucket. By default
    #   Amazon Textract will save the results internally to be accessed with
    #   the GetDocumentTextDetection operation.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the
    #   KMS key will be used for server-side encryption of the objects in
    #   the customer bucket. When this parameter is not enabled, the result
    #   will be encrypted server side,using SSE-S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentTextDetectionRequest AWS API Documentation
    #
    class StartDocumentTextDetectionRequest < Struct.new(
      :document_location,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the text detection job for the document. Use
    #   `JobId` to identify the job in a subsequent call to
    #   `GetDocumentTextDetection`. A `JobId` value is only valid for 7
    #   days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentTextDetectionResponse AWS API Documentation
    #
    class StartDocumentTextDetectionResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartExpenseAnalysisRequest
    #   data as a hash:
    #
    #       {
    #         document_location: { # required
    #           s3_object: {
    #             bucket: "S3Bucket",
    #             name: "S3ObjectName",
    #             version: "S3ObjectVersion",
    #           },
    #         },
    #         client_request_token: "ClientRequestToken",
    #         job_tag: "JobTag",
    #         notification_channel: {
    #           sns_topic_arn: "SNSTopicArn", # required
    #           role_arn: "RoleArn", # required
    #         },
    #         output_config: {
    #           s3_bucket: "S3Bucket", # required
    #           s3_prefix: "S3ObjectName",
    #         },
    #         kms_key_id: "KMSKeyId",
    #       }
    #
    # @!attribute [rw] document_location
    #   The location of the document to be processed.
    #   @return [Types::DocumentLocation]
    #
    # @!attribute [rw] client_request_token
    #   The idempotent token that's used to identify the start request. If
    #   you use the same token with multiple `StartDocumentTextDetection`
    #   requests, the same `JobId` is returned. Use `ClientRequestToken` to
    #   prevent the same job from being accidentally started more than once.
    #   For more information, see [Calling Amazon Textract Asynchronous
    #   Operations][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-async.html
    #   @return [String]
    #
    # @!attribute [rw] job_tag
    #   An identifier you specify that's included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon SNS topic ARN that you want Amazon Textract to publish
    #   the completion status of the operation to.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] output_config
    #   Sets if the output will go to a customer defined bucket. By default,
    #   Amazon Textract will save the results internally to be accessed by
    #   the `GetExpenseAnalysis` operation.
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the
    #   KMS key will be used for server-side encryption of the objects in
    #   the customer bucket. When this parameter is not enabled, the result
    #   will be encrypted server side,using SSE-S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartExpenseAnalysisRequest AWS API Documentation
    #
    class StartExpenseAnalysisRequest < Struct.new(
      :document_location,
      :client_request_token,
      :job_tag,
      :notification_channel,
      :output_config,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   A unique identifier for the text detection job. The `JobId` is
    #   returned from `StartExpenseAnalysis`. A `JobId` value is only valid
    #   for 7 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartExpenseAnalysisResponse AWS API Documentation
    #
    class StartExpenseAnalysisResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Textract is temporarily unable to process the request. Try your
    # call again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # The format of the input document isn't supported. Documents for
    # synchronous operations can be in PNG or JPEG format only. Documents
    # for asynchronous operations can be in PDF format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UnsupportedDocumentException AWS API Documentation
    #
    class UnsupportedDocumentException < Aws::EmptyStructure; end

    # A warning about an issue that occurred during asynchronous text
    # analysis (StartDocumentAnalysis) or asynchronous document text
    # detection (StartDocumentTextDetection).
    #
    # @!attribute [rw] error_code
    #   The error code for the warning.
    #   @return [String]
    #
    # @!attribute [rw] pages
    #   A list of the pages that the warning applies to.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Warning AWS API Documentation
    #
    class Warning < Struct.new(
      :error_code,
      :pages)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
