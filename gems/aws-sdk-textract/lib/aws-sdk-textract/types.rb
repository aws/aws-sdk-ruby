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

    # An adapter selected for use when analyzing documents. Contains an
    # adapter ID and a version number. Contains information on pages
    # selected for analysis when analyzing documents asychronously.
    #
    # @!attribute [rw] adapter_id
    #   A unique identifier for the adapter resource.
    #   @return [String]
    #
    # @!attribute [rw] pages
    #   Pages is a parameter that the user inputs to specify which pages to
    #   apply an adapter to. The following is a list of rules for using this
    #   parameter.
    #
    #   * If a page is not specified, it is set to `["1"]` by default.
    #
    #   * The following characters are allowed in the parameter's string:
    #     `0 1 2 3 4 5 6 7 8 9 - *`. No whitespace is allowed.
    #
    #   * When using * to indicate all pages, it must be the only element
    #     in the list.
    #
    #   * You can use page intervals, such as `["1-3", "1-1", "4-*"]`. Where
    #     `*` indicates last page of document.
    #
    #   * Specified pages must be greater than 0 and less than or equal to
    #     the number of pages in the document.
    #   @return [Array<String>]
    #
    # @!attribute [rw] version
    #   A string that identifies the version of the adapter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Adapter AWS API Documentation
    #
    class Adapter < Struct.new(
      :adapter_id,
      :pages,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the adapter, including the adapter ID, Name,
    # Creation time, and feature types.
    #
    # @!attribute [rw] adapter_id
    #   A unique identifier for the adapter resource.
    #   @return [String]
    #
    # @!attribute [rw] adapter_name
    #   A string naming the adapter resource.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the adapter was created.
    #   @return [Time]
    #
    # @!attribute [rw] feature_types
    #   The feature types that the adapter is operating on.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AdapterOverview AWS API Documentation
    #
    class AdapterOverview < Struct.new(
      :adapter_id,
      :adapter_name,
      :creation_time,
      :feature_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # The dataset configuration options for a given version of an adapter.
    # Can include an Amazon S3 bucket if specified.
    #
    # @!attribute [rw] manifest_s3_object
    #   The S3 bucket name and file name that identifies the document.
    #
    #   The AWS Region for the S3 bucket that contains the document must
    #   match the Region that you use for Amazon Textract operations.
    #
    #   For Amazon Textract to process a file in an S3 bucket, the user must
    #   have permission to access the S3 bucket and file.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AdapterVersionDatasetConfig AWS API Documentation
    #
    class AdapterVersionDatasetConfig < Struct.new(
      :manifest_s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information on the metrics used to evalute the peformance of
    # a given adapter version. Includes data for baseline model performance
    # and individual adapter version perfromance.
    #
    # @!attribute [rw] baseline
    #   The F1 score, precision, and recall metrics for the baseline model.
    #   @return [Types::EvaluationMetric]
    #
    # @!attribute [rw] adapter_version
    #   The F1 score, precision, and recall metrics for the baseline model.
    #   @return [Types::EvaluationMetric]
    #
    # @!attribute [rw] feature_type
    #   Indicates the feature type being analyzed by a given adapter
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AdapterVersionEvaluationMetric AWS API Documentation
    #
    class AdapterVersionEvaluationMetric < Struct.new(
      :baseline,
      :adapter_version,
      :feature_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary info for an adapter version. Contains information on the
    # AdapterId, AdapterVersion, CreationTime, FeatureTypes, and Status.
    #
    # @!attribute [rw] adapter_id
    #   A unique identifier for the adapter associated with a given adapter
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] adapter_version
    #   An identified for a given adapter version.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that a given adapter version was created.
    #   @return [Time]
    #
    # @!attribute [rw] feature_types
    #   The feature types that the adapter version is operating on.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   Contains information on the status of a given adapter version.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message explaining the status of a given adapter vesion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AdapterVersionOverview AWS API Documentation
    #
    class AdapterVersionOverview < Struct.new(
      :adapter_id,
      :adapter_version,
      :creation_time,
      :feature_types,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about adapters used when analyzing a document,
    # with each adapter specified using an AdapterId and version
    #
    # @!attribute [rw] adapters
    #   A list of adapters to be used when analyzing the specified document.
    #   @return [Array<Types::Adapter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AdaptersConfig AWS API Documentation
    #
    class AdaptersConfig < Struct.new(
      :adapters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document
    #   The input document as base64-encoded bytes or an Amazon S3 object.
    #   If you use the AWS CLI to call Amazon Textract operations, you
    #   can't pass image bytes. The document must be an image in JPEG, PNG,
    #   PDF, or TIFF format.
    #
    #   If you're using an AWS SDK to call Amazon Textract, you might not
    #   need to base64-encode image bytes that are passed using the `Bytes`
    #   field.
    #   @return [Types::Document]
    #
    # @!attribute [rw] feature_types
    #   A list of the types of analysis to perform. Add TABLES to the list
    #   to return information about the tables that are detected in the
    #   input document. Add FORMS to return detected form data. Add
    #   SIGNATURES to return the locations of detected signatures. Add
    #   LAYOUT to the list to return information about the layout of the
    #   document. All lines and words detected in the document are included
    #   in the response (including text that isn't related to the value of
    #   `FeatureTypes`).
    #   @return [Array<String>]
    #
    # @!attribute [rw] human_loop_config
    #   Sets the configuration for the human in the loop workflow for
    #   analyzing documents.
    #
    #   <note markdown="1"> Amazon Textract uses Amazon Augmented AI (A2I) to run the human
    #   review workflows that you specify in `HumanLoopConfig`. A2I entered
    #   maintenance mode in July 2026 and no longer accepts new customers.
    #   If your account is not an existing A2I customer, requests fail with
    #   an `InvalidParameterException`. For more information, see [AWS
    #   service availability][1]. If you're an existing A2I customer but
    #   receive this error, contact AWS Support and request assistance from
    #   the A2I team.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://aws.amazon.com/about-aws/whats-new/2026/06/aws-service-availability/
    #   @return [Types::HumanLoopConfig]
    #
    # @!attribute [rw] queries_config
    #   Contains Queries and the alias for those Queries, as determined by
    #   the input.
    #   @return [Types::QueriesConfig]
    #
    # @!attribute [rw] adapters_config
    #   Specifies the adapter to be used when analyzing a document.
    #   @return [Types::AdaptersConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/AnalyzeDocumentRequest AWS API Documentation
    #
    class AnalyzeDocumentRequest < Struct.new(
      :document,
      :feature_types,
      :human_loop_config,
      :queries_config,
      :adapters_config)
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
    # on the document limits in Amazon Textract, see [Hard limits][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/textract/latest/dg/limits.html
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
    #   * *LINE* - A string of space-delimited, contiguous words that are
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
    #   * *TABLE\_TITLE* - The title of a table. A title is typically a line
    #     of text above or below a table, or embedded as the first row of a
    #     table.
    #
    #   * *TABLE\_FOOTER* - The footer associated with a table. A footer is
    #     typically a line or lines of text below a table or embedded as the
    #     last row of a table.
    #
    #   * *CELL* - A cell within a detected table. The cell is the parent of
    #     the block that contains the text in the cell.
    #
    #   * *MERGED\_CELL* - A cell in a table whose content spans more than
    #     one row or column. The `Relationships` array for this cell contain
    #     data from individual cells.
    #
    #   * *SELECTION\_ELEMENT* - A selection element such as an option
    #     button (radio button) or a check box that's detected on a
    #     document page. Use the value of `SelectionStatus` to determine the
    #     status of the selection element.
    #
    #   * *SIGNATURE* - The location and confidence score of a signature
    #     detected on a document page. Can be returned as part of a
    #     Key-Value pair or a detected cell.
    #
    #   * *QUERY* - A question asked during the call of AnalyzeDocument.
    #     Contains an alias and an ID that attaches it to its answer.
    #
    #   * *QUERY\_RESULT* - A response to a question asked during the call
    #     of analyze document. Comes with an alias and ID for ease of
    #     locating in a response. Also contains location and confidence
    #     score.
    #
    #   The following BlockTypes are only returned for Amazon Textract
    #   Layout.
    #
    #   * `LAYOUT_TITLE` - The main title of the document.
    #
    #   * `LAYOUT_HEADER` - Text located in the top margin of the document.
    #
    #   * `LAYOUT_FOOTER` - Text located in the bottom margin of the
    #     document.
    #
    #   * `LAYOUT_SECTION_HEADER` - The titles of sections within a
    #     document.
    #
    #   * `LAYOUT_PAGE_NUMBER` - The page number of the documents.
    #
    #   * `LAYOUT_LIST` - Any information grouped together in list form.
    #
    #   * `LAYOUT_FIGURE` - Indicates the location of an image in a
    #     document.
    #
    #   * `LAYOUT_TABLE` - Indicates the location of a table in the
    #     document.
    #
    #   * `LAYOUT_KEY_VALUE` - Indicates the location of form key-values in
    #     a document.
    #
    #   * `LAYOUT_TEXT` - Text that is present typically as a part of
    #     paragraphs in documents.
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
    #   The number of rows that a table cell spans. `RowSpan` isn't
    #   returned by `DetectDocumentText` and `GetDocumentTextDetection`.
    #   @return [Integer]
    #
    # @!attribute [rw] column_span
    #   The number of columns that a table cell spans. `ColumnSpan` isn't
    #   returned by `DetectDocumentText` and `GetDocumentTextDetection`.
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
    #   A list of relationship objects that describe how blocks are related
    #   to each other. For example, a LINE block object contains a CHILD
    #   relationship type with the WORD blocks that make up the line of
    #   text. There aren't Relationship objects in the list for
    #   relationships that don't exist, such as when the current block has
    #   no child blocks.
    #   @return [Array<Types::Relationship>]
    #
    # @!attribute [rw] entity_types
    #   The type of entity.
    #
    #   The following entity types can be returned by FORMS analysis:
    #
    #   * *KEY* - An identifier for a field on the document.
    #
    #   * *VALUE* - The field text.
    #
    #   The following entity types can be returned by TABLES analysis:
    #
    #   * *COLUMN\_HEADER* - Identifies a cell that is a header of a column.
    #
    #   * *TABLE\_TITLE* - Identifies a cell that is a title within the
    #     table.
    #
    #   * *TABLE\_SECTION\_TITLE* - Identifies a cell that is a title of a
    #     section within a table. A section title is a cell that typically
    #     spans an entire row above a section.
    #
    #   * *TABLE\_FOOTER* - Identifies a cell that is a footer of a table.
    #
    #   * *TABLE\_SUMMARY* - Identifies a summary cell of a table. A summary
    #     cell can be a row of a table or an additional, smaller table that
    #     contains summary information for another table.
    #
    #   * <i>STRUCTURED_TABLE </i> - Identifies a table with column headers
    #     where the content of each row corresponds to the headers.
    #
    #   * *SEMI\_STRUCTURED\_TABLE* - Identifies a non-structured table.
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
    #   synchronous and asynchronous operations. Page values greater than 1
    #   are only returned for multipage documents that are in PDF or TIFF
    #   format. A scanned image (JPEG/PNG) provided to an asynchronous
    #   operation, even if it contains multiple document pages, is
    #   considered a single-page document. This means that for scanned
    #   images the value of `Page` is always 1.
    #   @return [Integer]
    #
    # @!attribute [rw] query
    #   @return [Types::Query]
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
      :page,
      :query)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to limit results to a specific blueprint, and optionally
    # a specific version.
    #
    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint to filter by.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   The version of the blueprint to filter by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/BlueprintFilter AWS API Documentation
    #
    class BlueprintFilter < Struct.new(
      :blueprint_arn,
      :blueprint_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a blueprint, and optionally a specific blueprint version,
    # with a project for custom output extraction.
    #
    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   The version of the blueprint. If omitted, the latest version is
    #   used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/BlueprintItem AWS API Documentation
    #
    class BlueprintItem < Struct.new(
      :blueprint_arn,
      :blueprint_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a blueprint, returned in the results of `ListBlueprints`.
    #
    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   The version of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   Whether the blueprint is owned by your account or provided by Amazon
    #   Textract.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the blueprint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the blueprint was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/BlueprintSummary AWS API Documentation
    #
    class BlueprintSummary < Struct.new(
      :blueprint_arn,
      :blueprint_name,
      :blueprint_version,
      :resource_owner,
      :creation_time,
      :last_modified_time)
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

    # Controls whether bounding box geometry is returned in the extraction
    # output.
    #
    # @!attribute [rw] state
    #   Set to `ENABLED` to return bounding box geometry, or `DISABLED` to
    #   omit it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/BoundingBoxConfiguration AWS API Documentation
    #
    class BoundingBoxConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ConflictException AWS API Documentation
    #
    class ConflictException < Aws::EmptyStructure; end

    # @!attribute [rw] adapter_name
    #   The name to be assigned to the adapter being created.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token is used to recognize the request. If the same token
    #   is used with multiple CreateAdapter requests, the same session is
    #   returned. This token is employed to avoid unintentionally creating
    #   the same session multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description to be assigned to the adapter being created.
    #   @return [String]
    #
    # @!attribute [rw] feature_types
    #   The type of feature that the adapter is being trained on. Currrenly,
    #   supported feature types are: `QUERIES`
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_update
    #   Controls whether or not the adapter should automatically update.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags to be added to the adapter.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateAdapterRequest AWS API Documentation
    #
    class CreateAdapterRequest < Struct.new(
      :adapter_name,
      :client_request_token,
      :description,
      :feature_types,
      :auto_update,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string containing the unique ID for the adapter that has been
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateAdapterResponse AWS API Documentation
    #
    class CreateAdapterResponse < Struct.new(
      :adapter_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter that will receive a
    #   new version.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   Idempotent token is used to recognize the request. If the same token
    #   is used with multiple CreateAdapterVersion requests, the same
    #   session is returned. This token is employed to avoid unintentionally
    #   creating the same session multiple times.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] dataset_config
    #   Specifies a dataset used to train a new adapter version. Takes a
    #   ManifestS3Object as the value.
    #   @return [Types::AdapterVersionDatasetConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS
    #   key). Used to encrypt your documents.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   Sets whether or not your output will go to a user created bucket.
    #   Used to set the name of the bucket, and the prefix on the output
    #   file.
    #
    #   `OutputConfig` is an optional parameter which lets you adjust where
    #   your output will be placed. By default, Amazon Textract will store
    #   the results internally and can only be accessed by the Get API
    #   operations. With `OutputConfig` enabled, you can set the name of the
    #   bucket the output will be sent to the file prefix of the results
    #   where you can download your results. Additionally, you can set the
    #   `KMSKeyID` parameter to a customer master key (CMK) to encrypt your
    #   output. Without this parameter set Amazon Textract will encrypt
    #   server-side using the AWS managed CMK for Amazon S3.
    #
    #   Decryption of Customer Content is necessary for processing of the
    #   documents by Amazon Textract. If your account is opted out under an
    #   AI services opt out policy then all unencrypted Customer Content is
    #   immediately and permanently deleted after the Customer Content has
    #   been processed by the service. No copy of of the output is retained
    #   by Amazon Textract. For information about how to opt out, see [
    #   Managing AI services opt-out policy. ][1]
    #
    #   For more information on data privacy, see the [Data Privacy FAQ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://aws.amazon.com/compliance/data-privacy-faq/
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to attach to the
    #   adapter version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateAdapterVersionRequest AWS API Documentation
    #
    class CreateAdapterVersionRequest < Struct.new(
      :adapter_id,
      :client_request_token,
      :dataset_config,
      :kms_key_id,
      :output_config,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string containing the unique ID for the adapter that has received
    #   a new version.
    #   @return [String]
    #
    # @!attribute [rw] adapter_version
    #   A string describing the new version of the adapter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateAdapterVersionResponse AWS API Documentation
    #
    class CreateAdapterVersionResponse < Struct.new(
      :adapter_id,
      :adapter_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If you use the same
    #   token for a request that matches a previous request, the service
    #   ignores the request, but does not return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_name
    #   A unique name for the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the blueprint, which defines the fields to extract and
    #   their expected structure.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS encryption configuration used to encrypt the blueprint
    #   at rest.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) to assign to the blueprint.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateBlueprintRequest AWS API Documentation
    #
    class CreateBlueprintRequest < Struct.new(
      :client_request_token,
      :blueprint_name,
      :schema,
      :encryption_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateBlueprintResponse AWS API Documentation
    #
    class CreateBlueprintResponse < Struct.new(
      :blueprint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint to create a new
    #   version of.
    #   @return [String]
    #
    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If you use the same
    #   token for a request that matches a previous request, the service
    #   ignores the request, but does not return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateBlueprintVersionRequest AWS API Documentation
    #
    class CreateBlueprintVersionRequest < Struct.new(
      :blueprint_arn,
      :client_request_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   The version of the blueprint that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateBlueprintVersionResponse AWS API Documentation
    #
    class CreateBlueprintVersionResponse < Struct.new(
      :blueprint_arn,
      :blueprint_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_request_token
    #   A unique, case-sensitive identifier that you provide to ensure that
    #   the operation completes no more than one time. If you use the same
    #   token for a request that matches a previous request, the service
    #   ignores the request, but does not return an error.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   A unique name for the project.
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   A description of the project.
    #   @return [String]
    #
    # @!attribute [rw] extraction_configuration
    #   The configuration that controls how Amazon Textract extracts content
    #   from the document, including bounding boxes, granularity, and output
    #   format.
    #   @return [Types::ExtractionConfiguration]
    #
    # @!attribute [rw] generative_configuration
    #   The configuration that controls generative capabilities such as
    #   summarization and figure captioning.
    #   @return [Types::GenerativeConfiguration]
    #
    # @!attribute [rw] custom_configuration
    #   The configuration that associates blueprints with the project for
    #   custom output extraction.
    #   @return [Types::CustomConfiguration]
    #
    # @!attribute [rw] splitter_configuration
    #   The configuration that controls whether multi-document packets are
    #   split into individual documents.
    #   @return [Types::SplitterConfiguration]
    #
    # @!attribute [rw] sensitive_data_configuration
    #   The configuration that controls detection and redaction of sensitive
    #   data, such as personally identifiable information (PII).
    #   @return [Types::SensitiveDataConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS encryption configuration used to encrypt the project at
    #   rest. If you don't specify a value, Amazon Textract encrypts the
    #   project using an AWS owned key.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) to assign to the project.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateProjectRequest AWS API Documentation
    #
    class CreateProjectRequest < Struct.new(
      :client_request_token,
      :project_name,
      :project_description,
      :extraction_configuration,
      :generative_configuration,
      :custom_configuration,
      :splitter_configuration,
      :sensitive_data_configuration,
      :encryption_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project that was created.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the project, indicating whether creation completed
    #   successfully or failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CreateProjectResponse AWS API Documentation
    #
    class CreateProjectResponse < Struct.new(
      :project_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates blueprints with a project to produce custom structured
    # output. A fallback blueprint can be supplied for documents that do not
    # match a primary blueprint.
    #
    # @!attribute [rw] blueprints
    #   The blueprints used to extract custom structured output.
    #   @return [Array<Types::BlueprintItem>]
    #
    # @!attribute [rw] fallback_blueprints
    #   The blueprint used when a document does not match any of the primary
    #   blueprints. Requires at least one blueprint in `Blueprints`.
    #   @return [Array<Types::BlueprintItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/CustomConfiguration AWS API Documentation
    #
    class CustomConfiguration < Struct.new(
      :blueprints,
      :fallback_blueprints)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteAdapterRequest AWS API Documentation
    #
    class DeleteAdapterRequest < Struct.new(
      :adapter_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteAdapterResponse AWS API Documentation
    #
    class DeleteAdapterResponse < Aws::EmptyStructure; end

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter version that will be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] adapter_version
    #   Specifies the adapter version to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteAdapterVersionRequest AWS API Documentation
    #
    class DeleteAdapterVersionRequest < Struct.new(
      :adapter_id,
      :adapter_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteAdapterVersionResponse AWS API Documentation
    #
    class DeleteAdapterVersionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint to delete.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   The version of the blueprint to delete. If omitted, the entire
    #   blueprint and all of its versions are deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteBlueprintRequest AWS API Documentation
    #
    class DeleteBlueprintRequest < Struct.new(
      :blueprint_arn,
      :blueprint_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteBlueprintResponse AWS API Documentation
    #
    class DeleteBlueprintResponse < Aws::EmptyStructure; end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteProjectRequest AWS API Documentation
    #
    class DeleteProjectRequest < Struct.new(
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DeleteProjectResponse AWS API Documentation
    #
    class DeleteProjectResponse < Aws::EmptyStructure; end

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

    # A structure that holds information regarding a detected signature on a
    # page.
    #
    # @!attribute [rw] page
    #   The page a detected signature was found on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DetectedSignature AWS API Documentation
    #
    class DetectedSignature < Struct.new(
      :page)
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

    # Summary information about documents grouped by the same document type.
    #
    # @!attribute [rw] type
    #   The type of document that Amazon Textract has detected. See [Analyze
    #   Lending Response Objects][1] for a list of all types returned by
    #   Textract.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/lending-response-objects.html
    #   @return [String]
    #
    # @!attribute [rw] split_documents
    #   An array that contains information about the pages of a document,
    #   defined by logical boundary.
    #   @return [Array<Types::SplitDocument>]
    #
    # @!attribute [rw] detected_signatures
    #   A list of the detected signatures found in a document group.
    #   @return [Array<Types::DetectedSignature>]
    #
    # @!attribute [rw] undetected_signatures
    #   A list of any expected signatures not found in a document group.
    #   @return [Array<Types::UndetectedSignature>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/DocumentGroup AWS API Documentation
    #
    class DocumentGroup < Struct.new(
      :type,
      :split_documents,
      :detected_signatures,
      :undetected_signatures)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon S3 bucket that contains the document to be processed. It's
    # used by asynchronous operations.
    #
    # The input document can be an image file in JPEG or PNG format. It can
    # also be a file in PDF format.
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

    # Specifies the AWS Key Management Service (AWS KMS) key and encryption
    # context used to encrypt a resource at rest. When omitted, Amazon
    # Textract encrypts the resource using an AWS owned key.
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key to use for encryption. This can be
    #   a key ID, key ARN, alias name, or alias ARN.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   A set of key-value pairs that Amazon Textract includes as the AWS
    #   KMS encryption context when encrypting and decrypting the resource.
    #
    #   On `UpdateProject` and `UpdateBlueprint`, this member is the one
    #   exception to replacing a supplied configuration whole. If you omit
    #   it, the stored encryption context is kept. To clear a custom
    #   encryption context, specify an empty map (`{}`).
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_id,
      :kms_encryption_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # The evaluation metrics (F1 score, Precision, and Recall) for an
    # adapter version.
    #
    # @!attribute [rw] f1_score
    #   The F1 score for an adapter version.
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The Precision score for an adapter version.
    #   @return [Float]
    #
    # @!attribute [rw] recall
    #   The Recall score for an adapter version.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/EvaluationMetric AWS API Documentation
    #
    class EvaluationMetric < Struct.new(
      :f1_score,
      :precision,
      :recall)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event bus settings for a job.
    #
    # @!attribute [rw] state
    #   Set to `ENABLED` to send events to an event bus, or `DISABLED` to
    #   not send them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/EventBridgeConfiguration AWS API Documentation
    #
    class EventBridgeConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the kind of currency detected.
    #
    # @!attribute [rw] code
    #   Currency code for detected currency. the current supported codes
    #   are:
    #
    #   * USD
    #
    #   * EUR
    #
    #   * GBP
    #
    #   * CAD
    #
    #   * INR
    #
    #   * JPY
    #
    #   * CHF
    #
    #   * AUD
    #
    #   * CNY
    #
    #   * BZR
    #
    #   * SEK
    #
    #   * HKD
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Percentage confideence in the detected currency.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseCurrency AWS API Documentation
    #
    class ExpenseCurrency < Struct.new(
      :code,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] blocks
    #   This is a block object, the same as reported when DetectDocumentText
    #   is run on a document. It provides word level recognition of text.
    #   @return [Array<Types::Block>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseDocument AWS API Documentation
    #
    class ExpenseDocument < Struct.new(
      :expense_index,
      :summary_fields,
      :line_item_groups,
      :blocks)
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
    # @!attribute [rw] currency
    #   Shows the kind of currency, both the code and confidence associated
    #   with any monatary value detected.
    #   @return [Types::ExpenseCurrency]
    #
    # @!attribute [rw] group_properties
    #   Shows which group a response object belongs to, such as whether an
    #   address line belongs to the vendor's address or the recipent's
    #   address.
    #   @return [Array<Types::ExpenseGroupProperty>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseField AWS API Documentation
    #
    class ExpenseField < Struct.new(
      :type,
      :label_detection,
      :value_detection,
      :page_number,
      :currency,
      :group_properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Shows the group that a certain key belongs to. This helps
    # differentiate between names and addresses for different organizations,
    # that can be hard to determine via JSON response.
    #
    # @!attribute [rw] types
    #   Informs you on whether the expense group is a name or an address.
    #   @return [Array<String>]
    #
    # @!attribute [rw] id
    #   Provides a group Id number, which will be the same for each in the
    #   group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExpenseGroupProperty AWS API Documentation
    #
    class ExpenseGroupProperty < Struct.new(
      :types,
      :id)
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

    # Contains information extracted by an analysis operation after using
    # StartLendingAnalysis.
    #
    # @!attribute [rw] lending_document
    #   Holds the structured data returned by AnalyzeDocument for lending
    #   documents.
    #   @return [Types::LendingDocument]
    #
    # @!attribute [rw] expense_document
    #   The structure holding all the information returned by AnalyzeExpense
    #   @return [Types::ExpenseDocument]
    #
    # @!attribute [rw] identity_document
    #   The structure that lists each document processed in an AnalyzeID
    #   operation.
    #   @return [Types::IdentityDocument]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Extraction AWS API Documentation
    #
    class Extraction < Struct.new(
      :lending_document,
      :expense_document,
      :identity_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls how Amazon Textract extracts content from a document,
    # including whether bounding boxes are returned, the granularity of
    # extraction, and the output format.
    #
    # @!attribute [rw] bounding_box
    #   Controls whether bounding box geometry is included in the extraction
    #   output.
    #   @return [Types::BoundingBoxConfiguration]
    #
    # @!attribute [rw] granularity
    #   Controls the granularity levels at which content is extracted.
    #   @return [Types::ExtractionGranularity]
    #
    # @!attribute [rw] output_format
    #   Controls the format of the extraction output.
    #   @return [Types::OutputFormat]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExtractionConfiguration AWS API Documentation
    #
    class ExtractionConfiguration < Struct.new(
      :bounding_box,
      :granularity,
      :output_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the granularity levels at which Amazon Textract extracts
    # content from a document.
    #
    # @!attribute [rw] types
    #   The granularity levels at which Amazon Textract extracts content,
    #   from the whole document down to individual lines of text. Each type
    #   can appear only once.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ExtractionGranularity AWS API Documentation
    #
    class ExtractionGranularity < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls whether generative captions are produced for figures detected
    # in the document.
    #
    # @!attribute [rw] state
    #   Set to `ENABLED` to produce figure captions, or `DISABLED` to omit
    #   them.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/FigureCaptionConfiguration AWS API Documentation
    #
    class FigureCaptionConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls the generative capabilities applied during a document
    # insights job, such as summarization and figure captioning.
    #
    # @!attribute [rw] summarization
    #   Controls whether a generative summary of the document is produced.
    #   If you omit it, no summary is produced.
    #   @return [Types::SummarizationConfiguration]
    #
    # @!attribute [rw] figure_caption
    #   Controls whether generative captions are produced for figures
    #   detected in the document. If you omit it, no figure captions are
    #   produced.
    #   @return [Types::FigureCaptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GenerativeConfiguration AWS API Documentation
    #
    class GenerativeConfiguration < Struct.new(
      :summarization,
      :figure_caption)
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
    # @!attribute [rw] rotation_angle
    #   Provides a numerical value corresponding to the rotation of the WORD
    #   block. Possible values are 0, 90, 180, and 270.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Geometry AWS API Documentation
    #
    class Geometry < Struct.new(
      :bounding_box,
      :polygon,
      :rotation_angle)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetAdapterRequest AWS API Documentation
    #
    class GetAdapterRequest < Struct.new(
      :adapter_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string identifying the adapter that information has been retrieved
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] adapter_name
    #   The name of the requested adapter.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time the requested adapter was created at.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description for the requested adapter.
    #   @return [String]
    #
    # @!attribute [rw] feature_types
    #   List of the targeted feature types for the requested adapter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_update
    #   Binary value indicating if the adapter is being automatically
    #   updated or not.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) associated with the adapter that has
    #   been retrieved.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetAdapterResponse AWS API Documentation
    #
    class GetAdapterResponse < Struct.new(
      :adapter_id,
      :adapter_name,
      :creation_time,
      :description,
      :feature_types,
      :auto_update,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string specifying a unique ID for the adapter version you want to
    #   retrieve information for.
    #   @return [String]
    #
    # @!attribute [rw] adapter_version
    #   A string specifying the adapter version you want to retrieve
    #   information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetAdapterVersionRequest AWS API Documentation
    #
    class GetAdapterVersionRequest < Struct.new(
      :adapter_id,
      :adapter_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter version being
    #   retrieved.
    #   @return [String]
    #
    # @!attribute [rw] adapter_version
    #   A string containing the adapter version that has been retrieved.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The time that the adapter version was created.
    #   @return [Time]
    #
    # @!attribute [rw] feature_types
    #   List of the targeted feature types for the requested adapter
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] status
    #   The status of the adapter version that has been requested.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message that describes the status of the requested adapter
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] dataset_config
    #   Specifies a dataset used to train a new adapter version. Takes a
    #   ManifestS3Objec as the value.
    #   @return [Types::AdapterVersionDatasetConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier for your AWS Key Management Service key (AWS KMS
    #   key). Used to encrypt your documents.
    #   @return [String]
    #
    # @!attribute [rw] output_config
    #   Sets whether or not your output will go to a user created bucket.
    #   Used to set the name of the bucket, and the prefix on the output
    #   file.
    #
    #   `OutputConfig` is an optional parameter which lets you adjust where
    #   your output will be placed. By default, Amazon Textract will store
    #   the results internally and can only be accessed by the Get API
    #   operations. With `OutputConfig` enabled, you can set the name of the
    #   bucket the output will be sent to the file prefix of the results
    #   where you can download your results. Additionally, you can set the
    #   `KMSKeyID` parameter to a customer master key (CMK) to encrypt your
    #   output. Without this parameter set Amazon Textract will encrypt
    #   server-side using the AWS managed CMK for Amazon S3.
    #
    #   Decryption of Customer Content is necessary for processing of the
    #   documents by Amazon Textract. If your account is opted out under an
    #   AI services opt out policy then all unencrypted Customer Content is
    #   immediately and permanently deleted after the Customer Content has
    #   been processed by the service. No copy of of the output is retained
    #   by Amazon Textract. For information about how to opt out, see [
    #   Managing AI services opt-out policy. ][1]
    #
    #   For more information on data privacy, see the [Data Privacy FAQ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://aws.amazon.com/compliance/data-privacy-faq/
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] evaluation_metrics
    #   The evaluation metrics (F1 score, Precision, and Recall) for the
    #   requested version, grouped by baseline metrics and adapter version.
    #   @return [Array<Types::AdapterVersionEvaluationMetric>]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that are associated with the adapter
    #   version.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetAdapterVersionResponse AWS API Documentation
    #
    class GetAdapterVersionResponse < Struct.new(
      :adapter_id,
      :adapter_version,
      :creation_time,
      :feature_types,
      :status,
      :status_message,
      :dataset_config,
      :kms_key_id,
      :output_config,
      :evaluation_metrics,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint to retrieve.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   The version of the blueprint to retrieve. If omitted, the latest
    #   version is returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetBlueprintRequest AWS API Documentation
    #
    class GetBlueprintRequest < Struct.new(
      :blueprint_arn,
      :blueprint_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_name
    #   The name of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_version
    #   The version of the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The schema of the blueprint, which defines the fields to extract and
    #   their expected structure.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The identifier of the AWS KMS key used to encrypt the blueprint.
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   The AWS KMS encryption context used when encrypting the blueprint.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the blueprint was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the blueprint was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetBlueprintResponse AWS API Documentation
    #
    class GetBlueprintResponse < Struct.new(
      :blueprint_arn,
      :blueprint_name,
      :blueprint_version,
      :schema,
      :kms_key_id,
      :kms_encryption_context,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the document insights job to
    #   retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentInsightsRequest AWS API Documentation
    #
    class GetDocumentInsightsRequest < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] status
    #   The current status of the document insights job, indicating whether
    #   it is still running, has completed, or has failed. When the job has
    #   failed, inspect `ErrorType` and `ErrorMessage` for details.
    #   @return [String]
    #
    # @!attribute [rw] output_configuration
    #   The Amazon S3 location where the analysis results are written.
    #   @return [Types::OutputConfiguration]
    #
    # @!attribute [rw] error_type
    #   The type of error that caused the job to fail. Present only when the
    #   job status is a failure state.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A human-readable description of the error that caused the job to
    #   fail. Present only when the job status is a failure state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetDocumentInsightsResponse AWS API Documentation
    #
    class GetDocumentInsightsResponse < Struct.new(
      :status,
      :output_configuration,
      :error_type,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] job_id
    #   A unique identifier for the lending or text-detection job. The
    #   `JobId` is returned from `StartLendingAnalysis`. A `JobId` value is
    #   only valid for 7 days.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per paginated call. The
    #   largest value that you can specify is 30. If you specify a value
    #   greater than 30, a maximum of 30 results is returned. The default
    #   value is 30.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If the previous response was incomplete, Amazon Textract returns a
    #   pagination token in the response. You can use this pagination token
    #   to retrieve the next set of lending results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetLendingAnalysisRequest AWS API Documentation
    #
    class GetLendingAnalysisRequest < Struct.new(
      :job_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Information about the input document.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] job_status
    #   The current status of the lending analysis job.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If the response is truncated, Amazon Textract returns this token.
    #   You can use this token in the subsequent request to retrieve the
    #   next set of lending results.
    #   @return [String]
    #
    # @!attribute [rw] results
    #   Holds the information returned by one of AmazonTextract's document
    #   analysis operations for the pinstripe.
    #   @return [Array<Types::LendingResult>]
    #
    # @!attribute [rw] warnings
    #   A list of warnings that occurred during the lending analysis
    #   operation.
    #   @return [Array<Types::Warning>]
    #
    # @!attribute [rw] status_message
    #   Returns if the lending analysis job could not be completed. Contains
    #   explanation for what error occurred.
    #   @return [String]
    #
    # @!attribute [rw] analyze_lending_model_version
    #   The current model version of the Analyze Lending API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetLendingAnalysisResponse AWS API Documentation
    #
    class GetLendingAnalysisResponse < Struct.new(
      :document_metadata,
      :job_status,
      :next_token,
      :results,
      :warnings,
      :status_message,
      :analyze_lending_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   A unique identifier for the lending or text-detection job. The
    #   `JobId` is returned from StartLendingAnalysis. A `JobId` value is
    #   only valid for 7 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetLendingAnalysisSummaryRequest AWS API Documentation
    #
    class GetLendingAnalysisSummaryRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] document_metadata
    #   Information about the input document.
    #   @return [Types::DocumentMetadata]
    #
    # @!attribute [rw] job_status
    #   The current status of the lending analysis job.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   Contains summary information for documents grouped by type.
    #   @return [Types::LendingSummary]
    #
    # @!attribute [rw] warnings
    #   A list of warnings that occurred during the lending analysis
    #   operation.
    #   @return [Array<Types::Warning>]
    #
    # @!attribute [rw] status_message
    #   Returns if the lending analysis could not be completed. Contains
    #   explanation for what error occurred.
    #   @return [String]
    #
    # @!attribute [rw] analyze_lending_model_version
    #   The current model version of the Analyze Lending API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetLendingAnalysisSummaryResponse AWS API Documentation
    #
    class GetLendingAnalysisSummaryResponse < Struct.new(
      :document_metadata,
      :job_status,
      :summary,
      :warnings,
      :status_message,
      :analyze_lending_model_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetProjectRequest AWS API Documentation
    #
    class GetProjectRequest < Struct.new(
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   The description of the project.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the project, indicating whether it was created
    #   successfully or failed.
    #   @return [String]
    #
    # @!attribute [rw] extraction_configuration
    #   The configuration that controls how Amazon Textract extracts content
    #   from the document, including bounding boxes, granularity, and output
    #   format.
    #   @return [Types::ExtractionConfiguration]
    #
    # @!attribute [rw] generative_configuration
    #   The configuration that controls generative capabilities such as
    #   summarization and figure captioning.
    #   @return [Types::GenerativeConfiguration]
    #
    # @!attribute [rw] custom_configuration
    #   The configuration that associates blueprints with the project for
    #   custom output extraction.
    #   @return [Types::CustomConfiguration]
    #
    # @!attribute [rw] splitter_configuration
    #   The configuration that controls whether multi-document packets are
    #   split into individual documents.
    #   @return [Types::SplitterConfiguration]
    #
    # @!attribute [rw] sensitive_data_configuration
    #   The configuration that controls detection and redaction of sensitive
    #   data, such as personally identifiable information (PII).
    #   @return [Types::SensitiveDataConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS encryption configuration used to encrypt the project at
    #   rest.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the project was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/GetProjectResponse AWS API Documentation
    #
    class GetProjectResponse < Struct.new(
      :project_arn,
      :project_name,
      :project_description,
      :status,
      :extraction_configuration,
      :generative_configuration,
      :custom_configuration,
      :splitter_configuration,
      :sensitive_data_configuration,
      :encryption_configuration,
      :creation_time,
      :last_modified_time)
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
    # <note markdown="1"> Amazon Textract uses Amazon Augmented AI (A2I) to run the human review
    # workflows that you specify in `HumanLoopConfig`. A2I entered
    # maintenance mode in July 2026 and no longer accepts new customers. If
    # your account is not an existing A2I customer, requests fail with an
    # `InvalidParameterException`. For more information, see [AWS service
    # availability][1]. If you're an existing A2I customer but receive this
    # error, contact AWS Support and request assistance from the A2I team.
    #
    #  </note>
    #
    #
    #
    # [1]: https://aws.amazon.com/about-aws/whats-new/2026/06/aws-service-availability/
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
    # @!attribute [rw] blocks
    #   Individual word recognition, as returned by document detection.
    #   @return [Array<Types::Block>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/IdentityDocument AWS API Documentation
    #
    class IdentityDocument < Struct.new(
      :document_index,
      :identity_document_fields,
      :blocks)
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

    # The Amazon S3 location of the input document for a document insights
    # job.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI of the input document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/InputConfiguration AWS API Documentation
    #
    class InputConfiguration < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Textract experienced a service issue. Try your call again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/InternalServerError AWS API Documentation
    #
    class InternalServerError < Aws::EmptyStructure; end

    # An invalid job identifier was passed to an asynchronous analysis
    # operation.
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

    # The results extracted for a lending document.
    #
    # @!attribute [rw] text
    #   The text extracted for a detected value in a lending document.
    #   @return [String]
    #
    # @!attribute [rw] selection_status
    #   The selection status of a selection element, such as an option
    #   button or check box.
    #   @return [String]
    #
    # @!attribute [rw] geometry
    #   Information about where the following items are located on a
    #   document page: detected page, text, key-value pairs, tables, table
    #   cells, and selection elements.
    #   @return [Types::Geometry]
    #
    # @!attribute [rw] confidence
    #   The confidence level for the text of a detected value in a lending
    #   document.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LendingDetection AWS API Documentation
    #
    class LendingDetection < Struct.new(
      :text,
      :selection_status,
      :geometry,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # Holds the structured data returned by AnalyzeDocument for lending
    # documents.
    #
    # @!attribute [rw] lending_fields
    #   An array of LendingField objects.
    #   @return [Array<Types::LendingField>]
    #
    # @!attribute [rw] signature_detections
    #   A list of signatures detected in a lending document.
    #   @return [Array<Types::SignatureDetection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LendingDocument AWS API Documentation
    #
    class LendingDocument < Struct.new(
      :lending_fields,
      :signature_detections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Holds the normalized key-value pairs returned by AnalyzeDocument,
    # including the document type, detected text, and geometry.
    #
    # @!attribute [rw] type
    #   The type of the lending document.
    #   @return [String]
    #
    # @!attribute [rw] key_detection
    #   The results extracted for a lending document.
    #   @return [Types::LendingDetection]
    #
    # @!attribute [rw] value_detections
    #   An array of LendingDetection objects.
    #   @return [Array<Types::LendingDetection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LendingField AWS API Documentation
    #
    class LendingField < Struct.new(
      :type,
      :key_detection,
      :value_detections)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the detections for each page analyzed through the Analyze
    # Lending API.
    #
    # @!attribute [rw] page
    #   The page number for a page, with regard to whole submission.
    #   @return [Integer]
    #
    # @!attribute [rw] page_classification
    #   The classifier result for a given page.
    #   @return [Types::PageClassification]
    #
    # @!attribute [rw] extractions
    #   An array of Extraction to hold structured data. e.g. normalized key
    #   value pairs instead of raw OCR detections .
    #   @return [Array<Types::Extraction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LendingResult AWS API Documentation
    #
    class LendingResult < Struct.new(
      :page,
      :page_classification,
      :extractions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information regarding DocumentGroups and
    # UndetectedDocumentTypes.
    #
    # @!attribute [rw] document_groups
    #   Contains an array of all DocumentGroup objects.
    #   @return [Array<Types::DocumentGroup>]
    #
    # @!attribute [rw] undetected_document_types
    #   UndetectedDocumentTypes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/LendingSummary AWS API Documentation
    #
    class LendingSummary < Struct.new(
      :document_groups,
      :undetected_document_types)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter to match for when
    #   listing adapter versions.
    #   @return [String]
    #
    # @!attribute [rw] after_creation_time
    #   Specifies the lower bound for the ListAdapterVersions operation.
    #   Ensures ListAdapterVersions returns only adapter versions created
    #   after the specified creation time.
    #   @return [Time]
    #
    # @!attribute [rw] before_creation_time
    #   Specifies the upper bound for the ListAdapterVersions operation.
    #   Ensures ListAdapterVersions returns only adapter versions created
    #   after the specified creation time.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return when listing adapter
    #   versions.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return when listing adapter
    #   versions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListAdapterVersionsRequest AWS API Documentation
    #
    class ListAdapterVersionsRequest < Struct.new(
      :adapter_id,
      :after_creation_time,
      :before_creation_time,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_versions
    #   Adapter versions that match the filtering criteria specified when
    #   calling ListAdapters.
    #   @return [Array<Types::AdapterVersionOverview>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return when listing adapter
    #   versions.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListAdapterVersionsResponse AWS API Documentation
    #
    class ListAdapterVersionsResponse < Struct.new(
      :adapter_versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] after_creation_time
    #   Specifies the lower bound for the ListAdapters operation. Ensures
    #   ListAdapters returns only adapters created after the specified
    #   creation time.
    #   @return [Time]
    #
    # @!attribute [rw] before_creation_time
    #   Specifies the upper bound for the ListAdapters operation. Ensures
    #   ListAdapters returns only adapters created before the specified
    #   creation time.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return when listing adapters.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return when listing adapters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListAdaptersRequest AWS API Documentation
    #
    class ListAdaptersRequest < Struct.new(
      :after_creation_time,
      :before_creation_time,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapters
    #   A list of adapters that matches the filtering criteria specified
    #   when calling ListAdapters.
    #   @return [Array<Types::AdapterOverview>]
    #
    # @!attribute [rw] next_token
    #   Identifies the next page of results to return when listing adapters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListAdaptersResponse AWS API Documentation
    #
    class ListAdaptersResponse < Struct.new(
      :adapters,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of blueprints to return in each page of results.
    #   If you don't specify a value, the service selects a default page
    #   size. Use the `NextToken` value in the response to retrieve any
    #   remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to
    #   `ListBlueprints`. Use it to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of a blueprint to filter the results
    #   by.
    #   @return [String]
    #
    # @!attribute [rw] project_filter
    #   A filter that limits the results to blueprints associated with the
    #   specified project.
    #   @return [Types::ProjectFilter]
    #
    # @!attribute [rw] resource_owner
    #   A filter that limits the results to blueprints owned by your account
    #   or to blueprints provided by Amazon Textract.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListBlueprintsRequest AWS API Documentation
    #
    class ListBlueprintsRequest < Struct.new(
      :max_results,
      :next_token,
      :blueprint_arn,
      :project_filter,
      :resource_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprints
    #   A list of blueprint summaries that match the request.
    #   @return [Array<Types::BlueprintSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to use in a subsequent call to `ListBlueprints`
    #   to retrieve the next page of results. This value is `null` when
    #   there are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListBlueprintsResponse AWS API Documentation
    #
    class ListBlueprintsResponse < Struct.new(
      :blueprints,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of projects to return in each page of results. If
    #   you don't specify a value, the service selects a default page size.
    #   Use the `NextToken` value in the response to retrieve any remaining
    #   results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A pagination token returned from a previous call to `ListProjects`.
    #   Use it to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] blueprint_filter
    #   A filter that limits the results to projects associated with the
    #   specified blueprint.
    #   @return [Types::BlueprintFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListProjectsRequest AWS API Documentation
    #
    class ListProjectsRequest < Struct.new(
      :max_results,
      :next_token,
      :blueprint_filter)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] projects
    #   A list of project summaries that match the request.
    #   @return [Array<Types::ProjectSummary>]
    #
    # @!attribute [rw] next_token
    #   A pagination token to use in a subsequent call to `ListProjects` to
    #   retrieve the next page of results. This value is `null` when there
    #   are no more results to return.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListProjectsResponse AWS API Documentation
    #
    class ListProjectsResponse < Struct.new(
      :projects,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that specifies the resource to list
    #   tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that are part of the requested
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
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
    # document operation.
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

    # Notification settings for a job.
    #
    # @!attribute [rw] event_bridge_configuration
    #   Event bus settings.
    #   @return [Types::EventBridgeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :event_bridge_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls whether an additional file format is produced alongside the
    # primary extraction output.
    #
    # @!attribute [rw] state
    #   Set to `ENABLED` to produce an additional file format, or `DISABLED`
    #   to omit it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/OutputAdditionalFileFormat AWS API Documentation
    #
    class OutputAdditionalFileFormat < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sets whether or not your output will go to a user created bucket. Used
    # to set the name of the bucket, and the prefix on the output file.
    #
    # `OutputConfig` is an optional parameter which lets you adjust where
    # your output will be placed. By default, Amazon Textract will store the
    # results internally and can only be accessed by the Get API operations.
    # With `OutputConfig` enabled, you can set the name of the bucket the
    # output will be sent to the file prefix of the results where you can
    # download your results. Additionally, you can set the `KMSKeyID`
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

    # The Amazon S3 location where the results of a document insights job
    # are written.
    #
    # @!attribute [rw] s3_uri
    #   The Amazon S3 URI where the analysis results are written.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/OutputConfiguration AWS API Documentation
    #
    class OutputConfiguration < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls the format of the extraction output, including the text
    # format and any additional file formats.
    #
    # @!attribute [rw] additional_file_format
    #   Controls whether an additional file format is produced alongside the
    #   primary output.
    #   @return [Types::OutputAdditionalFileFormat]
    #
    # @!attribute [rw] text_format
    #   Controls the text formats produced in the extraction output.
    #   @return [Types::OutputTextFormat]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/OutputFormat AWS API Documentation
    #
    class OutputFormat < Struct.new(
      :additional_file_format,
      :text_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the text formats produced in the extraction output.
    #
    # @!attribute [rw] types
    #   The text formats produced in the extraction output. Each type can
    #   appear only once, and `CSV` can't be the only type.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/OutputTextFormat AWS API Documentation
    #
    class OutputTextFormat < Struct.new(
      :types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies which personally identifiable information (PII) entity types
    # to detect and how to mask them.
    #
    # @!attribute [rw] pii_entity_types
    #   The list of PII entity types to detect. Each type can appear only
    #   once.
    #   @return [Array<String>]
    #
    # @!attribute [rw] redaction_mask_mode
    #   How detected PII is masked in the redacted output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/PIIEntitiesConfiguration AWS API Documentation
    #
    class PIIEntitiesConfiguration < Struct.new(
      :pii_entity_types,
      :redaction_mask_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # The class assigned to a Page object detected in an input document.
    # Contains information regarding the predicted type/class of a
    # document's page and the page number that the Page object was detected
    # on.
    #
    # @!attribute [rw] page_type
    #   The class, or document type, assigned to a detected Page object. The
    #   class, or document type, assigned to a detected Page object.
    #   @return [Array<Types::Prediction>]
    #
    # @!attribute [rw] page_number
    #   The page number the value was detected on, relative to Amazon
    #   Textract's starting position.
    #   @return [Array<Types::Prediction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/PageClassification AWS API Documentation
    #
    class PageClassification < Struct.new(
      :page_type,
      :page_number)
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

    # Contains information regarding predicted values returned by Amazon
    # Textract operations, including the predicted value and the confidence
    # in the predicted value.
    #
    # @!attribute [rw] value
    #   The predicted value of a detected object.
    #   @return [String]
    #
    # @!attribute [rw] confidence
    #   Amazon Textract's confidence in its predicted value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Prediction AWS API Documentation
    #
    class Prediction < Struct.new(
      :value,
      :confidence)
      SENSITIVE = []
      include Aws::Structure
    end

    # A filter used to limit results to a specific project.
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project to filter by.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ProjectFilter AWS API Documentation
    #
    class ProjectFilter < Struct.new(
      :project_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of a project, returned in the results of `ListProjects`.
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The date and time that the project was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the project was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ProjectSummary AWS API Documentation
    #
    class ProjectSummary < Struct.new(
      :project_arn,
      :project_name,
      :creation_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests exceeded your throughput limit. If you want to
    # increase this limit, contact Amazon Textract.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ProvisionedThroughputExceededException AWS API Documentation
    #
    class ProvisionedThroughputExceededException < Aws::EmptyStructure; end

    # @!attribute [rw] queries
    #   @return [Array<Types::Query>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/QueriesConfig AWS API Documentation
    #
    class QueriesConfig < Struct.new(
      :queries)
      SENSITIVE = []
      include Aws::Structure
    end

    # Each query contains the question you want to ask in the Text and the
    # alias you want to associate.
    #
    # @!attribute [rw] text
    #   Question that Amazon Textract will apply to the document. An example
    #   would be "What is the customer's SSN?"
    #   @return [String]
    #
    # @!attribute [rw] alias
    #   Alias attached to the query, for ease of location.
    #   @return [String]
    #
    # @!attribute [rw] pages
    #   Pages is a parameter that the user inputs to specify which pages to
    #   apply a query to. The following is a list of rules for using this
    #   parameter.
    #
    #   * If a page is not specified, it is set to `["1"]` by default.
    #
    #   * The following characters are allowed in the parameter's string:
    #     `0 1 2 3 4 5 6 7 8 9 - *`. No whitespace is allowed.
    #
    #   * When using * to indicate all pages, it must be the only element
    #     in the list.
    #
    #   * You can use page intervals, such as `[“1-3”, “1-1”, “4-*”]`. Where
    #     `*` indicates last page of document.
    #
    #   * Specified pages must be greater than 0 and less than or equal to
    #     the number of pages in the document.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/Query AWS API Documentation
    #
    class Query < Struct.new(
      :text,
      :alias,
      :pages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how blocks are related to each other. A `Block`
    # object contains 0 or more `Relation` objects in a list,
    # `Relationships`. For more information, see Block.
    #
    # The `Type` element provides the type of the relationship for all
    # blocks in the `IDs` array.
    #
    # @!attribute [rw] type
    #   The type of relationship between the blocks in the IDs array and the
    #   current block. The following list describes the relationship types
    #   that can be returned.
    #
    #   * *VALUE* - A list that contains the ID of the VALUE block that's
    #     associated with the KEY of a key-value pair.
    #
    #   * *CHILD* - A list of IDs that identify blocks found within the
    #     current block object. For example, WORD blocks have a CHILD
    #     relationship to the LINE block type.
    #
    #   * *MERGED\_CELL* - A list of IDs that identify each of the
    #     MERGED\_CELL block types in a table.
    #
    #   * *ANSWER* - A list that contains the ID of the QUERY\_RESULT block
    #     that’s associated with the corresponding QUERY block.
    #
    #   * *TABLE* - A list of IDs that identify associated TABLE block
    #     types.
    #
    #   * *TABLE\_TITLE* - A list that contains the ID for the TABLE\_TITLE
    #     block type in a table.
    #
    #   * *TABLE\_FOOTER* - A list of IDs that identify the TABLE\_FOOTER
    #     block types in a table.
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

    # Returned when an operation tried to access a nonexistent resource.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Aws::EmptyStructure; end

    # The S3 bucket name and file name that identifies the document.
    #
    # The AWS Region for the S3 bucket that contains the document must match
    # the Region that you use for Amazon Textract operations.
    #
    # For Amazon Textract to process a file in an S3 bucket, the user must
    # have permission to access the S3 bucket and file.
    #
    # @!attribute [rw] bucket
    #   The name of the S3 bucket. Note that the # character is not valid in
    #   the file name.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The file name of the input document. Image files may be in PDF,
    #   TIFF, JPEG, or PNG format.
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

    # Controls detection and redaction of sensitive data, such as personally
    # identifiable information (PII), in the output.
    #
    # @!attribute [rw] detection_mode
    #   The detection mode. Valid values:
    #
    #   * `DETECTION` - Only detects sensitive data.
    #
    #   * `DETECTION_AND_REDACTION` - Detects and redacts sensitive data in
    #     the output.
    #
    #   * `DISABLED` - Does not detect sensitive data.
    #   @return [String]
    #
    # @!attribute [rw] pii_entities_configuration
    #   The configuration that specifies which PII entity types to detect
    #   and how to mask them. If you omit it, Amazon Textract detects all
    #   PII entity types (`ALL`) and masks them with `ENTITY_TYPE`.
    #   @return [Types::PIIEntitiesConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/SensitiveDataConfiguration AWS API Documentation
    #
    class SensitiveDataConfiguration < Struct.new(
      :detection_mode,
      :pii_entities_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returned when a request cannot be completed as it would exceed a
    # maximum service quota.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Aws::EmptyStructure; end

    # Information regarding a detected signature on a page.
    #
    # @!attribute [rw] confidence
    #   The confidence, from 0 to 100, in the predicted values for a
    #   detected signature.
    #   @return [Float]
    #
    # @!attribute [rw] geometry
    #   Information about where the following items are located on a
    #   document page: detected page, text, key-value pairs, tables, table
    #   cells, and selection elements.
    #   @return [Types::Geometry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/SignatureDetection AWS API Documentation
    #
    class SignatureDetection < Struct.new(
      :confidence,
      :geometry)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the pages of a document, defined by logical
    # boundary.
    #
    # @!attribute [rw] index
    #   The index for a given document in a DocumentGroup of a specific
    #   Type.
    #   @return [Integer]
    #
    # @!attribute [rw] pages
    #   An array of page numbers for a for a given document, ordered by
    #   logical boundary.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/SplitDocument AWS API Documentation
    #
    class SplitDocument < Struct.new(
      :index,
      :pages)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls whether a multi-document packet is split into individual
    # documents before analysis.
    #
    # @!attribute [rw] state
    #   Set to `ENABLED` to split multi-document packets, or `DISABLED` to
    #   treat the input as a single document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/SplitterConfiguration AWS API Documentation
    #
    class SplitterConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] queries_config
    #   @return [Types::QueriesConfig]
    #
    # @!attribute [rw] adapters_config
    #   Specifies the adapter to be used when analyzing a document.
    #   @return [Types::AdaptersConfig]
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
      :kms_key_id,
      :queries_config,
      :adapters_config)
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

    # @!attribute [rw] input_configuration
    #   The Amazon S3 location of the input document to analyze.
    #   @return [Types::InputConfiguration]
    #
    # @!attribute [rw] output_configuration
    #   The Amazon S3 location where the analysis results are written.
    #   @return [Types::OutputConfiguration]
    #
    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project whose configuration is
    #   used to analyze the document.
    #   @return [String]
    #
    # @!attribute [rw] blueprints
    #   The blueprints used to extract custom structured output from the
    #   document.
    #   @return [Array<Types::BlueprintItem>]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS encryption configuration used to encrypt the analysis
    #   output. If you don't specify a value, Amazon Textract encrypts the
    #   output using an AWS owned key.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] notification_configuration
    #   Notification settings for the job.
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) to assign to the document insights
    #   job.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentInsightsRequest AWS API Documentation
    #
    class StartDocumentInsightsRequest < Struct.new(
      :input_configuration,
      :output_configuration,
      :project_arn,
      :blueprints,
      :encryption_configuration,
      :notification_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_arn
    #   The Amazon Resource Name (ARN) of the document insights job that was
    #   started. Use it with GetDocumentInsights to retrieve the results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartDocumentInsightsResponse AWS API Documentation
    #
    class StartDocumentInsightsResponse < Struct.new(
      :job_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # @!attribute [rw] document_location
    #   The Amazon S3 bucket that contains the document to be processed.
    #   It's used by asynchronous operations.
    #
    #   The input document can be an image file in JPEG or PNG format. It
    #   can also be a file in PDF format.
    #   @return [Types::DocumentLocation]
    #
    # @!attribute [rw] client_request_token
    #   The idempotent token that you use to identify the start request. If
    #   you use the same token with multiple `StartLendingAnalysis`
    #   requests, the same `JobId` is returned. Use `ClientRequestToken` to
    #   prevent the same job from being accidentally started more than once.
    #   For more information, see [Calling Amazon Textract Asynchronous
    #   Operations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/textract/latest/dg/api-sync.html
    #   @return [String]
    #
    # @!attribute [rw] job_tag
    #   An identifier that you specify to be included in the completion
    #   notification published to the Amazon SNS topic. For example, you can
    #   use `JobTag` to identify the type of document that the completion
    #   notification corresponds to (such as a tax form or a receipt).
    #   @return [String]
    #
    # @!attribute [rw] notification_channel
    #   The Amazon Simple Notification Service (Amazon SNS) topic to which
    #   Amazon Textract publishes the completion status of an asynchronous
    #   document operation.
    #   @return [Types::NotificationChannel]
    #
    # @!attribute [rw] output_config
    #   Sets whether or not your output will go to a user created bucket.
    #   Used to set the name of the bucket, and the prefix on the output
    #   file.
    #
    #   `OutputConfig` is an optional parameter which lets you adjust where
    #   your output will be placed. By default, Amazon Textract will store
    #   the results internally and can only be accessed by the Get API
    #   operations. With `OutputConfig` enabled, you can set the name of the
    #   bucket the output will be sent to the file prefix of the results
    #   where you can download your results. Additionally, you can set the
    #   `KMSKeyID` parameter to a customer master key (CMK) to encrypt your
    #   output. Without this parameter set Amazon Textract will encrypt
    #   server-side using the AWS managed CMK for Amazon S3.
    #
    #   Decryption of Customer Content is necessary for processing of the
    #   documents by Amazon Textract. If your account is opted out under an
    #   AI services opt out policy then all unencrypted Customer Content is
    #   immediately and permanently deleted after the Customer Content has
    #   been processed by the service. No copy of of the output is retained
    #   by Amazon Textract. For information about how to opt out, see [
    #   Managing AI services opt-out policy. ][1]
    #
    #   For more information on data privacy, see the [Data Privacy FAQ][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html
    #   [2]: https://aws.amazon.com/compliance/data-privacy-faq/
    #   @return [Types::OutputConfig]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key used to encrypt the inference results. This can be in
    #   either Key ID or Key Alias format. When a KMS key is provided, the
    #   KMS key will be used for server-side encryption of the objects in
    #   the customer bucket. When this parameter is not enabled, the result
    #   will be encrypted server side, using SSE-S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartLendingAnalysisRequest AWS API Documentation
    #
    class StartLendingAnalysisRequest < Struct.new(
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
    #   A unique identifier for the lending or text-detection job. The
    #   `JobId` is returned from `StartLendingAnalysis`. A `JobId` value is
    #   only valid for 7 days.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/StartLendingAnalysisResponse AWS API Documentation
    #
    class StartLendingAnalysisResponse < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Controls whether a generative summary of the document is produced.
    #
    # @!attribute [rw] state
    #   Set to `ENABLED` to produce a summary, or `DISABLED` to omit it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/SummarizationConfiguration AWS API Documentation
    #
    class SummarizationConfiguration < Struct.new(
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that specifies the resource to be
    #   tagged.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A set of tags (key-value pairs) that you want to assign to the
    #   resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Amazon Textract is temporarily unable to process the request. Try your
    # call again.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Aws::EmptyStructure; end

    # A structure containing information about an undetected signature on a
    # page where it was expected but not found.
    #
    # @!attribute [rw] page
    #   The page where a signature was expected but not found.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UndetectedSignature AWS API Documentation
    #
    class UndetectedSignature < Struct.new(
      :page)
      SENSITIVE = []
      include Aws::Structure
    end

    # The format of the input document isn't supported. Documents for
    # operations can be in PNG, JPEG, PDF, or TIFF format.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UnsupportedDocumentException AWS API Documentation
    #
    class UnsupportedDocumentException < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) that specifies the resource to be
    #   untagged.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Specifies the tags to be removed from the resource specified by the
    #   ResourceARN.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter that will be
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description to be applied to the adapter.
    #   @return [String]
    #
    # @!attribute [rw] adapter_name
    #   The new name to be applied to the adapter.
    #   @return [String]
    #
    # @!attribute [rw] auto_update
    #   The new auto-update status to be applied to the adapter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UpdateAdapterRequest AWS API Documentation
    #
    class UpdateAdapterRequest < Struct.new(
      :adapter_id,
      :description,
      :adapter_name,
      :auto_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] adapter_id
    #   A string containing a unique ID for the adapter that has been
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] adapter_name
    #   A string containing the name of the adapter that has been updated.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   An object specifying the creation time of the the adapter that has
    #   been updated.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A string containing the description of the adapter that has been
    #   updated.
    #   @return [String]
    #
    # @!attribute [rw] feature_types
    #   List of the targeted feature types for the updated adapter.
    #   @return [Array<String>]
    #
    # @!attribute [rw] auto_update
    #   The auto-update status of the adapter that has been updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UpdateAdapterResponse AWS API Documentation
    #
    class UpdateAdapterResponse < Struct.new(
      :adapter_id,
      :adapter_name,
      :creation_time,
      :description,
      :feature_types,
      :auto_update)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint to update.
    #   @return [String]
    #
    # @!attribute [rw] schema
    #   The updated schema of the blueprint, which defines the fields to
    #   extract and their expected structure.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS encryption configuration used to encrypt the blueprint
    #   at rest.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UpdateBlueprintRequest AWS API Documentation
    #
    class UpdateBlueprintRequest < Struct.new(
      :blueprint_arn,
      :schema,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] blueprint_arn
    #   The Amazon Resource Name (ARN) of the blueprint that was updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UpdateBlueprintResponse AWS API Documentation
    #
    class UpdateBlueprintResponse < Struct.new(
      :blueprint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project to update.
    #   @return [String]
    #
    # @!attribute [rw] project_description
    #   The updated description of the project.
    #   @return [String]
    #
    # @!attribute [rw] extraction_configuration
    #   The configuration that controls how Amazon Textract extracts content
    #   from the document, including bounding boxes, granularity, and output
    #   format. Replaces the stored extraction configuration.
    #   @return [Types::ExtractionConfiguration]
    #
    # @!attribute [rw] generative_configuration
    #   The configuration that controls generative capabilities such as
    #   summarization and figure captioning. Replaces the stored generative
    #   configuration, so a capability that you omit is turned off.
    #   @return [Types::GenerativeConfiguration]
    #
    # @!attribute [rw] custom_configuration
    #   The configuration that associates blueprints with the project for
    #   custom output extraction. Replaces the stored custom configuration.
    #   To disable custom configuration, specify an empty `Blueprints` list.
    #   @return [Types::CustomConfiguration]
    #
    # @!attribute [rw] splitter_configuration
    #   The configuration that controls whether multi-document packets are
    #   split into individual documents. Replaces the stored splitter
    #   configuration.
    #   @return [Types::SplitterConfiguration]
    #
    # @!attribute [rw] sensitive_data_configuration
    #   The configuration that controls detection and redaction of sensitive
    #   data, such as personally identifiable information (PII). Replaces
    #   the stored sensitive data configuration. To turn off detection, set
    #   `DetectionMode` to `DISABLED`.
    #   @return [Types::SensitiveDataConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   The AWS KMS encryption configuration used to encrypt the project at
    #   rest.
    #   @return [Types::EncryptionConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UpdateProjectRequest AWS API Documentation
    #
    class UpdateProjectRequest < Struct.new(
      :project_arn,
      :project_description,
      :extraction_configuration,
      :generative_configuration,
      :custom_configuration,
      :splitter_configuration,
      :sensitive_data_configuration,
      :encryption_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] project_arn
    #   The Amazon Resource Name (ARN) of the project that was updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the project after the update.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/UpdateProjectResponse AWS API Documentation
    #
    class UpdateProjectResponse < Struct.new(
      :project_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that a request was not valid. Check request for proper
    # formatting.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/textract-2018-06-27/ValidationException AWS API Documentation
    #
    class ValidationException < Aws::EmptyStructure; end

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

